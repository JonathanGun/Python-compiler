eps --> [].

blank -->
	" ".
tab -->
	"\t".
blanks -->
	tab;(tab, blanks);
	blank;(blank, blanks).
any_blanks -->
	eps;blanks.

underscore -->
	"_".
underscores -->
	underscore;(underscore, underscores).
any_underscore -->
	eps; underscores.

newline -->
	any_blanks, "\n",
	{
		retract(valid_indent(yes)),
		asserta(valid_indent(no)),
		write("enter!"), nl
	}, !.

open_bracket -->
	"(", any_blanks.
close_bracket -->
	any_blanks, ")".

separator -->
	any_blanks, ",", any_blanks.

keywords -->
	"False"; "class"; "finally"; "is"; "return"; "None"; "continue"; "for";
	"lambda"; "try"; "True"; "def"; "from"; "nonlocal"; "while"; "and"; "del";
	"global"; "not"; "with"; "as"; "elif"; "if"; "or"; "yield"; "assert"; "else";
	"import"; "pass"; "break"; "except"; "in"; "raise".
