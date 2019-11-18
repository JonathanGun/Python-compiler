block -->
	colon,block_statement.

statement_rec -->
	statement_single,statement.
statement -->
	statement_single;statement_rec.

indented_statement -->
	newline, statement.
inline_statement -->
	any_blanks, statement_elmt.
block_statement -->
	inline_statement;indented_statement.

compound_stmt -->
	if;while;for;with;funcdef;classdef.
simple_stmt -->
	return;assign;pass;break;continue;import;expr.
statement_elmt -->
	compound_stmt;simple_stmt.
statement_single -->
	empty_line;(any_tabs, statement_elmt, newline).
