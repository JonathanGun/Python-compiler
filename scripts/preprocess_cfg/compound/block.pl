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
	(is_eof;newline), is_eof, {write("a block must contain something"), error}.
block_statement -->
	inline_statement;indented_statement.

compound_stmt -->
	if;while;for;with;funcdef;classdef.
simple_stmt -->
	import;return;pass;break;continue;assign;expr.
statement_elmt -->
	compound_stmt;simple_stmt.
statement_single -->
	empty_line;(any_tabs, statement_elmt, newline).
