datatype -->
	number;string;dict;list;set;tuple;none.

none -->
	"None".

element -->
	(datatype);(datatype,",",element).

dict_element -->
	(datatype, ":", datatype);(datatype, ":", datatype, ",", dict_element).

set -->
	"{",element,"}".

list -->
	"[",element,"]".

tuple -->
	"(",element,")".

dict -->
	"{", dict_element, "}".
