# YACCFLAGS=-Wall
DEBUG=--debug --verbose
trans: lex.yy.c y.tab.c y.tab.h
	gcc lex.yy.c y.tab.c -o trans -g -w

lex.yy.c: l.l y.tab.h
	win_flex l.l

y.tab.c: y.y
	win_bison y.y -d ${YACCFLAGS} ${DEBUG}

y.tab.h: y.y
	win_bison y.y -d ${YACCFLAGS} ${DEBUG}
