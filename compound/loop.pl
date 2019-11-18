while -->
	"while", !, blanks, expr, block, maybe_else.

for -->
    "for", !, blanks, variable, blanks, in.

in -->
	"in", !, blanks, expr, block, maybe_else.

break -->
	"break", !.

continue -->
	"continue", !.
