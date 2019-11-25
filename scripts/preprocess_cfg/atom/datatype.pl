datatype -->
	number;string;dict;list;set;tuple;none.
none -->
	char_None.

element -->
	expr;(expr,separator,any_element).
any_element -->
	eps;element.

dict_element_single -->
	expr, colon, expr.
dict_element -->
	dict_element_single;(dict_element_single, separator, any_dict_element).
any_dict_element -->
	eps;dict_element.

set -->
	open_curly_bracket, any_element, close_curly_bracket.
list -->
	open_square_bracket, any_element, close_square_bracket.
tuple -->
	open_bracket,any_element, close_bracket.
dict -->
	open_curly_bracket,any_dict_element, close_curly_bracket.
