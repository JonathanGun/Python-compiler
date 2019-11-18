datatype -->
	number;string;dict;list;set;tuple;none.

none -->
	"None".

element_single -->
	any_blanks, expr, any_blanks.

element -->
	(element_single;(element_single,",",any_element)).

any_element -->
	eps;element.

dict_element_single -->
	any_blanks, expr, any_blanks, ":", any_blanks, expr, any_blanks.

dict_element -->
	dict_element_single;(dict_element_single, ",", any_dict_element).

any_dict_element -->
	eps;dict_element.

set -->
	"{",any_element,"}".

list -->
	"[",any_element,"]".

tuple -->
	"(",any_element,")".

dict -->
	"{", any_dict_element, "}".
