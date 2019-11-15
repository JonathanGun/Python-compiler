% ==================== TUBES 2 TBFO - Python Compiler ==================== %
%	Jovan Karuna C 			- 13518024									   %
% 	Jonathan Yudi Gunawan 	- 13518084									   %
%	William 				- 13518138									   %
% ======================================================================== %

:- use_module(library(pio)).

:- include(atom/datatype).
:- include(atom/number).
:- include(atom/operator).
:- include(atom/string).
:- include(atom/util).

:- include(compound/expression).
:- include(compound/import).
:- include(compound/variable).

:- include(block/if_else).

start(X) :-
	phrase_from_file(X, 'input1.txt'),!.
start(Z, X) :-
	string_codes(X, Y),
	phrase(Z, Y),!.
