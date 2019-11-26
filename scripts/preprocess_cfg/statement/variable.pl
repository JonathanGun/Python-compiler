end_of_variable_char --> is_eof.
end_of_variable_char -->
	any_blanks,(op; symbol_without_underscore_and_blank).

access_array_single -->
	open_square_bracket, expr, close_square_bracket.
access_array -->
	access_array_single;(access_array_single,any_blanks,access_array).
any_access_array -->
	eps;access_array.

hint -->
	colon, expr.
any_hint -->
	eps;hint.

first_char_var -->
	underscore;letter.
other_char_var -->
	letter;digit;underscore.
other_char_var -->
	(letter,other_char_var);
	(digit,other_char_var); 
	(underscore,other_char_var).
any_other_char_var -->
	eps;other_char_var.
variable_name  -->
	keywords, end_of_variable_char, {write("Cannot use reserved name as variable!"), nl, error}.
variable_name -->
	first_char_var,any_other_char_var.
variable_single -->
	variable_name.
variable_names_without_comma_rec -->
	variable_name, separator, variable_names_without_comma.
variable_names_without_comma -->
	variable_name;variable_names_without_comma_rec.
variable_names -->
	variable_names_without_comma, maybe_comma.

maybe_comma -->
	eps;separator.
variable_only_no_bracket -->
	variable_single.
variable_only_no_bracket -->
	variable_single,dot,variable.
variable_only -->
	variable_only_no_bracket.
variable_only -->
	open_bracket, variable_only_no_bracket, close_bracket.
variable_elmt -->
	variable_only.
variable_body_no_bracket -->
	expr_prefix, (variable_elmt ; (variable_elmt, expr_op_infix, variable_body)).
variable_body -->
	variable_body_no_bracket.
variable_body -->
	open_bracket,variable_body_no_bracket,close_bracket.
variable_prefix -->
	(eps; (char_not,blank)), (prefix_multi;any_blanks).
variable -->
	variable_prefix,variable_body,any_blanks,any_args,any_access_array.

variables_rec -->
	variable,separator,variables_without_comma.
variables_without_comma -->
	variable;variables_rec.
variables -->
	variables_without_comma,maybe_comma.
