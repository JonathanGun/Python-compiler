function -->
	variable, any_blanks, args, any_blanks.

maybe_return_var -->
	eps; ("->", blanks, expr).

funcdef -->
	"def", blanks, function, maybe_return_var, colon, block.

return -->
	"return", any_blanks , expr.

from_expr -->
	"from", any_blanks ,expr.

raise -->
	"raise",any_blanks,
	 (eps;(expr,any_blanks,(eps;from_expr))).
