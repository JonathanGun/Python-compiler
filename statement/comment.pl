comment_single_line -->
	"#", any_blanks, (string_body_without_single_quote ; string_body_without_double_quote),any_blanks.

comment -->
	comment_single_line;(("\"\"\"", string_body_multi_body_without_double_quote, "\"\"\""); ("'''", string_body_multi_body_without_single_quote,"'''")).