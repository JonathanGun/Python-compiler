function -->
	variable, any_blanks, args, any_blanks, {write("function_call ")}.

maybe_return_var -->
	eps; ("->", blanks, expr).

funcdef -->
	"def", blanks, function, maybe_return_var, {write("function_def ")}, block.

return -->
	"return", any_blanks , expr, {write("return_stmt ")}.

from_expr -->
	"from", any_blanks ,expr, {write("from_stmt ")}.

raise -->
	"raise", any_blanks,
	(eps;(expr,any_blanks,(eps;from_expr))), {write("raise_stmt ")}.
