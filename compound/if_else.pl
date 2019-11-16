if_only -->
	"if", {write("if block - ")}, any_blanks, expr, block.

elif_only -->
	"el", {write("el")}, if_only.

else -->
	"else", {write("else block -")}, block.

maybe_else -->
	(eps; else).

pass -->
	{
		current_indent(X),
		X > 0
	},
	"pass".

elif -->
	elif_only,(eps;elif).

if -->
	if_only,(eps;elif),(eps;else).
