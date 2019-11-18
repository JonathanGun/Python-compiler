end_of_variable_char --> eof.
end_of_variable_char -->
	op_single; ":"; "(";")";blank.

variable_single -->
	(underscore;letter),(eps;letter;digit;underscore;variable_single).

variable -->
	variable_single, (eps;(any_blanks,(".";","),any_blanks,variable)).

variables -->
	variable; (variable,variables).

any_variables -->
	eps; variables.