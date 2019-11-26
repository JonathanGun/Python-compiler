% ==================== TUBES 2 TBFO - Python Compiler ==================== %
%	Jovan Karuna C 			- 13518024									   %
% 	Jonathan Yudi Gunawan 	- 13518084									   %
%	William 				- 13518138									   %
% ======================================================================== %

:- include(atom/datatype).
:- include(atom/number).
:- include(atom/operator).
:- include(atom/string).
:- include(atom/terminals).
:- include(atom/util).

:- include(statement/expression).
:- include(statement/function).
:- include(statement/import).
:- include(statement/parameter).
:- include(statement/variable).
:- include(statement/argument).
:- include(statement/comment).

:- include(compound/block).
:- include(compound/class).
:- include(compound/if_else).
:- include(compound/loop).
:- include(compound/with_as).

start(X) :-
	phrase_from_file(X, 'input1.txt'),
	accepted.
start(_) :-
	write("Ga ada yng cocok.."),
	error.

cfg -->
	statement.

accepted :-	
	backtrace(20), nl,ansi_format([bold, fg(green)], 'Accepted!', []),nl,
	!, abort.

error :-
	backtrace(20), nl,ansi_format([bold, fg(red)], 'Syntax Error!', []),nl,
	!, abort.
