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
	datatype;(variable_name,any_blanks,any_args,any_access_array).

dot_or_comma -->
	".";",".
varparator -->
	any_blanks, dot_or_comma, any_blanks.
add_variable -->
	varparator, variable.
maybe_add_variable -->
	eps;add_variable.
variable -->
	variable_single,maybe_add_variable,any_hint.

variables_rec -->
	variable,variables.
variables -->
	variable;variables_rec.
any_variables -->
	eps; variables.