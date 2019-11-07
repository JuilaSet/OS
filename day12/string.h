// 
// string.h 文件
// 

int strlen(char* sptr){
	int len = 0;
	while(sptr[len++]);
	return len - 1;
}

char* intToHexStr(unsigned int d) {
	static char str[11] = {'0', 'X'};
	for(int i = 2; i < 10; i++)
		str[i] = '0';

	for (int p = 9; p > 1 && d > 0; --p) {
		int e = d % 16;
		d /= 16;
		if (e >= 10)
			str[p] = 'A' + e - 10;
		else 
			str[p] = '0' + e;
	}
	return str;
}