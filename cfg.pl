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

:- include(statement/expression).
:- include(statement/function).
:- include(statement/import).
:- include(statement/parameter).
:- include(statement/variable).
:- include(statement/argument).

:- include(compound/block).
:- include(compound/class).
:- include(compound/if_else).
:- include(compound/loop).
:- include(compound/with_as).

:- dynamic(wrong/1).

wrong([]).

start(X) :-
	retract(wrong(_)),
	asserta(wrong([])),
	phrase_from_file(X, 'input1.txt'),
	accepted.
start(_) :-
	error.

cfg -->
	statement.

accepted :-	
	ansi_format([bold, fg(green)], 'Accepted!', []),nl,
	!, abort.

error :-
	ansi_format([bold, fg(red)], 'Syntax Error!', []),nl,
	wrong(L), show_error(L),	
	!, abort.

show_error([]).
show_error([X|_]) :-
	write("salah di '"), char_code(C, X), write(C),write("' ("), write(X), write(")"), nl.