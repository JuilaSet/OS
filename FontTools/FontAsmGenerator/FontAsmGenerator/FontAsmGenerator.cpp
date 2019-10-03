#include "pch.h"
#include <iostream>
#include <string>
#include <iomanip>
#include <vector>
#include <fstream>
#include <cassert>
using namespace std;

using front_vec = vector<unsigned int>;
using batch_vec = vector<string>;

class FontAsmGenerator {
public:
	enum {
		STR_LENGTH = 8,
		STR_HEIGHT = 16,
		PTR_OFFSET = 16,
	};
	const char onChar = '*';

private:
	batch_vec _lines;
	front_vec fvec;

private:
	int parser(string line) {
		int res = 0;
		for (int i = 0; i < STR_LENGTH; ++i) {
			char c = line[i];
			if (c == onChar) {
				res += 1 << (STR_LENGTH - i - 1);
			}
		}
		return res;
	}

	void initLines() {
		_lines.resize(STR_HEIGHT, string('.', STR_LENGTH));
	}

public:
	// 从字符串数组中读取
	FontAsmGenerator(batch_vec lines) {
		initLines();
		size_t N = lines.size();
		for (int i = 0; i < STR_HEIGHT && i < N; ++i) {
			_lines[i] = lines[i];
		}
	}

	// 生成描述数组
	void generateFrontPatternVector() {
		fvec.clear();
		for (int i = 0; i < STR_HEIGHT; ++i) {
			assert(_lines[i].size() == STR_LENGTH);	// 输入的字符串长度错误
			fvec.push_back(parser(_lines[i]));
		}
	}

	// 写入文件
	void writeIntoFile(string fontName, ofstream &ofile) {
		ofile << "vsFont_" << fontName << ":" << endl;

		int i = 0;
		for (auto pattern : fvec) {
			if (i % 8 == 0) {
				ofile << "db ";
			}
			ofile << dec << pattern;
			if (i % 8 == 7) {
				ofile << endl;
			}
			else {
				ofile << "," << ends;
			}
			i++;
		}
	}

	void show() {
		int i = 0;
		for (auto pattern : fvec) {
			if (i % 8 == 0) {
				cout << "db ";
			}
			cout << hex << pattern << ends;
			if (i % 8 == 7) {
				cout << endl;
			}
			i++;
		}
	}
};

int main(int argv, char* args[]) {

	if (argv < 3) {
		cerr << "Usage: FontAsmGenerator <path> <inputfile> <outputfile>" << endl;
		exit(-1);
	}

	string path(args[argv - 3]);
	string inputfile(args[argv - 2]);
	string outputfile(args[argv - 1]);

	ifstream ifile(path + inputfile); // "front.txt"
	ofstream ofile(path + outputfile, ios::ate); // "front.asm"

	if (!ifile) {
		cerr << "input file open failed !" << endl;
		exit(-1);
	}

	if (!ofile) {
		cerr << "out file open failed !" << endl;
		exit(-1);
	}
	
	// 写入偏移量 PTR_OFFSET: 偏移量
	ofile << "PTR_OFFSET: " 
		<< "dd" << ends 
		<< hex << setiosflags(ios::uppercase) << FontAsmGenerator::PTR_OFFSET << "H" << endl;

	// font个数
	int batchCount = 0;

	// 写入字体列表
	ofile << "FONT_LIST: " << endl;
	while(!ifile.eof()){
		batch_vec bat;

		// 读取对应字符的名称, 如果是"eof"则结束
		char patternName[64];
		ifile.getline(patternName, 64);

		// 读取 FontAsmGenerator::STR_HEIGHT 行
		for (int i = 0; i < FontAsmGenerator::STR_HEIGHT; ++i) {
			char buffer[FontAsmGenerator::STR_LENGTH + 1];
			ifile.getline(buffer, FontAsmGenerator::STR_LENGTH + 1);
			bat.push_back(string(buffer));
		}

		// 生成
		FontAsmGenerator gener(bat);
		gener.generateFrontPatternVector();

		// 写入文件
		gener.writeIntoFile(patternName, ofile);
		
		batchCount++;
	}

	// 字体个数
	ofile << "FONT_SIZE: dd " << batchCount << endl;

	ofile.close();
	ifile.close();
	return 0;
}
