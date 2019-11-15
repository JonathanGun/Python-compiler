blank -->
	" ".

blanks -->
	blank;(blank,blanks).

any_blanks -->
	eps;blanks.

eps --> [].

underscore -->
	"_".

underscores -->
	underscore;(underscore, underscores).

any_underscore -->
	eps; underscores.

newline -->
	"\n".

keywords -->
	"False"; "class"; "finally"; "is"; "return"; "None"; "continue"; "for";
	"lambda"; "try"; "True"; "def"; "from"; "nonlocal"; "while"; "and"; "del";
	"global"; "not"; "with"; "as"; "elif"; "if"; "or"; "yield"; "assert"; "else";
	"import"; "pass"; "break"; "except"; "in"; "raise".
