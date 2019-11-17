; Func: 
; int GET_MEMOTY_BLOCK_COUNT();
GET_MEMOTY_BLOCK_COUNT:
	mov	eax, [dwMCRNumber]
	ret

; 获取数据缓冲区地址: char* GET_DESC_ADDR()
GET_MEMDESC_ADDR:
	lea	eax, [MemChkBuf]
	ret

