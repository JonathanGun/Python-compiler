if_only -->
	char_if, blanks, expr, block.
elif_only -->
	char_el, if_only.
else -->
	char_else, block.
maybe_else -->
	eps; else.
elif -->
	elif_only,any_elif.
any_elif -->
	eps; elif.

if -->
	if_only,any_elif,maybe_else.
pass -->
	char_pass, !.