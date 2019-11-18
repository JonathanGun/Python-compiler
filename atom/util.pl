eps --> [].
eof -->
	\+[_], {accepted}.

blank -->
	" ".
tab -->
	"\t".
tab_rec -->
	tab,blanks.
blank_rec -->
	blank,blanks.
blanks_tab -->
	tab;tab_rec.
blanks_blank -->
	blank;blank_rec.
blanks -->
	blanks_tab;blanks_blank.
any_blanks -->
	eps;blanks.
tab_only_rec -->
	tab,tabs.
tabs -->
	tab;tab_only_rec.
any_tabs -->
	eps;tabs.

underscore -->
	"_".
underscores_rec -->
	underscore,underscores.
underscores -->
	underscore;underscores_rec.
any_underscore -->
	eps; underscores.

newline_only -->
	eof;(any_comment, "\n").
newline -->
	eof;(any_blanks,newline_only,maybe_empty_line).
empty_line -->
	eof;(any_blanks,any_comment,newline).
maybe_empty_line -->
	any_tabs;empty_line.

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
