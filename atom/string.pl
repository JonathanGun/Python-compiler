lowercase -->
    "a";"b";"c";"d";"e";"f";"g";"h";"i";"j";"k";"l";"m";"n";"o";"p";"q";"r";"s";"t";"u";"v";"w";
    "x";"y";"z".
uppercase -->
    "A";"B";"C";"D";"E";"F";"G";"H";"I";"J";"K";"L";"M";"N";"O";"P";"Q";"R";"S";"T";"U";"V";"W";
    "X";"Y";"Z".
letter -->
	lowercase;uppercase.

symbol_without_underscore_and_blank -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"'";"\"";",";"<";".";">";"/";"?".
symbol_without_underscore -->
    symbol_without_underscore_and_blank;" ".
symbol_without_single_quote -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"\"";",";"<";".";">";"/";"?";" ";escaped_single_quote;underscore;"\t".
symbol_without_double_quote -->
    "`";"~";"!";"@";"#";"$";"%";"^";"&";"*";"(";")";"-";"=";"+";"{";"[";"}";"]";"\\";"|";";";
    ":";"'";",";"<";".";">";"/";"?";" ";escaped_double_quote;underscore;"\t".

single_quote -->
    "'".
double_quote -->
    "\"".
escaped_single_quote -->
    "\\'".
escaped_double_quote -->
    "\\\"".

alphanumeric -->
    (letter,any_alphanumeric);
    (digit,any_alphanumeric).
any_alphanumeric -->
    eps;alphanumeric.
alphanumeric_underscore -->
    (alphanumeric;underscore),
    any_alphanumeric_underscore.
any_alphanumeric_underscore -->
    eps;alphanumeric_underscore.

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

string_multi_body_without_double_quote -->
    symbol_without_double_quote;
    digit;
    letter;
    "\n".

string_body_multi_body_without_double_quote -->
    eps;
    (string_multi_body_without_double_quote, string_body_multi_body_without_double_quote);
    ("\"",string_multi_body_without_double_quote,string_body_multi_body_without_double_quote);
    ("\"\"", string_multi_body_without_double_quote, string_body_multi_body_without_double_quote).

string_multi_body_without_single_quote -->
    symbol_without_single_quote;
    digit;
    letter;
    "\n".

string_body_multi_body_without_single_quote -->
    eps;
    (string_multi_body_without_single_quote, string_body_multi_body_without_single_quote);
    ("'", string_multi_body_without_single_quote, string_body_multi_body_without_single_quote);
    ("''", string_multi_body_without_single_quote, string_body_multi_body_without_single_quote).

string -->
	("'", string_body_without_single_quote, "'");
    ("\"", string_body_without_double_quote, "\"");
    ("\"\"\"", string_body_multi_body_without_double_quote, "\"\"\"");
    ("'''", string_body_multi_body_without_single_quote,"'''").
