number -->
	non_complex_number;complex_number.

digit -->
	"1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

int -->
	"True", !, {write("True")}.
int -->
	"False", !, {write("False")}.
int -->
	digit;(digit,int).

float -->
	((eps;int), ".", int);
	(int, ".", (eps;int)).

non_complex_number -->
	float;int.

complex_number -->
	(eps; (non_complex_number, any_blanks, op_num_plus_min, any_blanks)), non_complex_number, "j".
