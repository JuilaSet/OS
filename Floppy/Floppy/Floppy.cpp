#include "pch.h"
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <map>
#include <cassert>

using namespace std;

class FileWriteError {
	string error;
public:
	explicit FileWriteError(string msg) : error(msg) {}
	const string& what() {
		return error;
	}
};


// Floppy
class Floppy {
public:
	// 针头
	enum class MAGNETIC {
		HEAD_1 = 0,
		HEAD_0
	};

	// 磁盘柱面
	struct CYLINDER {
		enum {
			COUNT = 80	// 80个柱面
		};
	};

	// 磁盘扇区
	struct SECTOR {
		enum {
			SIZE = 512, // 大小为512字节
			COUNT = 18	// 18个扇区
		};
	};

	// 磁盘大小
	size_t SIZE = 2 * CYLINDER::COUNT * SECTOR::COUNT * SECTOR::SIZE;

	// 类型
	using sector_t = vector<char>;			// 一块扇区为512字节
	using cylinder_t = vector<sector_t>;	// 一个磁道有18个扇区
	using magnetic_t = vector<cylinder_t>;	// 一个盘面有80个磁道

public:
	Floppy() {
		floppyData.insert_or_assign(MAGNETIC::HEAD_0, initMagnetic());
		floppyData.insert_or_assign(MAGNETIC::HEAD_1, initMagnetic());
	}

	// 写入磁盘(盘面, 柱面, 扇区(汇编从1开始计算, 这里1从0开始计算))
	void write(MAGNETIC magneticID, int cylinderID, int sectorID, sector_t buf) {
		assert(cylinderID >= 0 && cylinderID < CYLINDER::COUNT);
		assert(sectorID >= 0 && sectorID < SECTOR::COUNT);
		// 写入对应扇区(512字节)
		auto& sector = floppyData.find(magneticID)->second[cylinderID][sectorID];
		auto bufSize = buf.size();
		memcpy(sector.data(), buf.data(), bufSize > SECTOR::SIZE ? SECTOR::SIZE : bufSize);
	}

	// 使用数组写入磁盘
	template<size_t N>
	void write(MAGNETIC magneticID, int cylinderID, int sectorID, char (&buf)[N]) {
		assert(cylinderID >= 0 && cylinderID < CYLINDER::COUNT);
		assert(sectorID >= 0 && sectorID < SECTOR::COUNT);
		// 写入对应扇区(512字节)
		auto& sector = floppyData.find(magneticID)->second[cylinderID][sectorID];
		memcpy(sector.data(), buf, N > SECTOR::SIZE ? SECTOR::SIZE: N);
	}

	// 读取磁盘(盘面, 柱面, 扇区(汇编从1开始计算, 这里1从0开始计算))
	const sector_t& read(MAGNETIC magneticID, int cylinderID, int sectorID) {
		assert(cylinderID >= 0 && cylinderID < CYLINDER::COUNT);
		assert(sectorID >= 0 && sectorID < SECTOR::COUNT);
		auto& sector = floppyData.find(magneticID)->second[cylinderID][sectorID];
		return sector;
	}

	// 生成二进制文件
	void writeIntoFile(string filename, bool flag = false) throw(FileWriteError) {
		ofstream of(filename, ios::binary);
		// 只写一次 55aa
		bool icon = true;
		// 读取柱面
		for (int cylinder = 0; cylinder < CYLINDER::COUNT; ++cylinder) {
			// 翻面
			for (int magnetic = 0; magnetic < 2; ++magnetic) {
				MAGNETIC head = _getMagnetic(magnetic);
				// MAGNETIC head = (magnetic == 0 ? MAGNETIC::HEAD_0 : MAGNETIC::HEAD_1);
				// 读取18个扇区
				for (int sector = 0; sector < SECTOR::COUNT; ++sector) {
					auto buf = read(head, cylinder, sector);
					if (!flag) {
						if (icon) {
							of.write(buf.data(), SECTOR::SIZE - 2);
							char endcode[2]{ 0x55, 0xAA };
							of.write(endcode, 2);
							icon = false;
						}
						else {
							of.write(buf.data(), SECTOR::SIZE);
						}
					}
					else {
						of.write(buf.data(), SECTOR::SIZE - 4);
						char endcode[4];
						endcode[0] = 0xFF;
						endcode[1] = magnetic;
						endcode[2] = cylinder;
						endcode[3] = sector;
						of.write(endcode, 4);
					}
				}
			}

		}
		of.close();
	}

	// 从文件写入磁盘一个扇区
	void readFile(string filename, MAGNETIC magneticID, int cylinderID, int sectorID) {
		assert(cylinderID >= 0 && cylinderID < CYLINDER::COUNT);
		assert(sectorID >= 0 && sectorID < SECTOR::COUNT);

		// 从文件中读取头部
		char buf[Floppy::SECTOR::SIZE]{};

		ifstream ifo(filename, ios::binary);

		if (!ifo.is_open()) {
			std::cerr << "file failed open" << std::endl;
			exit(1);
		}

		auto mag = _getInt(magneticID);

		while (1) {
			ifo.read(buf, Floppy::SECTOR::SIZE);
			write(_getMagnetic(mag), cylinderID, sectorID, buf);

			if (ifo.eof())break;
			// 如果没有读取完毕, 就读取到下一个扇区
			++sectorID;
			if (sectorID >= SECTOR::COUNT) {
				sectorID = 0;
				++mag;
				if (mag >= 2) {
					mag = 0;
					++cylinderID;
					if (cylinderID >= CYLINDER::COUNT) {
						std::cerr << "Floppy full" << std::endl;
						exit(2);
					}
				}
			}
		}
		ifo.close();
	}

private:

	// 返回值
	int _getInt(Floppy::MAGNETIC mag) {
		return (mag == Floppy::MAGNETIC::HEAD_0 ? 0 : 1);
	}

	MAGNETIC _getMagnetic(int mag) {
		return (mag == 0 ? Floppy::MAGNETIC::HEAD_0 : Floppy::MAGNETIC::HEAD_1);
	}

	// 磁盘数据
	map<MAGNETIC, magnetic_t> floppyData;

	// 初始化扇区
	sector_t initSector() {
		return sector_t(SECTOR::SIZE, 0);
	}

	// 初始化磁道
	cylinder_t initCylinder() {
		cylinder_t cylinder;
		for (int i = 0; i < SECTOR::COUNT; ++i) {
			cylinder.push_back(initSector());
		}
		return cylinder;
	}

	// 初始化盘面
	magnetic_t initMagnetic() {
		vector<cylinder_t> magnetic;
		for (int i = 0; i < CYLINDER::COUNT; ++i) {
			magnetic.push_back(initCylinder());
		}
		return magnetic;
	}

};

void func() {}

int main(int argv, char* args[]) {
	func();
	Floppy flp;

	std::string path(args[argv - 1]);

	// 从文件中读取头部
	flp.readFile(path + "boot.img", Floppy::MAGNETIC::HEAD_0, 0, 0);

	// 加载kernel
	flp.readFile(path + "kernel.img", Floppy::MAGNETIC::HEAD_0, 1, 1);

	// 写入文件
	flp.writeIntoFile(path + "system.img", false);
	return 0;
}
