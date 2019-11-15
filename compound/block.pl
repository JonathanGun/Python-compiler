block -->
	colon,
	(
		statement_single;
		(newline,indent,statement_single,any_statement,unindent)
	).

colon -->
	any_blanks, ":", any_blanks.

statement -->
	statement_single;(statement_single,statement).
any_statement -->
	empty_statement;statement.

empty_statement -->
	{valid_indent(no), current_indent(X)},
	indent_n(X),
	{
		retract(valid_indent(no)),
		asserta(valid_indent(yes))
	},
	eps, newline.
empty_statement -->
	{valid_indent(yes)},
	eps, newline.

statement_single -->
	{valid_indent(no), current_indent(X)},
	indent_n(X),
	{
		retract(valid_indent(no)),
		asserta(valid_indent(yes))
	},
	(simple_stmt;compound_stmt), newline.
statement_single -->
	{valid_indent(yes)},
	(simple_stmt;compound_stmt), newline.

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
		asserta(current_indent(NNext)),
		write("indent jadi"), write(NNext), nl
	}.

unindent -->
	{
		retract(current_indent(N)),
		NPrev is N-1,
		asserta(current_indent(NPrev)),
		write("unindent jadi "), write(NPrev), nl
	}.
