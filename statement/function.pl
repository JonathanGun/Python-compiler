function -->
	variable, any_blanks, args, any_blanks.

maybe_return_var -->
	eps; ("->", blanks, expr).

funcdef -->
	"def", 
	blanks, 
	function, 
	maybe_return_var, 
	any_blanks, ":", 
	any_blanks,
	{
	current_level_function(X),
	retract(current_level_function(X)),
	X1 is X + 1,
	asserta(current_level_function(X1)),
	block,
	retract(current_level_function(Y)),
	Y1 is Y - 1,
	asserta(current_level_function(Y1))
	}.

return -->
	{
		current_level_function(X),
		X > 0

	},
	"return", any_blanks , expr.


from_expr -->
	"from", any_blanks ,expr.


raise -->
	"raise",any_blanks,
	 (eps;(expr,any_blanks,(eps;from_expr))).
