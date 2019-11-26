expr_elmt -->
	variable;function;datatype.
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

expr -->
	maybe_expr_before,(eps; (char_not,blank)),(prefix_multi;any_blanks), expr_body,maybe_expr_after.
exprs_without_comma -->
	expr; (expr, separator, exprs_without_comma).
exprs -->
	exprs_without_comma; (exprs_without_comma, separator).

assign_with_op -->
	variable_names, any_blanks, op_assignment, any_blanks, exprs.
assign_without_op -->
	variable_names, any_blanks, op_assignment_single, any_blanks, (exprs;assign_without_op).
assign -->
	assign_without_op;assign_with_op.

