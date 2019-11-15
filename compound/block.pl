block -->
	colon,
	(
		statement_single;
		(newline,indent,statement,unindent)
	).

colon -->
	any_blanks, ":", any_blanks.

statement -->
	statement_single;(statement_single,statement).

statement_single -->
	{current_indent(X)},
	indent_n(X),
	(simple_stmt;compound_stmt), any_blanks, newline.

compound_stmt -->
	if;while;for;with;funcdef;classdef.

simple_stmt -->
	expr;assign;pass;return;break;continue;import.

indent_n(0) --> [].
indent_n(N) -->
	"\t", {NPrev is N-1}, indent_n(NPrev).

indent -->
	{
		retract(current_indent(N)),
		NNext is N+1,
		asserta(current_indent(NNext))
	}.

unindent -->
	{
		retract(current_indent(N)),
		NPrev is N-1,
		asserta(current_indent(NPrev))
	}.
