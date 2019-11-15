import_only -->
	"import",blanks,variable.

import_all -->
	"import",blanks,"*".

import_alias -->
	import_only,blanks,"as", blanks, variable.

import_with_from -->
	"from", blanks, variable, blanks, (import_without_from;import_all).

import_without_from -->
	import_only;import_alias.

import -->
	import_without_from;import_with_from.