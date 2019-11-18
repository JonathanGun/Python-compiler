comment_elmt -->
	alphanumeric;symbol;tab.
comment_body -->
	comment_elmt;(comment_elmt,comment_body).
comment -->
	"#", !, comment_body, newline.