:- use_module(library(dcg/basics)).
:- use_module(library(pio)).
:- include(number).
:- include(alphabet).
:- include(operator).
:- initialization(write('======='),program).
:- initialization(nl,program).
:- initialization(write('Start!!'),program).
:- initialization(nl,program).
:- initialization(write('======='),program).
:- initialization(nl,program).

start(X) :-
	phrase_from_file(X, 'input1.txt').
start(Z, X) :-
	string_codes(X, Y),
	phrase(Z, Y).