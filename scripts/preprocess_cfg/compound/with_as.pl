with_item -->
	expr, any_blanks, char_as, any_blanks, expr.

with_items -->
	with_item; (with_item, separator, with_items).

with -->
	char_with, !, any_blanks, with_items, block.












