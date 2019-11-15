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
symbol_without_single_quote -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"\"";",";"<";".";">";"/";"?";" ";escaped_single_quote;underscore.
symbol_without_double_quote -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"'";",";"<";".";">";"/";"?";" ";escaped_double_quote;underscore.

single_quote -->
    "'".
double_quote -->
    "\"".
escaped_single_quote -->
    "\\'"
escaped_double_quote -->
    "\\\"".

alphanumeric -->
    (letter,(eps;alphanumeric));
    (digit,(eps;alphanumeric)).
alphanumeric_underscore -->
    (alphanumeric;underscore), (eps;alphanumeric_underscore).

symbol -->
	symbol_without_underscore;underscore.

string_body_without_single_quote -->
    eps;
    (letter,string_body_without_single_quote);
    (digit,string_body_without_single_quote);
    (symbol_without_single_quote,string_body_without_single_quote).
string_body_without_double_quote -->
    eps;
    (letter,string_body_without_double_quote);
    (digit,string_body_without_double_quote);
    (symbol_without_double_quote,string_body_without_double_quote).

string -->
	("'", string_body_without_single_quote, "'") ; ("\"", string_body_without_double_quote, "\"").



