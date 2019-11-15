alphanumeric -->
    (letter,(eps;alphanumeric));
    (digit,(eps;alphanumeric)).

lowercase -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";"k";"l";"m";"n";"o";"p";"q";"r";"s";"t";"u";"v";"w";
    "x";"y";"z".

uppercase -->
    "A";"B";"C";"D";"E";"F";"G";"H";"I";"J";"K";"L";"M";"N";"O";"P";"Q";"R";"S";"T";"U";"V";"W";
    "X";"Y";"Z".

letter -->
	lowercase;uppercase.

symbol_without_underscore -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"'";"\"";",";"<";".";">";"/";"?";" ".

symbol -->
	symbol_without_underscore;underscore.

string_body -->
    (lowercase,string_body) ; (uppercase,string_body); (symbol,string_body); symbol; lowercase ; uppercase.

string -->
	("'", string_body, "'") ; ("\"", string_body, "\"").



