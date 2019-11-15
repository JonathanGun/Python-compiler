function -->
	variable, any_blanks, param, any_blanks.

maybe_return_var -->
	eps; ("->", blanks, expr).

funcdef -->
	"def", blanks, function, maybe_return_var, any_blanks, ":", any_blanks.

return -->
	"return".
