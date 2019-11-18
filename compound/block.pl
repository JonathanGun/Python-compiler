block -->
	colon,
	(
		(newline,statement);
		inline_statement
	).

colon -->
	any_blanks, ":", any_blanks.

statement -->
	statement_single;(statement_single,statement).

inline_statement -->
	{write("in-line block ")}, any_blanks, (simple_stmt;compound_stmt), newline.

statement_single -->
	any_tabs, (simple_stmt;compound_stmt), newline.

compound_stmt -->
	(if;while;for;with;funcdef;classdef),{write("compound_stmt ")}.

simple_stmt -->
	(expr;assign;pass;return;break;continue;import),{write("simple_stmt ")}.
