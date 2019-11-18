number -->
	boolean;non_complex_number;complex_number;scientific.

digit -->
	"1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

int_rec -->
	digit,int.
int -->
	digit;int_rec.
any_int -->
	eps;int.

boolean -->
	"True", !, {write("True")}.
boolean -->
	"False", !, {write("False")}.

float -->
	(any_int, ".", int);
	(int, ".", any_int).

non_complex_number -->
	float;int.

any_op_num_plus_min -->
	eps;op_num_plus_min.
power_symbol -->
	"e";"E".
scientific -->
	non_complex_number,power_symbol,any_op_num_plus_min,int.

complex_infix -->
	any_blanks,op_num_plus_min,any_blanks.
non_complex_number_with_op -->
	non_complex_number, complex_infix.
any_non_complex_number_with_op -->
	eps;non_complex_number_with_op.
complex_part -->
	non_complex_number, "j".
complex_number -->
	any_non_complex_number_with_op,complex_part.
