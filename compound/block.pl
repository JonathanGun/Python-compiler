block -->
	colon,
	(
		inline_statement;
		(newline,indent,statement_single,any_statement)
	).

colon -->
	any_blanks, ":", any_blanks.

statement -->
	statement_single;(statement_single,statement).
any_statement -->
	statement.

inline_statement -->
	{write("in-line block ")}, any_blanks, (simple_stmt;compound_stmt), newline.

statement_single -->
	{valid_indent(no), current_indent(X), write("(cur-indent: "), write(X), write(") ")},
	((indent_n(X), !) ; (!, unindent)),
	{
		retract(valid_indent(_)),
		asserta(valid_indent(yes))
	},
	(((simple_stmt;compound_stmt), !);eps), newline, !.

compound_stmt -->
	(if;while;for;with;funcdef;classdef),{write("compound_stmt ")}.

simple_stmt -->
	(expr;assign;pass;return;break;continue;import),{write("simple_stmt ")}.

indent_n(0) --> [].
indent_n(N) -->
	"\t", {NPrev is N-1}, indent_n(NPrev).

indent -->
	{
		retract(current_indent(N)),
		NNext is N+1,
		asserta(current_indent(NNext)),
		write("indent jadi "), write(NNext), nl
	}.

unindent -->
	{
		retract(current_indent(N)),
		NPrev is N-1,
		asserta(current_indent(NPrev)),
		write("unindent jadi "), write(NPrev), nl
	}.
