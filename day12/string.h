// 
// string.h 文件
// 
int strlen(char* sptr){
	int len = 0;
	while(sptr[len++]);
	return len - 1;
}

char charToHex(char c){
	if(c >= 10){
		return 'a' + (c - 10);
	}
	return '0' + c;
}

char *charToHexStr(unsigned char c){
	static char str[3] = {};
	str[1] = charToHex(c % 16);	// 1E -> E, [00E]
	c >>= 4;						// 1
	str[0] = charToHex(c % 16);	// 1, [01E]
	return str;
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
