/* message.c */
int msg __ARGS((char_u *s));
int msg_attr __ARGS((char_u *s, int attr));
int emsg __ARGS((char_u *s));
int emsg2 __ARGS((char_u *s, char_u *a1));
int emsgn __ARGS((char_u *s, long n));
char_u *msg_trunc __ARGS((char_u *s));
void wait_return __ARGS((int redraw));
void msg_start __ARGS((void));
void msg_putchar __ARGS((int c));
void msg_outnum __ARGS((long n));
void msg_home_replace __ARGS((char_u *fname));
void msg_home_replace_hl __ARGS((char_u *fname));
int msg_outtrans __ARGS((char_u *str));
int msg_outtrans_attr __ARGS((char_u *str, int attr));
int msg_outtrans_len __ARGS((char_u *str, int len));
int msg_outtrans_len_attr __ARGS((char_u *str, int len, int attr));
void msg_make __ARGS((char_u *arg));
int msg_outtrans_special __ARGS((char_u *str, int all));
void msg_prt_line __ARGS((char_u *s));
void msg_puts __ARGS((char_u *s));
void msg_puts_title __ARGS((char_u *s));
void msg_puts_attr __ARGS((char_u *s, int attr));
void msg_moremsg __ARGS((int full));
void msg_clr_eos __ARGS((void));
int msg_end __ARGS((void));
int msg_check __ARGS((void));
void give_warning __ARGS((char_u *message, int hl));
void msg_advance __ARGS((int col));