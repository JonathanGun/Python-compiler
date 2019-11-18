while -->
	"while", !, blanks, expr, {write("while_loop ")}, block, maybe_else.

for -->
    "for", !, blanks, variable, blanks, in.

in -->
	"in", !, blanks, expr, {write("for_loop ")}, block, maybe_else.

break -->
	"break", !, {write("break_stmt ")}.

continue -->
	"continue", !, {write("continue_stmt ")}.
