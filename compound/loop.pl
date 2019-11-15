while -->
	"while" , blanks , expr , blanks , ":" , block.

for -->
    "for" , blanks , variable , blanks , "in" , blanks , (expr;function) ,":" , block.

break -->
	{
		current_indent(X),
		X > 0
	},
	"break".

continue -->
	{
		current_indent(X),
		X > 0
	},
	"continue".
