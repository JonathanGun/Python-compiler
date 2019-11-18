eps --> [].

eof -->
	\+[_], {write("end-of-file"),nl, accepted}.

blank -->
	" ".
tab -->
	"\t".
blanks -->
	tab;(tab, blanks);
	blank;(blank, blanks).
any_blanks -->
	eps;blanks.
tabs -->
	tab; (tab,tabs).
any_tabs -->
	eps; tabs.

underscore -->
	"_".
underscores -->
	underscore;(underscore, underscores).
any_underscore -->
	eps; underscores.

newline_only -->
	any_comment, "\n".
newline -->
	eof;(any_blanks,newline_only,(any_tabs;newline)).

colon -->
	any_blanks, ":", any_blanks.

open_bracket -->
	"(", any_blanks.
close_bracket -->
	any_blanks, ")".

open_square_bracket -->
	"[", any_blanks.
close_square_bracket -->
	any_blanks, "]".

separator -->
	any_blanks, ",", any_blanks.

keywords -->
	"False"; "class"; "finally"; "is"; "return"; "None"; "continue"; "for";
	"lambda"; "try"; "True"; "def"; "from"; "nonlocal"; "while"; "and"; "del";
	"global"; "not"; "with"; "as"; "elif"; "if"; "or"; "yield"; "assert"; "else";
	"import"; "pass"; "break"; "except"; "in"; "raise".
