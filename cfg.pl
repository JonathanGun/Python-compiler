:- use_module(library(pio)).
:- include(util).
:- include(number).
:- include(alphabet).
:- include(operator).

start(X) :-
	phrase_from_file(X, 'input1.txt').
start(Z, X) :-
	string_codes(X, Y),
	phrase(Z, Y).