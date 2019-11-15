expr_elmt -->
	datatype;variable.
expr_body -->
	expr_prefix, (expr_elmt ; (expr_elmt, expr_op_infix, expr_body)).

prefix_multi -->
	op_prefix, any_blanks, expr_prefix.
expr_prefix -->
	eps; prefix_multi.
expr_op_infix -->
	any_blanks, op_infix, any_blanks.

maybe_expr_after -->
	eps; (expr_op_infix, expr_body).
maybe_expr_before -->
	eps; (expr_body, expr_op_infix).

expr_open_bracket -->
	"(", any_blanks.
expr_close_bracket -->
	any_blanks, ")".

expr -->
	((eps; "not",(prefix_multi;blanks)), expr_body);
	(maybe_expr_before, expr_open_bracket, expr, expr_close_bracket);
	(expr_open_bracket, expr, expr_close_bracket, maybe_expr_after).


assign -->
	variable, any_blanks, op_assignment, any_blanks, expr.
assign_without_op -->
	variable, any_blanks, op_assignment_single, any_blanks, expr.
