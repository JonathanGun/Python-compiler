end_of_variable_char --> eof.
end_of_variable_char -->
	op_single; ":"; "(";")";blank.

access_array_single -->
	open_square_bracket, expr, close_square_bracket.
access_array -->
	access_array_single;(access_array_single,any_blanks,access_array).
any_access_array -->
	eps;access_array.

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
variable_name -->
	first_char_var,any_other_char_var.
variable_single -->
	variable_name,(eps;args),any_access_array.

variable -->
	variable_single, (eps;(any_blanks,(".";","),any_blanks,variable)).
variables -->
	variable; (variable,variables).
any_variables -->
	eps; variables.