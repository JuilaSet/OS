// vsosstd
void io_cli(void);
void io_out8(int, int);
char io_in8(char);

int io_load_eflags(void);
void io_store_eflags(int);

void io_hlt(void);
void io_sti(void);
void io_stihlt(void);