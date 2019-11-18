if_only -->
	"if", !,  any_blanks, expr, block.

elif_only -->
	"el", !, if_only.

else -->
	"else", !, block.

maybe_else -->
	(eps; else).

pass -->
	"pass", !.

elif -->
	elif_only,(eps;elif).

if -->
	if_only,(elif;eps),(else;eps).
