block -->
	colon,
	(
		inline_statement;
		(newline,statement)
	).

statement -->
	statement_single;(statement_single,statement).

inline_statement -->
	any_blanks, statement_elmt.

compound_stmt -->
	if;while;for;with;funcdef;classdef.
simple_stmt -->
	assign;pass;return;break;continue;import;expr.
statement_elmt -->
	compound_stmt;simple_stmt.
statement_single -->
	eof;(any_tabs, statement_elmt, newline).
