if_only -->
	"if", any_blanks,expr ,any_blanks,":", any_blanks, block.

elif_only -->
	"el", if_only.

else -->
	"else", any_blanks, ":", any_blanks, block.

pass -->
	{
		current_indent(X),
		X > 0
	},
		"pass", any_blanks.

elif -->
	elif_only,(eps;elif).

if -->
	if_only,(eps;elif),(eps;else).
