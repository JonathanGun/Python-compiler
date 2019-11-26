op_num_plus_min -->
	char_43; char_45.
op_num_single -->
	op_num_plus_min; char_42; char_37; char_47.
op_num -->
	op_num_single; char_4242; char_4747.

op_compare_single -->
	">"; "<".
op_compare -->
	op_compare_single; char_6161; char_3361; char_6261; char_6061.

op_assignment_single -->
	char_61.
op_assignment -->
	op_assignment_single; char_4361; char_4561; char_4261; char_4761; char_474761; char_3761; char_424261; char_606061; char_626261.

op_bitwise_single -->
	char_38; char_124; char_94; char_126.
op_bitwise -->
	op_bitwise_single; char_6060; char_6262.

op_logical -->
	char_and;char_or;char_not.

op_membership -->
	char_in; char_not96in.

op_identity -->
	char_is; char_is96not.

op_infix -->
	op_num;op_compare;op_bitwise;op_logical; (blank, (op_membership;op_identity), blank).

op_prefix -->
	op_num_plus_min; char_126.

op_single -->
	op_bitwise_single; op_assignment_single; op_compare_single; op_num_single.

op -->
	op_num;op_compare;op_assignment;op_bitwise;op_logical;op_membership;op_identity.
