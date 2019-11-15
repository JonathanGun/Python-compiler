block -->
	(statement_single, newline);
	(newline,indent,statement,unindent).

statement -->
	statement_single;(statement_single,statement).

statement_single -->
	(simple_stmt;compound_stmt), newline.

compound_stmt -->
	if;while;for;with;funcdef;classdef.

simple_stmt -->
	expr;pass;return;break;continue;import.

indent_n(0) --> [].
indent_n(N) -->
	"\t", {NPrev is N-1}, indent_n(NPrev).

indent -->
	{
		retract(current_indent(N)),
		NNext is N+1,
		asserta(current_indent(NNext))
	}, !,
	indent_n(NNext).

unindent -->
	{
		retract(current_indent(N)),
		NPrev is N-1,
		asserta(current_indent(NPrev))
	}, !,
	indent_n(NPrev).
