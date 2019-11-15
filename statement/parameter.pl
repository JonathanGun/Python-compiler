/*
	Parameter order :
	1. Normal
	2. Default
	3. Args
	4. Keyword Arguments
*/

parameter_element -->
	variable.
parameter_default -->
	assign_without_op.
parameter_only -->
	parameter_element;(parameter_element,parameter_separator,parameter_only).
parameter_only_default -->
	parameter_default;(parameter_default,parameter_separator,parameter_default).
parameter_args -->
	"*",variable. 
parameter_kwargs -->
	"**",variable.
parameter_separator -->
	any_blanks, ",", any_blanks.

param -->
	"(",
		any_blanks,
		(eps ; parameter_only),
		(eps ; parameter_only_default ; (parameter_separator,parameter_only_default)),
		(eps ; parameter_args ; (parameter_separator, parameter_args)),
		(eps ; parameter_kwargs ; (parameter_separator, parameter_kwargs)),
		any_blanks,
	")".