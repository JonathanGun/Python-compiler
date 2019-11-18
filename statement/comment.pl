comment_elmt -->
	alphanumeric;symbol;tab.
comment_body -->
	comment_elmt;(comment_elmt,comment_body).
any_comment_body -->
	eps;comment_body.
comment -->
	any_blanks,"#", !, any_comment_body, newline.