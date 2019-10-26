// 
// string.h 文件
// 
int strlen(char* sptr){
	int len = 0;
	while(sptr[len++]);
	return len - 1;
}
