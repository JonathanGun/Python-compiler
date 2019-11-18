number -->
	boolean;non_complex_number;complex_number;scientific.

digit -->
	"1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

int -->
	digit;(digit,int).

boolean -->
	"True", !, {write("True")}.
boolean -->
	"False", !, {write("False")}.

float -->
	((eps;int), ".", int);
	(int, ".", (eps;int)).

non_complex_number -->
	float;int.

scientific -->
	(int;float),("e";"E"),(eps;"-";"+"),(int).

complex_number -->
	(eps; (non_complex_number, any_blanks, op_num_plus_min, any_blanks)), non_complex_number, "j".
