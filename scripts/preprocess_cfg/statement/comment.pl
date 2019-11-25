comment_elmt -->
	letter;digit;symbol;tab.
comment_body -->
	comment_elmt;(comment_elmt,comment_body).
any_comment_body -->
	eps;comment_body.
comment -->
	char_35, !, any_comment_body, (eps;eof).
any_comment -->
	eps;comment.