op_num -->
	"+"; "-"; "*"; "%"; "/"; "**"; "//".

op_compare -->
	"=="; "!="; ">"; "<"; ">="; "<=".

op_assignment -->
	"="; "+="; "-="; "*="; "/="; "//="; "%="; "**=".

op_bitwise -->
	"&";"|";"^";"~";"<<";">>".

op_logical -->
	"and";"or";"not".

op_membership -->
	"in"; "not in".

op_identity -->
	"is"; "is not".

op_infix -->
	op_num;op_compare;op_bitwise;op_logical;op_membership;op_identity.

op_prefix -->
	"not".

op -->
	op_num;op_compare;op_assignment;op_bitwise;op_logical;op_membership;op_identity.
