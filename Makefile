analyzer:lex.yy.c
	gcc -oanalyzer lex.yy.c -lfl `pkg-config --cflags --libs glib-2.0`
compile:parser.l
	flex analyzer.l
clear:
	rm -rf lex.yy.c analyzer
