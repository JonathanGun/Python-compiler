blank -->
	" ".

blanks -->
	blank;(blank,blanks).

any_blanks -->
	eps;blanks.

eps -->
	"".

underscore -->
	"_".

underscores -->
	underscore;(underscore, underscores).

any_underscore -->
	eps; underscores.