alphanumeric -->
    (letter,(eps;alphanumeric));
    (digit,(eps;alphanumeric)).

alphanumeric_underscore -->
	(alphanumeric;underscore), (eps;alphanumeric_underscore).

end_of_variable_char -->
	op_single; blank.

variable_single -->
	\+ (keywords, end_of_variable_char),
	(
		(underscore;letter),(eps;alphanumeric_underscore)
	).

variable -->
	variable_single, (eps;(any_blanks,(".";","),any_blanks,variable)).
