op_num_plus_min -->
	"+"; "-".
op_num_single -->
	op_num_plus_min; "*"; "%"; "/".
op_num -->
	op_num_single; "**"; "//".

op_compare_single -->
	">"; "<".
op_compare -->
	op_compare_single; "=="; "!="; ">="; "<=".

op_assignment_single -->
	"=".
op_assignment -->
	op_assignment_single; "+="; "-="; "*="; "/="; "//="; "%="; "**=".

op_bitwise_single -->
	"&";"|";"^";"~".
op_bitwise -->
	op_bitwise_single; "<<"; ">>".

op_logical -->
	"and";"or";"not".

op_membership -->
	"in"; "not in".

op_identity -->
	"is"; "is not".

op_infix -->
	op_num;op_compare;op_bitwise;op_logical;op_membership;op_identity.

op_prefix -->
	"not", op_num_plus_min.

op_single -->
	op_bitwise_single; op_assignment_single; op_compare_single; op_num_single.

op -->
	op_num;op_compare;op_assignment;op_bitwise;op_logical;op_membership;op_identity.
