while -->
	char_while, !, blanks, expr, block, maybe_else.

for -->
    char_for, !, blanks, variable, blanks, in.

in -->
	char_in, !, blanks, expr, block, maybe_else.

break -->
	char_break, !.

continue -->
	char_continue, !.
