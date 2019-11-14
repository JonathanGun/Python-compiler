number -->
	int;float;complex.

digit -->
	"1";"2";"3";"4";"5";"6";"7";"8";"9";"0".

int -->
	digit;(digit,int);"True";"False".

float -->
	((eps;int), ".", int);
	(int, ".", (eps;int)).

complex -->
	(float;int), (eps;blanks), ("+";"-"), (eps;blanks), (float;int), "j".
