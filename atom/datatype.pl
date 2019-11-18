datatype -->
	number;string;dict;list;set;tuple;none.
none -->
	"None".

element_single -->
	expr.
element -->
	(element_single;(element_single,separator,any_element)).
any_element -->
	eps;(any_blanks,element,any_blanks).

dict_element_single -->
	expr, colon, expr.
dict_element -->
	dict_element_single;(dict_element_single, separator, any_dict_element).
any_dict_element -->
	eps;(any_blanks,dict_element,any_blanks).

set -->
	"{",any_element,"}",!.
list -->
	"[",any_element,"]",!.
tuple -->
	"(",any_element,")",!.
dict -->
	"{",any_dict_element, "}",!.
