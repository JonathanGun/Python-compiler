:- use_module(library(pio)).
:- include(datatype).
:- include(expression).
:- include(keyword).
:- include(number).
:- include(operator).
:- include(string).
:- include(util).

start(X) :-
	phrase_from_file(X, 'input1.txt'),!.
start(Z, X) :-
	string_codes(X, Y),
	phrase(Z, Y),!.
