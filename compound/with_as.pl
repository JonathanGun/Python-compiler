with_singular -->
	any_blanks,(number;variable),any_blanks.

with_item -->
	with_singular,"as",with_singular.

with_items -->
	with_item; (with_item, ",", with_items).

with -->
	"with" , with_items, ":",any_blanks.












