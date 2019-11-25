import_only_body -->
	blanks, variables.
import_only -->
	char_import, import_only_body.

import_all_body -->
	blanks, char_42.
import_all -->
	char_import, import_all_body.

as -->
	char_as,import_only_body.
import_alias_body -->
	blanks, as.
import_alias -->
	import_only, import_alias_body.

import_with_from_elmt -->
	import_all;import_without_from.
import_with_from_body -->
	blanks,import_with_from_elmt.
import_with_from_body_full -->
	import_only_body, import_with_from_body.
import_with_from -->
	char_from, import_with_from_body_full.

import_without_from -->
	import_alias;import_only.


import -->
	char_import,any_blanks, is_eof,{write("cant import empty file"), error}.
import -->
	import_without_from;import_with_from.