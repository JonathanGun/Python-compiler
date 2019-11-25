number -->
	boolean;non_complex_number;complex_number;scientific.

digit -->
	char_0; char_1; char_2; char_3; char_4; char_5; char_6; char_7; char_8; char_9.

int_rec -->
	digit,int.
int -->
	digit;int_rec.
any_int -->
	eps;int.

boolean -->
	char_True;char_False.

float -->
	any_int, char_46, int.
float -->
	int, char_46, any_int.

non_complex_number -->
	float;int.

any_op_num_plus_min -->
	eps;op_num_plus_min.
power_symbol -->
	char_e;char_E.
scientific -->
	non_complex_number,power_symbol,any_op_num_plus_min,int.

complex_infix -->
	any_blanks,op_num_plus_min,any_blanks.
non_complex_number_with_op -->
	non_complex_number, complex_infix.
any_non_complex_number_with_op -->
	eps;non_complex_number_with_op.
complex_part -->
	non_complex_number, char_j.
complex_number -->
	any_non_complex_number_with_op,complex_part.
