if_only -->


elif_only -->
	"el", if_only.

else -->
	"else", block.

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
