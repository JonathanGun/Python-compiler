expr_prefix -->
	eps; (op_prefix, any_blanks).

expr_elmt -->
	datatype;variable.

expr_body -->
	expr_prefix, any_blanks, (expr_elmt ; (expr_elmt, any_blanks, op_infix, any_blanks, expr_body)), any_blanks.

blank_coated_expr -->
	any_blanks, expr, any_blanks.

maybe_add_another_expr_body -->
	eps; (any_blanks, op_infix, blank_coated_expr).

expr -->
	expr_body;("(", blank_coated_expr, maybe_add_another_expr_body, ")", maybe_add_another_expr_body).

assign -->
	variable, any_blanks, op_assignment, any_blanks, expr.
