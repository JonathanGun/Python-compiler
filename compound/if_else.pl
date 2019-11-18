if_only -->
	"if", any_blanks, expr, block.
elif_only -->
	"el", if_only.
else -->
	"else", block.
maybe_else -->
	(eps; else).
elif -->
	elif_only,any_elif.
any_elif -->
	eps;elif.

if -->
	if_only,any_elif,maybe_else.
pass -->
	"pass", !.