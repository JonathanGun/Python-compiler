end_of_variable_char --> is_eof.
end_of_variable_char -->
	any_blanks,(op; symbol_without_underscore_and_blank).

access_array_single -->
	open_square_bracket,!, expr, close_square_bracket.
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
	variable_name,any_blanks,any_args,any_access_array.

dot -->
	".".
comma_term -->
	",".
comma -->
	any_blanks, comma_term.
maybe_comma -->
	eps;comma.
variable -->
	variable_single.
variable -->
	variable_single,dot,variable.

variables_rec -->
	variable,comma,variables_without_comma.
variables_without_comma -->
	variable;variables_rec.
variables -->
	variables_without_comma,maybe_comma.
any_variables -->
	eps; variables.