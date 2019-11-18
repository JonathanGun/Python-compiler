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
	any_blanks, statement_single, {write("in-line block ")}.

statement_single -->
	eof;(any_tabs, (compound_stmt;simple_stmt), newline).

compound_stmt -->
	(if;while;for;with;funcdef;classdef).

simple_stmt -->
	(assign;pass;return;break;continue;import;expr).
