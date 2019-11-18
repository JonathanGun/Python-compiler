end_of_variable_char --> eof.
end_of_variable_char -->
	op_single; ":"; "(";")";blank.

access_array_single -->
	open_square_bracket, expr, close_square_bracket.
access_array -->
	access_array_single;(access_array_single,any_blanks,access_array).
any_access_array -->
	eps;access_array.

variable_name -->
	(underscore;letter),(eps;letter;digit;underscore;variable_single).
variable_access_array -->
	variable_name,any_access_array.
function -->
	variable_name,args.
variable_single -->
	function;variable_access_array.

variable -->
	variable_single, (eps;(any_blanks,(".";","),any_blanks,variable)).

variables -->
	variable; (variable,variables).

any_variables -->
	eps; variables.