:-set_prolog_flag(double_quotes, codes).  % This is for SWI 7+ to revert to the prior interpretation of quoted strings.

expr(Z) --> "(", "+", spaces, lexpr(M), spaces, lexpr(N), ")", {swritef(Z, "%s + %s", [M, N])}.
expr(Z) --> "(", "-", spaces, lexpr(M), spaces, lexpr(N), ")", {swritef(Z, "%s - %s", [M, N])}.
expr(Z) --> "(", "*", spaces, lexpr(M), spaces, lexpr(N), ")", {swritef(Z, "%s * %s", [M, N])}.
expr(Z) --> "(", "/", spaces, lexpr(M), spaces, lexpr(N), ")", {swritef(Z, "%s / %s", [M, N])}.
expr(N) --> number(N).

lexpr(Z) --> expr(M), {atom_chars(M, Z)}.

number(C) --> "-", digits(X), {C is -X}.
number(C) --> digits(C).

digits(D) --> digit(D);digit(A),digits(B), {number_codes(B,Cs),length(Cs,L), D is A*(10^L)+B}.
digit(D) --> [C], {"0"=<C, C=<"9", D is C - "0"}.

spaces --> " ", spaces.
spaces --> [].