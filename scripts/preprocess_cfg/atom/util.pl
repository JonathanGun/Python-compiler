eps --> [].
eof -->
	is_eof, {accepted}.
is_eof -->
	\+[_].

blank -->
	char_32.
tab -->
	char_tab.
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
	char_95.
underscores_rec -->
	underscore,underscores.
underscores -->
	underscore;underscores_rec.
any_underscore -->
	eps; underscores.

newline_only -->
	eof;(any_comment, enter).
newline -->
	eof;(any_blanks,newline_only,maybe_empty_line).
empty_line -->
	eof;(any_blanks,any_comment,newline).
maybe_empty_line -->
	any_tabs;empty_line.

colon -->
	any_blanks, char_58, any_blanks.

open_bracket -->
	char_40, any_blanks.
close_bracket -->
	any_blanks, char_41.

open_square_bracket -->
	char_91, any_blanks.
close_square_bracket -->
	any_blanks, char_93.

open_curly_bracket -->
	char_123, any_blanks.
close_curly_bracket -->
	any_blanks, char_125.

comma -->
	char_44.
dot -->
	char_46.
separator -->
	any_blanks, comma, any_blanks.

keywords -->
	char_False; char_class; char_finally; char_is; char_return; char_None; char_continue; char_for;
	char_lambda; char_try; char_True; char_def; char_from; char_nonlocal; char_while; char_and; char_del;
	char_global; char_not; char_with; char_as; char_elif; char_if; char_or; char_yield; char_assert;
	char_else; char_import; char_pass; char_break; char_except; char_in; char_raise.
