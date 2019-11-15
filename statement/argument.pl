args_element -->
	variable;expr;assign_without_op.
args_separator -->
	any_blanks, "," , any_blanks.
args_ins -->
	args_element;(args_element,args_separator,args_ins).
args -->
	"(",
		any_blanks,
		(eps ; args_ins),
		%% any_blanks,
		%% (eps ; args_separator),
		any_blanks,
	")".
	
