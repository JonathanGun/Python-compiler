if_only -->
	"if", !, {write("if block - ")}, any_blanks, expr, block.

elif_only -->
	"el", !, {write("el")}, if_only.

else -->
	"else", !, {write("else block -")}, block.

maybe_else -->
	(eps; else).

pass -->
	"pass", !, {write("pass_stmt ")}.

elif -->
	elif_only,(eps;elif).

if -->
	if_only,(elif;eps),(else;eps).
