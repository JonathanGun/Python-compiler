:- use_module(library(dcg/basics)).

s -->
	number.
number -->
	int;float;complex.
digit -->
	"1";"2";"3";"4";"5";"6";"7";"8";"9";"0".
int -->
	digit;
	(
		digit,
		int
	).
float -->
	int, ".", int.
complex -->
	(float;int), "+", (float;int), "j".

cfg(X) :-
	phrase(s, X, []),format('~s~n', [X]).