import_only -->
	"import",blanks,variables.

import_all -->
	"import",blanks,"*".

import_alias -->
	import_only,blanks,"as", blanks, variables.

import_with_from -->
	"from", blanks, variables, blanks, (import_without_from;import_all).

import_without_from -->
	import_only;import_alias.

import -->
	import_without_from;import_with_from.