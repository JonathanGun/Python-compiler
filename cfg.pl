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

:- dynamic(current_indent/1).
:- dynamic(current_level_function/1).
:- dynamic(valid_indent/1).
:- dynamic(wrong/1).

current_indent(0).
current_level_function(0).
valid_indent(no).
wrong([]).

start(X) :-
	retract(current_indent(_)),
	retract(current_level_function(_)),
	retract(valid_indent(_)),
	asserta(current_indent(0)),
	asserta(current_level_function(0)),
	asserta(valid_indent(no)),
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