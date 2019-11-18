function -->
	variable_name,any_blanks,args.

maybe_return_var -->
	eps; (any_blanks, "->", !, any_blanks, expr).
funcdef_elmt -->
	function,maybe_return_var.
funcdef_body -->
	blanks,funcdef_elmt.
funcdef -->
	"def", !, funcdef_body, block.

return_body -->
	any_blanks, (eps;expr).
return -->
	"return", return_body.

from_expr_body -->
	any_blanks, expr.
from_expr -->
	"from", !, from_expr_body.
maybe_from_expr -->
	eps;from_expr.

raise_elmt -->
	expr,any_blanks,maybe_from_expr.
any_raise_elmt -->
	eps;raise_elmt.
raise_body -->
	any_blanks, any_raise_elmt.
raise -->
	"raise", !, raise_body.
