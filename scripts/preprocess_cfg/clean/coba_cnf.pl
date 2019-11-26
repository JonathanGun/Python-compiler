start(X) :- phrase_from_file(X, "input1.txt"), accepted.
start(_) :- write("Ga ada yng cocok.."), error.
cfg --> s.
accepted :-	backtrace(20), nl,ansi_format([bold, fg(green)], "Accepted!", []), nl, !, abort.
error :- backtrace(20), nl,ansi_format([bold, fg(red)], "Syntax Error!", []), nl, !, abort.
s --> statement.
s --> any_blanks , a251.
s --> any_tabs , statement_elmt.
s --> statement_single , statement.
s --> any_comment , newline.
s --> any_blanks , a241.
s --> newline_only , maybe_empty_line.
s --> simple_stmt , a281.
s --> if_only , a311.
s --> char_while , a321.
s --> char_for , a331.
s --> char_with , a371.
s --> char_def , a521.
s --> char_class , a291.
a02 --> any_element.
a51 --> any_element , close_curly_bracket.
a51 --> any_blanks , char_125.
a51 --> "}".
a61 --> any_element , close_square_bracket.
a61 --> any_blanks , char_93.
a61 --> "]".
a71 --> any_element , close_bracket.
a71 --> any_blanks , char_41.
a71 --> ")".
a32 --> any_dict_element.
a81 --> any_dict_element , close_curly_bracket.
a81 --> any_blanks , char_125.
a81 --> "}".
float --> any_int , a91.
float --> int , a101.
float --> char_46 , int.
a101 --> char_46 , any_int.
a101 --> ".".
a112 --> any_op_num_plus_min , int.
a112 --> "0".
a112 --> "1".
a112 --> "2".
a112 --> "3".
a112 --> "4".
a112 --> "5".
a112 --> "6".
a112 --> "7".
a112 --> "8".
a112 --> "9".
a112 --> digit , int.
complex_number --> any_non_complex_number_with_op , complex_part.
complex_number --> non_complex_number , char_j.
a141 --> any_alphanumeric.
a151 --> any_alphanumeric.
alphanumeric_underscore --> alphanumeric_underscore_new , any_alphanumeric_underscore.
alphanumeric_underscore --> letter , a141.
alphanumeric_underscore --> digit , a151.
alphanumeric_underscore --> "_".
string_body_without_single_quote_01 --> letter , string_body_without_single_quote.
string_body_without_single_quote_01 --> "a".
string_body_without_single_quote_01 --> "b".
string_body_without_single_quote_01 --> "c".
string_body_without_single_quote_01 --> "d".
string_body_without_single_quote_01 --> "e".
string_body_without_single_quote_01 --> "f".
string_body_without_single_quote_01 --> "g".
string_body_without_single_quote_01 --> "h".
string_body_without_single_quote_01 --> "i".
string_body_without_single_quote_01 --> "j".
string_body_without_single_quote_01 --> "k".
string_body_without_single_quote_01 --> "l".
string_body_without_single_quote_01 --> "m".
string_body_without_single_quote_01 --> "n".
string_body_without_single_quote_01 --> "o".
string_body_without_single_quote_01 --> "p".
string_body_without_single_quote_01 --> "q".
string_body_without_single_quote_01 --> "r".
string_body_without_single_quote_01 --> "s".
string_body_without_single_quote_01 --> "t".
string_body_without_single_quote_01 --> "u".
string_body_without_single_quote_01 --> "v".
string_body_without_single_quote_01 --> "w".
string_body_without_single_quote_01 --> "x".
string_body_without_single_quote_01 --> "y".
string_body_without_single_quote_01 --> "z".
string_body_without_single_quote_01 --> "A".
string_body_without_single_quote_01 --> "B".
string_body_without_single_quote_01 --> "C".
string_body_without_single_quote_01 --> "D".
string_body_without_single_quote_01 --> "E".
string_body_without_single_quote_01 --> "F".
string_body_without_single_quote_01 --> "G".
string_body_without_single_quote_01 --> "H".
string_body_without_single_quote_01 --> "I".
string_body_without_single_quote_01 --> "J".
string_body_without_single_quote_01 --> "K".
string_body_without_single_quote_01 --> "L".
string_body_without_single_quote_01 --> "M".
string_body_without_single_quote_01 --> "N".
string_body_without_single_quote_01 --> "O".
string_body_without_single_quote_01 --> "P".
string_body_without_single_quote_01 --> "Q".
string_body_without_single_quote_01 --> "R".
string_body_without_single_quote_01 --> "S".
string_body_without_single_quote_01 --> "T".
string_body_without_single_quote_01 --> "U".
string_body_without_single_quote_01 --> "V".
string_body_without_single_quote_01 --> "W".
string_body_without_single_quote_01 --> "X".
string_body_without_single_quote_01 --> "Y".
string_body_without_single_quote_01 --> "Z".
string_body_without_single_quote_02 --> digit , string_body_without_single_quote.
string_body_without_single_quote_02 --> "0".
string_body_without_single_quote_02 --> "1".
string_body_without_single_quote_02 --> "2".
string_body_without_single_quote_02 --> "3".
string_body_without_single_quote_02 --> "4".
string_body_without_single_quote_02 --> "5".
string_body_without_single_quote_02 --> "6".
string_body_without_single_quote_02 --> "7".
string_body_without_single_quote_02 --> "8".
string_body_without_single_quote_02 --> "9".
string_body_without_single_quote_03 --> symbol_without_single_quote , string_body_without_single_quote.
string_body_without_single_quote_03 --> "`".
string_body_without_single_quote_03 --> "!".
string_body_without_single_quote_03 --> "\"".
string_body_without_single_quote_03 --> "#".
string_body_without_single_quote_03 --> "$".
string_body_without_single_quote_03 --> "%".
string_body_without_single_quote_03 --> "&".
string_body_without_single_quote_03 --> "(".
string_body_without_single_quote_03 --> ")".
string_body_without_single_quote_03 --> "*".
string_body_without_single_quote_03 --> "+".
string_body_without_single_quote_03 --> ",".
string_body_without_single_quote_03 --> "-".
string_body_without_single_quote_03 --> ".".
string_body_without_single_quote_03 --> "/".
string_body_without_single_quote_03 --> ":".
string_body_without_single_quote_03 --> ";".
string_body_without_single_quote_03 --> "<".
string_body_without_single_quote_03 --> "=".
string_body_without_single_quote_03 --> ">".
string_body_without_single_quote_03 --> "?".
string_body_without_single_quote_03 --> "@".
string_body_without_single_quote_03 --> "[".
string_body_without_single_quote_03 --> "\\".
string_body_without_single_quote_03 --> "]".
string_body_without_single_quote_03 --> "^".
string_body_without_single_quote_03 --> "_".
string_body_without_single_quote_03 --> "`".
string_body_without_single_quote_03 --> "{".
string_body_without_single_quote_03 --> ";".
string_body_without_single_quote_03 --> "}".
string_body_without_single_quote_03 --> "~".
string_body_without_single_quote_03 --> char_92 , single_quote.
string_body_without_single_quote_03 --> "_".
string_body_without_single_quote_03 --> "\t".
a201 --> string_body_without_single_quote , single_quote.
a201 --> "\'".
string_body_without_double_quote_01 --> letter , string_body_without_double_quote.
string_body_without_double_quote_01 --> "a".
string_body_without_double_quote_01 --> "b".
string_body_without_double_quote_01 --> "c".
string_body_without_double_quote_01 --> "d".
string_body_without_double_quote_01 --> "e".
string_body_without_double_quote_01 --> "f".
string_body_without_double_quote_01 --> "g".
string_body_without_double_quote_01 --> "h".
string_body_without_double_quote_01 --> "i".
string_body_without_double_quote_01 --> "j".
string_body_without_double_quote_01 --> "k".
string_body_without_double_quote_01 --> "l".
string_body_without_double_quote_01 --> "m".
string_body_without_double_quote_01 --> "n".
string_body_without_double_quote_01 --> "o".
string_body_without_double_quote_01 --> "p".
string_body_without_double_quote_01 --> "q".
string_body_without_double_quote_01 --> "r".
string_body_without_double_quote_01 --> "s".
string_body_without_double_quote_01 --> "t".
string_body_without_double_quote_01 --> "u".
string_body_without_double_quote_01 --> "v".
string_body_without_double_quote_01 --> "w".
string_body_without_double_quote_01 --> "x".
string_body_without_double_quote_01 --> "y".
string_body_without_double_quote_01 --> "z".
string_body_without_double_quote_01 --> "A".
string_body_without_double_quote_01 --> "B".
string_body_without_double_quote_01 --> "C".
string_body_without_double_quote_01 --> "D".
string_body_without_double_quote_01 --> "E".
string_body_without_double_quote_01 --> "F".
string_body_without_double_quote_01 --> "G".
string_body_without_double_quote_01 --> "H".
string_body_without_double_quote_01 --> "I".
string_body_without_double_quote_01 --> "J".
string_body_without_double_quote_01 --> "K".
string_body_without_double_quote_01 --> "L".
string_body_without_double_quote_01 --> "M".
string_body_without_double_quote_01 --> "N".
string_body_without_double_quote_01 --> "O".
string_body_without_double_quote_01 --> "P".
string_body_without_double_quote_01 --> "Q".
string_body_without_double_quote_01 --> "R".
string_body_without_double_quote_01 --> "S".
string_body_without_double_quote_01 --> "T".
string_body_without_double_quote_01 --> "U".
string_body_without_double_quote_01 --> "V".
string_body_without_double_quote_01 --> "W".
string_body_without_double_quote_01 --> "X".
string_body_without_double_quote_01 --> "Y".
string_body_without_double_quote_01 --> "Z".
string_body_without_double_quote_02 --> digit , string_body_without_double_quote.
string_body_without_double_quote_02 --> "0".
string_body_without_double_quote_02 --> "1".
string_body_without_double_quote_02 --> "2".
string_body_without_double_quote_02 --> "3".
string_body_without_double_quote_02 --> "4".
string_body_without_double_quote_02 --> "5".
string_body_without_double_quote_02 --> "6".
string_body_without_double_quote_02 --> "7".
string_body_without_double_quote_02 --> "8".
string_body_without_double_quote_02 --> "9".
string_body_without_double_quote_03 --> symbol_without_double_quote , string_body_without_double_quote.
string_body_without_double_quote_03 --> "`".
string_body_without_double_quote_03 --> "!".
string_body_without_double_quote_03 --> "#".
string_body_without_double_quote_03 --> "$".
string_body_without_double_quote_03 --> "%".
string_body_without_double_quote_03 --> "&".
string_body_without_double_quote_03 --> "\'".
string_body_without_double_quote_03 --> "(".
string_body_without_double_quote_03 --> ")".
string_body_without_double_quote_03 --> "*".
string_body_without_double_quote_03 --> "+".
string_body_without_double_quote_03 --> ",".
string_body_without_double_quote_03 --> "-".
string_body_without_double_quote_03 --> ".".
string_body_without_double_quote_03 --> "/".
string_body_without_double_quote_03 --> ":".
string_body_without_double_quote_03 --> ";".
string_body_without_double_quote_03 --> "<".
string_body_without_double_quote_03 --> "=".
string_body_without_double_quote_03 --> ">".
string_body_without_double_quote_03 --> "?".
string_body_without_double_quote_03 --> "@".
string_body_without_double_quote_03 --> "[".
string_body_without_double_quote_03 --> "\\".
string_body_without_double_quote_03 --> "]".
string_body_without_double_quote_03 --> "^".
string_body_without_double_quote_03 --> "_".
string_body_without_double_quote_03 --> "`".
string_body_without_double_quote_03 --> "{".
string_body_without_double_quote_03 --> ";".
string_body_without_double_quote_03 --> "}".
string_body_without_double_quote_03 --> "~".
string_body_without_double_quote_03 --> char_92 , double_quote.
string_body_without_double_quote_03 --> "_".
string_body_without_double_quote_03 --> "\t".
a211 --> string_body_without_double_quote , double_quote.
a211 --> "\"".
string_body_multi_body_without_double_quote_01 --> string_multi_body_without_double_quote , string_body_multi_body_without_double_quote.
string_body_multi_body_without_double_quote_01 --> "`".
string_body_multi_body_without_double_quote_01 --> "!".
string_body_multi_body_without_double_quote_01 --> "#".
string_body_multi_body_without_double_quote_01 --> "$".
string_body_multi_body_without_double_quote_01 --> "%".
string_body_multi_body_without_double_quote_01 --> "&".
string_body_multi_body_without_double_quote_01 --> "\'".
string_body_multi_body_without_double_quote_01 --> "(".
string_body_multi_body_without_double_quote_01 --> ")".
string_body_multi_body_without_double_quote_01 --> "*".
string_body_multi_body_without_double_quote_01 --> "+".
string_body_multi_body_without_double_quote_01 --> ",".
string_body_multi_body_without_double_quote_01 --> "-".
string_body_multi_body_without_double_quote_01 --> ".".
string_body_multi_body_without_double_quote_01 --> "/".
string_body_multi_body_without_double_quote_01 --> ":".
string_body_multi_body_without_double_quote_01 --> ";".
string_body_multi_body_without_double_quote_01 --> "<".
string_body_multi_body_without_double_quote_01 --> "=".
string_body_multi_body_without_double_quote_01 --> ">".
string_body_multi_body_without_double_quote_01 --> "?".
string_body_multi_body_without_double_quote_01 --> "@".
string_body_multi_body_without_double_quote_01 --> "[".
string_body_multi_body_without_double_quote_01 --> "\\".
string_body_multi_body_without_double_quote_01 --> "]".
string_body_multi_body_without_double_quote_01 --> "^".
string_body_multi_body_without_double_quote_01 --> "_".
string_body_multi_body_without_double_quote_01 --> "`".
string_body_multi_body_without_double_quote_01 --> "{".
string_body_multi_body_without_double_quote_01 --> ";".
string_body_multi_body_without_double_quote_01 --> "}".
string_body_multi_body_without_double_quote_01 --> "~".
string_body_multi_body_without_double_quote_01 --> char_92 , double_quote.
string_body_multi_body_without_double_quote_01 --> "0".
string_body_multi_body_without_double_quote_01 --> "1".
string_body_multi_body_without_double_quote_01 --> "2".
string_body_multi_body_without_double_quote_01 --> "3".
string_body_multi_body_without_double_quote_01 --> "4".
string_body_multi_body_without_double_quote_01 --> "5".
string_body_multi_body_without_double_quote_01 --> "6".
string_body_multi_body_without_double_quote_01 --> "7".
string_body_multi_body_without_double_quote_01 --> "8".
string_body_multi_body_without_double_quote_01 --> "9".
string_body_multi_body_without_double_quote_01 --> "\n".
string_body_multi_body_without_double_quote_01 --> "_".
string_body_multi_body_without_double_quote_01 --> "\t".
string_body_multi_body_without_double_quote_01 --> "a".
string_body_multi_body_without_double_quote_01 --> "b".
string_body_multi_body_without_double_quote_01 --> "c".
string_body_multi_body_without_double_quote_01 --> "d".
string_body_multi_body_without_double_quote_01 --> "e".
string_body_multi_body_without_double_quote_01 --> "f".
string_body_multi_body_without_double_quote_01 --> "g".
string_body_multi_body_without_double_quote_01 --> "h".
string_body_multi_body_without_double_quote_01 --> "i".
string_body_multi_body_without_double_quote_01 --> "j".
string_body_multi_body_without_double_quote_01 --> "k".
string_body_multi_body_without_double_quote_01 --> "l".
string_body_multi_body_without_double_quote_01 --> "m".
string_body_multi_body_without_double_quote_01 --> "n".
string_body_multi_body_without_double_quote_01 --> "o".
string_body_multi_body_without_double_quote_01 --> "p".
string_body_multi_body_without_double_quote_01 --> "q".
string_body_multi_body_without_double_quote_01 --> "r".
string_body_multi_body_without_double_quote_01 --> "s".
string_body_multi_body_without_double_quote_01 --> "t".
string_body_multi_body_without_double_quote_01 --> "u".
string_body_multi_body_without_double_quote_01 --> "v".
string_body_multi_body_without_double_quote_01 --> "w".
string_body_multi_body_without_double_quote_01 --> "x".
string_body_multi_body_without_double_quote_01 --> "y".
string_body_multi_body_without_double_quote_01 --> "z".
string_body_multi_body_without_double_quote_01 --> "A".
string_body_multi_body_without_double_quote_01 --> "B".
string_body_multi_body_without_double_quote_01 --> "C".
string_body_multi_body_without_double_quote_01 --> "D".
string_body_multi_body_without_double_quote_01 --> "E".
string_body_multi_body_without_double_quote_01 --> "F".
string_body_multi_body_without_double_quote_01 --> "G".
string_body_multi_body_without_double_quote_01 --> "H".
string_body_multi_body_without_double_quote_01 --> "I".
string_body_multi_body_without_double_quote_01 --> "J".
string_body_multi_body_without_double_quote_01 --> "K".
string_body_multi_body_without_double_quote_01 --> "L".
string_body_multi_body_without_double_quote_01 --> "M".
string_body_multi_body_without_double_quote_01 --> "N".
string_body_multi_body_without_double_quote_01 --> "O".
string_body_multi_body_without_double_quote_01 --> "P".
string_body_multi_body_without_double_quote_01 --> "Q".
string_body_multi_body_without_double_quote_01 --> "R".
string_body_multi_body_without_double_quote_01 --> "S".
string_body_multi_body_without_double_quote_01 --> "T".
string_body_multi_body_without_double_quote_01 --> "U".
string_body_multi_body_without_double_quote_01 --> "V".
string_body_multi_body_without_double_quote_01 --> "W".
string_body_multi_body_without_double_quote_01 --> "X".
string_body_multi_body_without_double_quote_01 --> "Y".
string_body_multi_body_without_double_quote_01 --> "Z".
a161 --> string_multi_body_without_double_quote , string_body_multi_body_without_double_quote.
a161 --> "`".
a161 --> "!".
a161 --> "#".
a161 --> "$".
a161 --> "%".
a161 --> "&".
a161 --> "\'".
a161 --> "(".
a161 --> ")".
a161 --> "*".
a161 --> "+".
a161 --> ",".
a161 --> "-".
a161 --> ".".
a161 --> "/".
a161 --> ":".
a161 --> ";".
a161 --> "<".
a161 --> "=".
a161 --> ">".
a161 --> "?".
a161 --> "@".
a161 --> "[".
a161 --> "\\".
a161 --> "]".
a161 --> "^".
a161 --> "_".
a161 --> "`".
a161 --> "{".
a161 --> ";".
a161 --> "}".
a161 --> "~".
a161 --> char_92 , double_quote.
a161 --> "0".
a161 --> "1".
a161 --> "2".
a161 --> "3".
a161 --> "4".
a161 --> "5".
a161 --> "6".
a161 --> "7".
a161 --> "8".
a161 --> "9".
a161 --> "\n".
a161 --> "_".
a161 --> "\t".
a161 --> "a".
a161 --> "b".
a161 --> "c".
a161 --> "d".
a161 --> "e".
a161 --> "f".
a161 --> "g".
a161 --> "h".
a161 --> "i".
a161 --> "j".
a161 --> "k".
a161 --> "l".
a161 --> "m".
a161 --> "n".
a161 --> "o".
a161 --> "p".
a161 --> "q".
a161 --> "r".
a161 --> "s".
a161 --> "t".
a161 --> "u".
a161 --> "v".
a161 --> "w".
a161 --> "x".
a161 --> "y".
a161 --> "z".
a161 --> "A".
a161 --> "B".
a161 --> "C".
a161 --> "D".
a161 --> "E".
a161 --> "F".
a161 --> "G".
a161 --> "H".
a161 --> "I".
a161 --> "J".
a161 --> "K".
a161 --> "L".
a161 --> "M".
a161 --> "N".
a161 --> "O".
a161 --> "P".
a161 --> "Q".
a161 --> "R".
a161 --> "S".
a161 --> "T".
a161 --> "U".
a161 --> "V".
a161 --> "W".
a161 --> "X".
a161 --> "Y".
a161 --> "Z".
a172 --> string_multi_body_without_double_quote , string_body_multi_body_without_double_quote.
a172 --> "`".
a172 --> "!".
a172 --> "#".
a172 --> "$".
a172 --> "%".
a172 --> "&".
a172 --> "\'".
a172 --> "(".
a172 --> ")".
a172 --> "*".
a172 --> "+".
a172 --> ",".
a172 --> "-".
a172 --> ".".
a172 --> "/".
a172 --> ":".
a172 --> ";".
a172 --> "<".
a172 --> "=".
a172 --> ">".
a172 --> "?".
a172 --> "@".
a172 --> "[".
a172 --> "\\".
a172 --> "]".
a172 --> "^".
a172 --> "_".
a172 --> "`".
a172 --> "{".
a172 --> ";".
a172 --> "}".
a172 --> "~".
a172 --> char_92 , double_quote.
a172 --> "0".
a172 --> "1".
a172 --> "2".
a172 --> "3".
a172 --> "4".
a172 --> "5".
a172 --> "6".
a172 --> "7".
a172 --> "8".
a172 --> "9".
a172 --> "\n".
a172 --> "_".
a172 --> "\t".
a172 --> "a".
a172 --> "b".
a172 --> "c".
a172 --> "d".
a172 --> "e".
a172 --> "f".
a172 --> "g".
a172 --> "h".
a172 --> "i".
a172 --> "j".
a172 --> "k".
a172 --> "l".
a172 --> "m".
a172 --> "n".
a172 --> "o".
a172 --> "p".
a172 --> "q".
a172 --> "r".
a172 --> "s".
a172 --> "t".
a172 --> "u".
a172 --> "v".
a172 --> "w".
a172 --> "x".
a172 --> "y".
a172 --> "z".
a172 --> "A".
a172 --> "B".
a172 --> "C".
a172 --> "D".
a172 --> "E".
a172 --> "F".
a172 --> "G".
a172 --> "H".
a172 --> "I".
a172 --> "J".
a172 --> "K".
a172 --> "L".
a172 --> "M".
a172 --> "N".
a172 --> "O".
a172 --> "P".
a172 --> "Q".
a172 --> "R".
a172 --> "S".
a172 --> "T".
a172 --> "U".
a172 --> "V".
a172 --> "W".
a172 --> "X".
a172 --> "Y".
a172 --> "Z".
a223 --> string_body_multi_body_without_double_quote , a224.
a223 --> double_quote , a225.
string_body_multi_body_without_single_quote_01 --> string_multi_body_without_single_quote , string_body_multi_body_without_single_quote.
string_body_multi_body_without_single_quote_01 --> "`".
string_body_multi_body_without_single_quote_01 --> "!".
string_body_multi_body_without_single_quote_01 --> "\"".
string_body_multi_body_without_single_quote_01 --> "#".
string_body_multi_body_without_single_quote_01 --> "$".
string_body_multi_body_without_single_quote_01 --> "%".
string_body_multi_body_without_single_quote_01 --> "&".
string_body_multi_body_without_single_quote_01 --> "(".
string_body_multi_body_without_single_quote_01 --> ")".
string_body_multi_body_without_single_quote_01 --> "*".
string_body_multi_body_without_single_quote_01 --> "+".
string_body_multi_body_without_single_quote_01 --> ",".
string_body_multi_body_without_single_quote_01 --> "-".
string_body_multi_body_without_single_quote_01 --> ".".
string_body_multi_body_without_single_quote_01 --> "/".
string_body_multi_body_without_single_quote_01 --> ":".
string_body_multi_body_without_single_quote_01 --> ";".
string_body_multi_body_without_single_quote_01 --> "<".
string_body_multi_body_without_single_quote_01 --> "=".
string_body_multi_body_without_single_quote_01 --> ">".
string_body_multi_body_without_single_quote_01 --> "?".
string_body_multi_body_without_single_quote_01 --> "@".
string_body_multi_body_without_single_quote_01 --> "[".
string_body_multi_body_without_single_quote_01 --> "\\".
string_body_multi_body_without_single_quote_01 --> "]".
string_body_multi_body_without_single_quote_01 --> "^".
string_body_multi_body_without_single_quote_01 --> "_".
string_body_multi_body_without_single_quote_01 --> "`".
string_body_multi_body_without_single_quote_01 --> "{".
string_body_multi_body_without_single_quote_01 --> ";".
string_body_multi_body_without_single_quote_01 --> "}".
string_body_multi_body_without_single_quote_01 --> "~".
string_body_multi_body_without_single_quote_01 --> char_92 , single_quote.
string_body_multi_body_without_single_quote_01 --> "0".
string_body_multi_body_without_single_quote_01 --> "1".
string_body_multi_body_without_single_quote_01 --> "2".
string_body_multi_body_without_single_quote_01 --> "3".
string_body_multi_body_without_single_quote_01 --> "4".
string_body_multi_body_without_single_quote_01 --> "5".
string_body_multi_body_without_single_quote_01 --> "6".
string_body_multi_body_without_single_quote_01 --> "7".
string_body_multi_body_without_single_quote_01 --> "8".
string_body_multi_body_without_single_quote_01 --> "9".
string_body_multi_body_without_single_quote_01 --> "\n".
string_body_multi_body_without_single_quote_01 --> "_".
string_body_multi_body_without_single_quote_01 --> "\t".
string_body_multi_body_without_single_quote_01 --> "a".
string_body_multi_body_without_single_quote_01 --> "b".
string_body_multi_body_without_single_quote_01 --> "c".
string_body_multi_body_without_single_quote_01 --> "d".
string_body_multi_body_without_single_quote_01 --> "e".
string_body_multi_body_without_single_quote_01 --> "f".
string_body_multi_body_without_single_quote_01 --> "g".
string_body_multi_body_without_single_quote_01 --> "h".
string_body_multi_body_without_single_quote_01 --> "i".
string_body_multi_body_without_single_quote_01 --> "j".
string_body_multi_body_without_single_quote_01 --> "k".
string_body_multi_body_without_single_quote_01 --> "l".
string_body_multi_body_without_single_quote_01 --> "m".
string_body_multi_body_without_single_quote_01 --> "n".
string_body_multi_body_without_single_quote_01 --> "o".
string_body_multi_body_without_single_quote_01 --> "p".
string_body_multi_body_without_single_quote_01 --> "q".
string_body_multi_body_without_single_quote_01 --> "r".
string_body_multi_body_without_single_quote_01 --> "s".
string_body_multi_body_without_single_quote_01 --> "t".
string_body_multi_body_without_single_quote_01 --> "u".
string_body_multi_body_without_single_quote_01 --> "v".
string_body_multi_body_without_single_quote_01 --> "w".
string_body_multi_body_without_single_quote_01 --> "x".
string_body_multi_body_without_single_quote_01 --> "y".
string_body_multi_body_without_single_quote_01 --> "z".
string_body_multi_body_without_single_quote_01 --> "A".
string_body_multi_body_without_single_quote_01 --> "B".
string_body_multi_body_without_single_quote_01 --> "C".
string_body_multi_body_without_single_quote_01 --> "D".
string_body_multi_body_without_single_quote_01 --> "E".
string_body_multi_body_without_single_quote_01 --> "F".
string_body_multi_body_without_single_quote_01 --> "G".
string_body_multi_body_without_single_quote_01 --> "H".
string_body_multi_body_without_single_quote_01 --> "I".
string_body_multi_body_without_single_quote_01 --> "J".
string_body_multi_body_without_single_quote_01 --> "K".
string_body_multi_body_without_single_quote_01 --> "L".
string_body_multi_body_without_single_quote_01 --> "M".
string_body_multi_body_without_single_quote_01 --> "N".
string_body_multi_body_without_single_quote_01 --> "O".
string_body_multi_body_without_single_quote_01 --> "P".
string_body_multi_body_without_single_quote_01 --> "Q".
string_body_multi_body_without_single_quote_01 --> "R".
string_body_multi_body_without_single_quote_01 --> "S".
string_body_multi_body_without_single_quote_01 --> "T".
string_body_multi_body_without_single_quote_01 --> "U".
string_body_multi_body_without_single_quote_01 --> "V".
string_body_multi_body_without_single_quote_01 --> "W".
string_body_multi_body_without_single_quote_01 --> "X".
string_body_multi_body_without_single_quote_01 --> "Y".
string_body_multi_body_without_single_quote_01 --> "Z".
a181 --> string_multi_body_without_single_quote , string_body_multi_body_without_single_quote.
a181 --> "`".
a181 --> "!".
a181 --> "\"".
a181 --> "#".
a181 --> "$".
a181 --> "%".
a181 --> "&".
a181 --> "(".
a181 --> ")".
a181 --> "*".
a181 --> "+".
a181 --> ",".
a181 --> "-".
a181 --> ".".
a181 --> "/".
a181 --> ":".
a181 --> ";".
a181 --> "<".
a181 --> "=".
a181 --> ">".
a181 --> "?".
a181 --> "@".
a181 --> "[".
a181 --> "\\".
a181 --> "]".
a181 --> "^".
a181 --> "_".
a181 --> "`".
a181 --> "{".
a181 --> ";".
a181 --> "}".
a181 --> "~".
a181 --> char_92 , single_quote.
a181 --> "0".
a181 --> "1".
a181 --> "2".
a181 --> "3".
a181 --> "4".
a181 --> "5".
a181 --> "6".
a181 --> "7".
a181 --> "8".
a181 --> "9".
a181 --> "\n".
a181 --> "_".
a181 --> "\t".
a181 --> "a".
a181 --> "b".
a181 --> "c".
a181 --> "d".
a181 --> "e".
a181 --> "f".
a181 --> "g".
a181 --> "h".
a181 --> "i".
a181 --> "j".
a181 --> "k".
a181 --> "l".
a181 --> "m".
a181 --> "n".
a181 --> "o".
a181 --> "p".
a181 --> "q".
a181 --> "r".
a181 --> "s".
a181 --> "t".
a181 --> "u".
a181 --> "v".
a181 --> "w".
a181 --> "x".
a181 --> "y".
a181 --> "z".
a181 --> "A".
a181 --> "B".
a181 --> "C".
a181 --> "D".
a181 --> "E".
a181 --> "F".
a181 --> "G".
a181 --> "H".
a181 --> "I".
a181 --> "J".
a181 --> "K".
a181 --> "L".
a181 --> "M".
a181 --> "N".
a181 --> "O".
a181 --> "P".
a181 --> "Q".
a181 --> "R".
a181 --> "S".
a181 --> "T".
a181 --> "U".
a181 --> "V".
a181 --> "W".
a181 --> "X".
a181 --> "Y".
a181 --> "Z".
a192 --> string_multi_body_without_single_quote , string_body_multi_body_without_single_quote.
a192 --> "`".
a192 --> "!".
a192 --> "\"".
a192 --> "#".
a192 --> "$".
a192 --> "%".
a192 --> "&".
a192 --> "(".
a192 --> ")".
a192 --> "*".
a192 --> "+".
a192 --> ",".
a192 --> "-".
a192 --> ".".
a192 --> "/".
a192 --> ":".
a192 --> ";".
a192 --> "<".
a192 --> "=".
a192 --> ">".
a192 --> "?".
a192 --> "@".
a192 --> "[".
a192 --> "\\".
a192 --> "]".
a192 --> "^".
a192 --> "_".
a192 --> "`".
a192 --> "{".
a192 --> ";".
a192 --> "}".
a192 --> "~".
a192 --> char_92 , single_quote.
a192 --> "0".
a192 --> "1".
a192 --> "2".
a192 --> "3".
a192 --> "4".
a192 --> "5".
a192 --> "6".
a192 --> "7".
a192 --> "8".
a192 --> "9".
a192 --> "\n".
a192 --> "_".
a192 --> "\t".
a192 --> "a".
a192 --> "b".
a192 --> "c".
a192 --> "d".
a192 --> "e".
a192 --> "f".
a192 --> "g".
a192 --> "h".
a192 --> "i".
a192 --> "j".
a192 --> "k".
a192 --> "l".
a192 --> "m".
a192 --> "n".
a192 --> "o".
a192 --> "p".
a192 --> "q".
a192 --> "r".
a192 --> "s".
a192 --> "t".
a192 --> "u".
a192 --> "v".
a192 --> "w".
a192 --> "x".
a192 --> "y".
a192 --> "z".
a192 --> "A".
a192 --> "B".
a192 --> "C".
a192 --> "D".
a192 --> "E".
a192 --> "F".
a192 --> "G".
a192 --> "H".
a192 --> "I".
a192 --> "J".
a192 --> "K".
a192 --> "L".
a192 --> "M".
a192 --> "N".
a192 --> "O".
a192 --> "P".
a192 --> "Q".
a192 --> "R".
a192 --> "S".
a192 --> "T".
a192 --> "U".
a192 --> "V".
a192 --> "W".
a192 --> "X".
a192 --> "Y".
a192 --> "Z".
a233 --> string_body_multi_body_without_single_quote , a234.
a233 --> single_quote , a235.
any_element --> any_blanks , a11.
any_element --> element , a12.
a12 --> any_blanks.
any_dict_element --> any_blanks , a41.
any_dict_element --> dict_element , a42.
a42 --> any_blanks.
complex_infix --> any_blanks , a121.
complex_infix --> op_num_plus_min , any_blanks.
complex_infix --> "+".
complex_infix --> "-".
a121 --> op_num_plus_min , any_blanks.
a121 --> "+".
a121 --> "-".
newline --> any_blanks , a241.
newline --> newline_only , maybe_empty_line.
empty_line --> any_blanks , a251.
empty_line --> any_comment , newline.
empty_line --> any_blanks , a241.
empty_line --> newline_only , maybe_empty_line.
colon --> any_blanks , a261.
colon --> char_58 , any_blanks.
colon --> ":".
a261 --> char_58 , any_blanks.
a261 --> ":".
open_bracket --> char_40 , any_blanks.
open_bracket --> "(".
close_bracket --> any_blanks , char_41.
close_bracket --> ")".
open_square_bracket --> char_91 , any_blanks.
open_square_bracket --> "[".
close_square_bracket --> any_blanks , char_93.
close_square_bracket --> "]".
open_curly_bracket --> char_123 , any_blanks.
open_curly_bracket --> "{".
close_curly_bracket --> any_blanks , char_125.
close_curly_bracket --> "}".
separator --> any_blanks , a271.
separator --> comma , any_blanks.
separator --> ",".
a271 --> comma , any_blanks.
a271 --> ",".
inline_statement --> any_blanks , statement_elmt.
inline_statement --> simple_stmt , a281.
inline_statement --> if_only , a311.
inline_statement --> char_while , a321.
inline_statement --> char_for , a331.
inline_statement --> char_with , a371.
inline_statement --> char_def , a521.
inline_statement --> char_class , a291.
a293 --> any_blanks , a294.
a293 --> any_args , block.
a293 --> colon , block_statement.
a351 --> any_blanks , a352.
a351 --> char_as , a353.
a353 --> any_blanks , expr.
a353 --> maybe_expr_before , a441.
a353 --> expr_01 , a442.
a353 --> expr_02 , a443.
a371 --> any_blanks , a372.
a371 --> with_items , block.
a421 --> any_blanks , expr_prefix.
a421 --> op_prefix , a421.
a421 --> "\t".
a421 --> tab , blanks.
a421 --> "`".
a421 --> blank , blanks.
expr_op_infix --> any_blanks , a431.
expr_op_infix --> op_infix , any_blanks.
expr_op_infix --> blank , a131.
expr_op_infix --> "*".
expr_op_infix --> "%".
expr_op_infix --> "/".
expr_op_infix --> "+".
expr_op_infix --> "-".
expr_op_infix --> char_42 , char_42.
expr_op_infix --> char_47 , char_47.
expr_op_infix --> ">".
expr_op_infix --> "<".
expr_op_infix --> char_61 , char_61.
expr_op_infix --> char_33 , char_61.
expr_op_infix --> char_62 , char_61.
expr_op_infix --> char_60 , char_61.
expr_op_infix --> "&".
expr_op_infix --> ";".
expr_op_infix --> "^".
expr_op_infix --> "~".
expr_op_infix --> char_60 , char_60.
expr_op_infix --> char_62 , char_62.
expr_op_infix --> char_a , char_nd.
expr_op_infix --> char_o , char_r.
expr_op_infix --> char_n , char_ot.
a431 --> op_infix , any_blanks.
a431 --> blank , a131.
a431 --> char_42 , char_42.
a431 --> char_47 , char_47.
a431 --> ">".
a431 --> "<".
a431 --> char_61 , char_61.
a431 --> char_33 , char_61.
a431 --> char_62 , char_61.
a431 --> char_60 , char_61.
a431 --> char_60 , char_60.
a431 --> char_62 , char_62.
a431 --> char_a , char_nd.
a431 --> char_o , char_r.
a431 --> char_n , char_ot.
a431 --> "+".
a431 --> "-".
a431 --> "*".
a431 --> "%".
a431 --> "/".
a431 --> "&".
a431 --> ";".
a431 --> "^".
a431 --> "~".
a481 --> any_blanks , a482.
a481 --> op_assignment , a483.
a483 --> any_blanks , exprs.
a483 --> exprs_without_comma , a471.
a483 --> expr , a461.
a483 --> maybe_expr_before , a441.
a483 --> expr_01 , a442.
a483 --> expr_02 , a443.
a491 --> any_blanks , a492.
a491 --> op_assignment_single , a493.
a493 --> any_blanks , assign_without_op_01.
a493 --> exprs_without_comma , a471.
a493 --> expr , a461.
a493 --> variable_names , a491.
a493 --> maybe_expr_before , a441.
a493 --> expr_01 , a442.
a493 --> expr_02 , a443.
a501 --> any_blanks , args.
a501 --> open_bracket , a391.
maybe_return_var --> any_blanks , a511.
maybe_return_var --> char_45 , a512.
a513 --> any_blanks , a514.
a513 --> expr.
return_body --> any_blanks , return_body_01.
return_body --> maybe_expr_before , a441.
return_body --> expr_01 , a442.
return_body --> expr_02 , a443.
return_body --> "\t".
return_body --> tab , blanks.
return_body --> "`".
return_body --> blank , blanks.
from_expr_body --> any_blanks , expr.
from_expr_body --> maybe_expr_before , a441.
from_expr_body --> expr_01 , a442.
from_expr_body --> expr_02 , a443.
a531 --> any_blanks , maybe_from_expr.
a531 --> char_from , from_expr_body.
a531 --> "\t".
a531 --> tab , blanks.
a531 --> "`".
a531 --> blank , blanks.
raise_body --> any_blanks , any_raise_elmt.
raise_body --> expr , a531.
raise_body --> "\t".
raise_body --> tab , blanks.
raise_body --> "`".
raise_body --> blank , blanks.
end_of_variable_char --> any_blanks , end_of_variable_char_01.
end_of_variable_char --> "!".
end_of_variable_char --> "\"".
end_of_variable_char --> "#".
end_of_variable_char --> "$".
end_of_variable_char --> "%".
end_of_variable_char --> "&".
end_of_variable_char --> "\'".
end_of_variable_char --> "(".
end_of_variable_char --> ")".
end_of_variable_char --> "*".
end_of_variable_char --> "+".
end_of_variable_char --> ",".
end_of_variable_char --> "-".
end_of_variable_char --> ".".
end_of_variable_char --> "/".
end_of_variable_char --> ":".
end_of_variable_char --> ";".
end_of_variable_char --> "<".
end_of_variable_char --> "=".
end_of_variable_char --> ">".
end_of_variable_char --> "?".
end_of_variable_char --> "@".
end_of_variable_char --> "[".
end_of_variable_char --> "\\".
end_of_variable_char --> "]".
end_of_variable_char --> "^".
end_of_variable_char --> "`".
end_of_variable_char --> "{".
end_of_variable_char --> ";".
end_of_variable_char --> "}".
end_of_variable_char --> "~".
end_of_variable_char --> "*".
end_of_variable_char --> "%".
end_of_variable_char --> "/".
end_of_variable_char --> "+".
end_of_variable_char --> "-".
end_of_variable_char --> char_42 , char_42.
end_of_variable_char --> char_47 , char_47.
end_of_variable_char --> ">".
end_of_variable_char --> "<".
end_of_variable_char --> char_61 , char_61.
end_of_variable_char --> char_33 , char_61.
end_of_variable_char --> char_62 , char_61.
end_of_variable_char --> char_60 , char_61.
end_of_variable_char --> "=".
end_of_variable_char --> char_43 , char_61.
end_of_variable_char --> char_45 , char_61.
end_of_variable_char --> char_42 , char_61.
end_of_variable_char --> char_47 , char_61.
end_of_variable_char --> char_47 , char_4761.
end_of_variable_char --> char_37 , char_61.
end_of_variable_char --> char_42 , char_4261.
end_of_variable_char --> char_60 , char_6061.
end_of_variable_char --> char_62 , char_6261.
end_of_variable_char --> "&".
end_of_variable_char --> ";".
end_of_variable_char --> "^".
end_of_variable_char --> "~".
end_of_variable_char --> char_60 , char_60.
end_of_variable_char --> char_62 , char_62.
end_of_variable_char --> char_a , char_nd.
end_of_variable_char --> char_o , char_r.
end_of_variable_char --> char_n , char_ot.
end_of_variable_char --> char_i , char_n.
end_of_variable_char --> char_n , char_ot96in.
end_of_variable_char --> char_i , char_s.
end_of_variable_char --> char_i , char_s96not.
a611 --> any_blanks , access_array.
a611 --> open_square_bracket , a601.
a611 --> access_array_single , a611.
a712 --> any_blanks , a713.
a712 --> any_args , any_access_array.
a712 --> open_bracket , a391.
a712 --> open_square_bracket , a601.
a712 --> access_array_single , a611.
statement_single_01 --> any_tabs , statement_elmt.
statement_single_01 --> simple_stmt , a281.
statement_single_01 --> if_only , a311.
statement_single_01 --> char_while , a321.
statement_single_01 --> char_for , a331.
statement_single_01 --> char_with , a371.
statement_single_01 --> char_def , a521.
statement_single_01 --> char_class , a291.
a311 --> any_elif , maybe_else.
a311 --> elif_only , any_elif.
a311 --> char_el , if_only.
a311 --> char_else , block.
a323 --> block , maybe_else.
a323 --> colon , block_statement.
a343 --> block , maybe_else.
a343 --> colon , block_statement.
elif --> elif_only , any_elif.
elif --> char_el , if_only.
a391 --> any_args_ins , close_bracket.
a391 --> any_blanks , char_41.
a391 --> ")".
a294 --> any_args , block.
a294 --> colon , block_statement.
a713 --> any_args , any_access_array.
a713 --> open_square_bracket , a601.
a713 --> access_array_single , a611.
a713 --> open_bracket , a391.
a401 --> any_comment_body.
newline_only --> any_comment , enter.
newline_only --> "\n".
a251 --> any_comment , newline.
a251 --> any_blanks , a241.
a251 --> newline_only , maybe_empty_line.
expr_body --> expr_prefix , expr_body_02.
expr_body --> variable_prefix , a711.
expr_body --> variable_name , a501.
expr_body --> expr_elmt , a411.
expr_body --> any_non_complex_number_with_op , complex_part.
expr_body --> non_complex_number , a111.
expr_body --> char_T , char_rue.
expr_body --> char_F , char_alse.
expr_body --> any_int , a91.
expr_body --> int , a101.
expr_body --> char_46 , int.
expr_body --> digit , int.
expr_body --> non_complex_number , char_j.
expr_body --> single_quote , a201.
expr_body --> double_quote , a211.
expr_body --> double_quote , a221.
expr_body --> single_quote , a231.
expr_body --> open_curly_bracket , a81.
expr_body --> open_square_bracket , a61.
expr_body --> open_curly_bracket , a51.
expr_body --> open_bracket , a71.
expr_body --> char_N , char_one.
expr_body --> "0".
expr_body --> "1".
expr_body --> "2".
expr_body --> "3".
expr_body --> "4".
expr_body --> "5".
expr_body --> "6".
expr_body --> "7".
expr_body --> "8".
expr_body --> "9".
variable_body_no_bracket --> expr_prefix , variable_body_no_bracket_01.
variable_body_no_bracket --> variable_elmt , a681.
variable_body_no_bracket --> open_bracket , a671.
variable_body_no_bracket --> variable_single , a661.
variable_body_no_bracket --> first_char_var , any_other_char_var.
variable_body_no_bracket --> "_".
variable_body_no_bracket --> "a".
variable_body_no_bracket --> "b".
variable_body_no_bracket --> "c".
variable_body_no_bracket --> "d".
variable_body_no_bracket --> "e".
variable_body_no_bracket --> "f".
variable_body_no_bracket --> "g".
variable_body_no_bracket --> "h".
variable_body_no_bracket --> "i".
variable_body_no_bracket --> "j".
variable_body_no_bracket --> "k".
variable_body_no_bracket --> "l".
variable_body_no_bracket --> "m".
variable_body_no_bracket --> "n".
variable_body_no_bracket --> "o".
variable_body_no_bracket --> "p".
variable_body_no_bracket --> "q".
variable_body_no_bracket --> "r".
variable_body_no_bracket --> "s".
variable_body_no_bracket --> "t".
variable_body_no_bracket --> "u".
variable_body_no_bracket --> "v".
variable_body_no_bracket --> "w".
variable_body_no_bracket --> "x".
variable_body_no_bracket --> "y".
variable_body_no_bracket --> "z".
variable_body_no_bracket --> "A".
variable_body_no_bracket --> "B".
variable_body_no_bracket --> "C".
variable_body_no_bracket --> "D".
variable_body_no_bracket --> "E".
variable_body_no_bracket --> "F".
variable_body_no_bracket --> "G".
variable_body_no_bracket --> "H".
variable_body_no_bracket --> "I".
variable_body_no_bracket --> "J".
variable_body_no_bracket --> "K".
variable_body_no_bracket --> "L".
variable_body_no_bracket --> "M".
variable_body_no_bracket --> "N".
variable_body_no_bracket --> "O".
variable_body_no_bracket --> "P".
variable_body_no_bracket --> "Q".
variable_body_no_bracket --> "R".
variable_body_no_bracket --> "S".
variable_body_no_bracket --> "T".
variable_body_no_bracket --> "U".
variable_body_no_bracket --> "V".
variable_body_no_bracket --> "W".
variable_body_no_bracket --> "X".
variable_body_no_bracket --> "Y".
variable_body_no_bracket --> "Z".
a443 --> expr_body , maybe_expr_after.
a443 --> expr_prefix , expr_body_02.
a443 --> expr_elmt , a411.
a443 --> variable_prefix , a711.
a443 --> variable_name , a501.
a443 --> open_curly_bracket , a81.
a443 --> open_square_bracket , a61.
a443 --> open_curly_bracket , a51.
a443 --> open_bracket , a71.
a443 --> char_T , char_rue.
a443 --> char_F , char_alse.
a443 --> any_int , a91.
a443 --> int , a101.
a443 --> any_non_complex_number_with_op , complex_part.
a443 --> non_complex_number , char_j.
a443 --> non_complex_number , a111.
a443 --> single_quote , a201.
a443 --> double_quote , a211.
a443 --> double_quote , a221.
a443 --> single_quote , a231.
a443 --> char_N , char_one.
a443 --> char_46 , int.
a443 --> "0".
a443 --> "1".
a443 --> "2".
a443 --> "3".
a443 --> "4".
a443 --> "5".
a443 --> "6".
a443 --> "7".
a443 --> "8".
a443 --> "9".
a443 --> digit , int.
expr --> maybe_expr_before , a441.
expr --> expr_01 , a442.
expr --> expr_02 , a443.
a441 --> expr_01 , a442.
a441 --> expr_02 , a443.
funcdef_elmt --> function , maybe_return_var.
funcdef_elmt --> variable_name , a501.
a561 --> maybe_parameter_only , a562.
a561 --> param_01 , a563.
a561 --> param_02 , a564.
a561 --> param_03 , close_bracket.
a561 --> any_blanks , char_41.
a561 --> ")".
a562 --> param_01 , a563.
a562 --> param_02 , a564.
a562 --> param_03 , close_bracket.
a562 --> any_blanks , char_41.
a562 --> ")".
a563 --> param_02 , a564.
a563 --> param_03 , close_bracket.
a563 --> any_blanks , char_41.
a563 --> ")".
a564 --> param_03 , close_bracket.
a564 --> any_blanks , char_41.
a564 --> ")".
variable_name --> first_char_var , any_other_char_var.
variable_name --> "_".
variable_name --> "a".
variable_name --> "b".
variable_name --> "c".
variable_name --> "d".
variable_name --> "e".
variable_name --> "f".
variable_name --> "g".
variable_name --> "h".
variable_name --> "i".
variable_name --> "j".
variable_name --> "k".
variable_name --> "l".
variable_name --> "m".
variable_name --> "n".
variable_name --> "o".
variable_name --> "p".
variable_name --> "q".
variable_name --> "r".
variable_name --> "s".
variable_name --> "t".
variable_name --> "u".
variable_name --> "v".
variable_name --> "w".
variable_name --> "x".
variable_name --> "y".
variable_name --> "z".
variable_name --> "A".
variable_name --> "B".
variable_name --> "C".
variable_name --> "D".
variable_name --> "E".
variable_name --> "F".
variable_name --> "G".
variable_name --> "H".
variable_name --> "I".
variable_name --> "J".
variable_name --> "K".
variable_name --> "L".
variable_name --> "M".
variable_name --> "N".
variable_name --> "O".
variable_name --> "P".
variable_name --> "Q".
variable_name --> "R".
variable_name --> "S".
variable_name --> "T".
variable_name --> "U".
variable_name --> "V".
variable_name --> "W".
variable_name --> "X".
variable_name --> "Y".
variable_name --> "Z".
variable_names --> variable_names_without_comma , maybe_comma.
variable_names --> first_char_var , any_other_char_var.
variable_names --> variable_name , a651.
variable_names --> "_".
variable_names --> "a".
variable_names --> "b".
variable_names --> "c".
variable_names --> "d".
variable_names --> "e".
variable_names --> "f".
variable_names --> "g".
variable_names --> "h".
variable_names --> "i".
variable_names --> "j".
variable_names --> "k".
variable_names --> "l".
variable_names --> "m".
variable_names --> "n".
variable_names --> "o".
variable_names --> "p".
variable_names --> "q".
variable_names --> "r".
variable_names --> "s".
variable_names --> "t".
variable_names --> "u".
variable_names --> "v".
variable_names --> "w".
variable_names --> "x".
variable_names --> "y".
variable_names --> "z".
variable_names --> "A".
variable_names --> "B".
variable_names --> "C".
variable_names --> "D".
variable_names --> "E".
variable_names --> "F".
variable_names --> "G".
variable_names --> "H".
variable_names --> "I".
variable_names --> "J".
variable_names --> "K".
variable_names --> "L".
variable_names --> "M".
variable_names --> "N".
variable_names --> "O".
variable_names --> "P".
variable_names --> "Q".
variable_names --> "R".
variable_names --> "S".
variable_names --> "T".
variable_names --> "U".
variable_names --> "V".
variable_names --> "W".
variable_names --> "X".
variable_names --> "Y".
variable_names --> "Z".
variables --> variables_without_comma , maybe_comma.
variables --> variable_prefix , a711.
variables --> variable , a721.
variable_prefix --> variable_prefix_01 , variable_prefix_02.
variable_prefix --> op_prefix , a421.
variable_prefix --> tab , blanks.
variable_prefix --> "\t".
variable_prefix --> blank , blanks.
variable_prefix --> "`".
element --> expr , a01.
element --> maybe_expr_before , a441.
element --> expr_01 , a442.
element --> expr_02 , a443.
a01 --> separator , a02.
a11 --> element , a12.
dict_element_single --> expr , a21.
a21 --> colon , expr.
dict_element --> dict_element_single , a31.
dict_element --> expr , a21.
a31 --> separator , a32.
a41 --> dict_element , a42.
set --> open_curly_bracket , a51.
list --> open_square_bracket , a61.
tuple --> open_bracket , a71.
dict --> open_curly_bracket , a81.
int_rec --> digit , int.
a91 --> char_46 , int.
scientific --> non_complex_number , a111.
a111 --> power_symbol , a112.
non_complex_number_with_op --> non_complex_number , complex_infix.
complex_part --> non_complex_number , char_j.
op_compare_single --> ">".
op_compare_single --> "<".
op_infix --> blank , a131.
op_infix --> "*".
op_infix --> "%".
op_infix --> "/".
op_infix --> char_42 , char_42.
op_infix --> char_47 , char_47.
op_infix --> ">".
op_infix --> "<".
op_infix --> char_61 , char_61.
op_infix --> char_33 , char_61.
op_infix --> char_62 , char_61.
op_infix --> char_60 , char_61.
op_infix --> "&".
op_infix --> ";".
op_infix --> "^".
op_infix --> "~".
op_infix --> char_60 , char_60.
op_infix --> char_62 , char_62.
op_infix --> char_a , char_nd.
op_infix --> char_o , char_r.
op_infix --> char_n , char_ot.
op_infix --> "+".
op_infix --> "-".
a131 --> op_new , a132.
a132 --> blank.
escaped_single_quote --> char_92 , single_quote.
escaped_double_quote --> char_92 , double_quote.
alphanumeric --> letter , a141.
alphanumeric --> digit , a151.
string_body_multi_body_without_double_quote_02 --> double_quote , a161.
string_body_multi_body_without_double_quote_03 --> double_quote , a171.
a171 --> double_quote , a172.
string_body_multi_body_without_single_quote_02 --> single_quote , a181.
string_body_multi_body_without_single_quote_03 --> single_quote , a191.
a191 --> single_quote , a192.
string_01 --> single_quote , a201.
string_02 --> double_quote , a211.
string_03 --> double_quote , a221.
a221 --> double_quote , a222.
a222 --> double_quote , a223.
a224 --> double_quote , a225.
a225 --> double_quote , double_quote.
string_04 --> single_quote , a231.
a231 --> single_quote , a232.
a232 --> single_quote , a233.
a234 --> single_quote , a235.
a235 --> single_quote , single_quote.
tab_rec --> tab , blanks.
blank_rec --> blank , blanks.
tab_only_rec --> tab , tabs.
underscores_rec --> underscore , underscores.
a241 --> newline_only , maybe_empty_line.
block --> colon , block_statement.
statement_rec --> statement_single , statement.
indented_statement --> newline , statement.
statement_elmt --> simple_stmt , a281.
statement_elmt --> if_only , a311.
statement_elmt --> char_while , a321.
statement_elmt --> char_for , a331.
statement_elmt --> char_with , a371.
statement_elmt --> char_def , a521.
statement_elmt --> char_class , a291.
a281 --> newline.
classdef --> char_class , a291.
a291 --> blanks , a292.
a292 --> variable_name , a293.
if_only --> char_if , a301.
a301 --> blanks , a302.
a302 --> expr , block.
elif_only --> char_el , if_only.
else --> char_else , block.
if --> if_only , a311.
while --> char_while , a321.
a321 --> blanks , a322.
a322 --> expr , a323.
for --> char_for , a331.
a331 --> blanks , a332.
a332 --> variable , a333.
a333 --> blanks , in.
in --> char_in , a341.
a341 --> blanks , a342.
a342 --> expr , a343.
with_item --> expr , a351.
a352 --> char_as , a353.
with_items_01 --> with_item , a361.
a361 --> separator , with_items.
with --> char_with , a371.
a372 --> with_items , block.
args_ins_01 --> args_element , a381.
a381 --> separator , args_ins.
args --> open_bracket , a391.
comment_body_01 --> comment_elmt , comment_body.
comment --> char_35 , a401.
expr_body_01 --> expr_elmt , a411.
a411 --> expr_op_infix , expr_body.
prefix_multi --> op_prefix , a421.
maybe_expr_after_01 --> expr_op_infix , expr_body.
maybe_expr_before_01 --> expr_body , expr_op_infix.
a442 --> expr_02 , a443.
expr_01 --> char_not , a451.
a451 --> blank.
exprs_without_comma --> expr , a461.
exprs_without_comma --> maybe_expr_before , a441.
exprs_without_comma --> expr_01 , a442.
exprs_without_comma --> expr_02 , a443.
a461 --> separator , a462.
a462 --> exprs_without_comma.
exprs --> exprs_without_comma , a471.
exprs --> expr , a461.
exprs --> maybe_expr_before , a441.
exprs --> expr_01 , a442.
exprs --> expr_02 , a443.
a471 --> separator.
assign_with_op --> variable_names , a481.
a482 --> op_assignment , a483.
assign_without_op --> variable_names , a491.
a492 --> op_assignment_single , a493.
function --> variable_name , a501.
a511 --> char_45 , a512.
a512 --> char_62 , a513.
a514 --> expr.
funcdef_body --> blanks , funcdef_elmt.
funcdef --> char_def , a521.
a521 --> funcdef_body , block.
return --> char_return , return_body.
from_expr --> char_from , from_expr_body.
raise_elmt --> expr , a531.
raise --> char_raise , raise_body.
import_only_body --> blanks , variables.
import_only --> char_import , import_only_body.
import_all_body --> blanks , char_42.
import_all --> char_import , import_all_body.
as --> char_as , import_only_body.
import_alias_body --> blanks , as.
import_alias --> import_only , import_alias_body.
import_with_from_body --> blanks , import_with_from_elmt.
import_with_from_body_full --> import_only_body , import_with_from_body.
import_with_from --> char_from , import_with_from_body_full.
parameter_only --> parameter_element , a541.
parameter_only --> variable_prefix , a711.
a541 --> separator , a542.
a542 --> parameter_only.
parameter_only_default --> parameter_default , a551.
parameter_only_default --> variable_names , a491.
a551 --> separator , a552.
a552 --> parameter_default.
parameter_args --> char_42 , variable.
parameter_kwargs --> char_4242 , variable.
param --> open_bracket , a561.
param_01 --> separator , a571.
param_01 --> parameter_default , a551.
param_01 --> variable_names , a491.
a571 --> parameter_only_default.
param_02 --> separator , a581.
param_02 --> char_42 , variable.
a581 --> parameter_args.
param_03 --> separator , a591.
param_03 --> char_4242 , variable.
a591 --> parameter_kwargs.
access_array_single --> open_square_bracket , a601.
a601 --> expr , close_square_bracket.
access_array_01 --> access_array_single , a611.
hint --> colon , expr.
other_char_var --> letter , a621.
other_char_var --> digit , a631.
other_char_var --> underscore , a641.
other_char_var --> "a".
other_char_var --> "b".
other_char_var --> "c".
other_char_var --> "d".
other_char_var --> "e".
other_char_var --> "f".
other_char_var --> "g".
other_char_var --> "h".
other_char_var --> "i".
other_char_var --> "j".
other_char_var --> "k".
other_char_var --> "l".
other_char_var --> "m".
other_char_var --> "n".
other_char_var --> "o".
other_char_var --> "p".
other_char_var --> "q".
other_char_var --> "r".
other_char_var --> "s".
other_char_var --> "t".
other_char_var --> "u".
other_char_var --> "v".
other_char_var --> "w".
other_char_var --> "x".
other_char_var --> "y".
other_char_var --> "z".
other_char_var --> "A".
other_char_var --> "B".
other_char_var --> "C".
other_char_var --> "D".
other_char_var --> "E".
other_char_var --> "F".
other_char_var --> "G".
other_char_var --> "H".
other_char_var --> "I".
other_char_var --> "J".
other_char_var --> "K".
other_char_var --> "L".
other_char_var --> "M".
other_char_var --> "N".
other_char_var --> "O".
other_char_var --> "P".
other_char_var --> "Q".
other_char_var --> "R".
other_char_var --> "S".
other_char_var --> "T".
other_char_var --> "U".
other_char_var --> "V".
other_char_var --> "W".
other_char_var --> "X".
other_char_var --> "Y".
other_char_var --> "Z".
other_char_var --> "0".
other_char_var --> "1".
other_char_var --> "2".
other_char_var --> "3".
other_char_var --> "4".
other_char_var --> "5".
other_char_var --> "6".
other_char_var --> "7".
other_char_var --> "8".
other_char_var --> "9".
other_char_var --> "_".
a621 --> other_char_var.
a631 --> other_char_var.
a641 --> other_char_var.
variable_names_without_comma_rec --> variable_name , a651.
a651 --> separator , variable_names_without_comma.
variable_only_no_bracket --> variable_single , a661.
variable_only_no_bracket --> first_char_var , any_other_char_var.
variable_only_no_bracket --> "_".
variable_only_no_bracket --> "a".
variable_only_no_bracket --> "b".
variable_only_no_bracket --> "c".
variable_only_no_bracket --> "d".
variable_only_no_bracket --> "e".
variable_only_no_bracket --> "f".
variable_only_no_bracket --> "g".
variable_only_no_bracket --> "h".
variable_only_no_bracket --> "i".
variable_only_no_bracket --> "j".
variable_only_no_bracket --> "k".
variable_only_no_bracket --> "l".
variable_only_no_bracket --> "m".
variable_only_no_bracket --> "n".
variable_only_no_bracket --> "o".
variable_only_no_bracket --> "p".
variable_only_no_bracket --> "q".
variable_only_no_bracket --> "r".
variable_only_no_bracket --> "s".
variable_only_no_bracket --> "t".
variable_only_no_bracket --> "u".
variable_only_no_bracket --> "v".
variable_only_no_bracket --> "w".
variable_only_no_bracket --> "x".
variable_only_no_bracket --> "y".
variable_only_no_bracket --> "z".
variable_only_no_bracket --> "A".
variable_only_no_bracket --> "B".
variable_only_no_bracket --> "C".
variable_only_no_bracket --> "D".
variable_only_no_bracket --> "E".
variable_only_no_bracket --> "F".
variable_only_no_bracket --> "G".
variable_only_no_bracket --> "H".
variable_only_no_bracket --> "I".
variable_only_no_bracket --> "J".
variable_only_no_bracket --> "K".
variable_only_no_bracket --> "L".
variable_only_no_bracket --> "M".
variable_only_no_bracket --> "N".
variable_only_no_bracket --> "O".
variable_only_no_bracket --> "P".
variable_only_no_bracket --> "Q".
variable_only_no_bracket --> "R".
variable_only_no_bracket --> "S".
variable_only_no_bracket --> "T".
variable_only_no_bracket --> "U".
variable_only_no_bracket --> "V".
variable_only_no_bracket --> "W".
variable_only_no_bracket --> "X".
variable_only_no_bracket --> "Y".
variable_only_no_bracket --> "Z".
a661 --> dot , a662.
a662 --> variable.
variable_only --> open_bracket , a671.
variable_only --> variable_single , a661.
variable_only --> first_char_var , any_other_char_var.
variable_only --> "_".
variable_only --> "a".
variable_only --> "b".
variable_only --> "c".
variable_only --> "d".
variable_only --> "e".
variable_only --> "f".
variable_only --> "g".
variable_only --> "h".
variable_only --> "i".
variable_only --> "j".
variable_only --> "k".
variable_only --> "l".
variable_only --> "m".
variable_only --> "n".
variable_only --> "o".
variable_only --> "p".
variable_only --> "q".
variable_only --> "r".
variable_only --> "s".
variable_only --> "t".
variable_only --> "u".
variable_only --> "v".
variable_only --> "w".
variable_only --> "x".
variable_only --> "y".
variable_only --> "z".
variable_only --> "A".
variable_only --> "B".
variable_only --> "C".
variable_only --> "D".
variable_only --> "E".
variable_only --> "F".
variable_only --> "G".
variable_only --> "H".
variable_only --> "I".
variable_only --> "J".
variable_only --> "K".
variable_only --> "L".
variable_only --> "M".
variable_only --> "N".
variable_only --> "O".
variable_only --> "P".
variable_only --> "Q".
variable_only --> "R".
variable_only --> "S".
variable_only --> "T".
variable_only --> "U".
variable_only --> "V".
variable_only --> "W".
variable_only --> "X".
variable_only --> "Y".
variable_only --> "Z".
a671 --> variable_only_no_bracket , a672.
a672 --> close_bracket.
variable_body_no_bracket_01 --> variable_elmt , a681.
variable_body_no_bracket_01 --> open_bracket , a671.
variable_body_no_bracket_01 --> variable_single , a661.
variable_body_no_bracket_01 --> first_char_var , any_other_char_var.
variable_body_no_bracket_01 --> "_".
variable_body_no_bracket_01 --> "a".
variable_body_no_bracket_01 --> "b".
variable_body_no_bracket_01 --> "c".
variable_body_no_bracket_01 --> "d".
variable_body_no_bracket_01 --> "e".
variable_body_no_bracket_01 --> "f".
variable_body_no_bracket_01 --> "g".
variable_body_no_bracket_01 --> "h".
variable_body_no_bracket_01 --> "i".
variable_body_no_bracket_01 --> "j".
variable_body_no_bracket_01 --> "k".
variable_body_no_bracket_01 --> "l".
variable_body_no_bracket_01 --> "m".
variable_body_no_bracket_01 --> "n".
variable_body_no_bracket_01 --> "o".
variable_body_no_bracket_01 --> "p".
variable_body_no_bracket_01 --> "q".
variable_body_no_bracket_01 --> "r".
variable_body_no_bracket_01 --> "s".
variable_body_no_bracket_01 --> "t".
variable_body_no_bracket_01 --> "u".
variable_body_no_bracket_01 --> "v".
variable_body_no_bracket_01 --> "w".
variable_body_no_bracket_01 --> "x".
variable_body_no_bracket_01 --> "y".
variable_body_no_bracket_01 --> "z".
variable_body_no_bracket_01 --> "A".
variable_body_no_bracket_01 --> "B".
variable_body_no_bracket_01 --> "C".
variable_body_no_bracket_01 --> "D".
variable_body_no_bracket_01 --> "E".
variable_body_no_bracket_01 --> "F".
variable_body_no_bracket_01 --> "G".
variable_body_no_bracket_01 --> "H".
variable_body_no_bracket_01 --> "I".
variable_body_no_bracket_01 --> "J".
variable_body_no_bracket_01 --> "K".
variable_body_no_bracket_01 --> "L".
variable_body_no_bracket_01 --> "M".
variable_body_no_bracket_01 --> "N".
variable_body_no_bracket_01 --> "O".
variable_body_no_bracket_01 --> "P".
variable_body_no_bracket_01 --> "Q".
variable_body_no_bracket_01 --> "R".
variable_body_no_bracket_01 --> "S".
variable_body_no_bracket_01 --> "T".
variable_body_no_bracket_01 --> "U".
variable_body_no_bracket_01 --> "V".
variable_body_no_bracket_01 --> "W".
variable_body_no_bracket_01 --> "X".
variable_body_no_bracket_01 --> "Y".
variable_body_no_bracket_01 --> "Z".
a681 --> expr_op_infix , a682.
a682 --> variable_body.
variable_body --> open_bracket , a691.
variable_body --> expr_prefix , variable_body_no_bracket_01.
variable_body --> variable_elmt , a681.
variable_body --> open_bracket , a671.
variable_body --> variable_single , a661.
variable_body --> first_char_var , any_other_char_var.
variable_body --> "_".
variable_body --> "a".
variable_body --> "b".
variable_body --> "c".
variable_body --> "d".
variable_body --> "e".
variable_body --> "f".
variable_body --> "g".
variable_body --> "h".
variable_body --> "i".
variable_body --> "j".
variable_body --> "k".
variable_body --> "l".
variable_body --> "m".
variable_body --> "n".
variable_body --> "o".
variable_body --> "p".
variable_body --> "q".
variable_body --> "r".
variable_body --> "s".
variable_body --> "t".
variable_body --> "u".
variable_body --> "v".
variable_body --> "w".
variable_body --> "x".
variable_body --> "y".
variable_body --> "z".
variable_body --> "A".
variable_body --> "B".
variable_body --> "C".
variable_body --> "D".
variable_body --> "E".
variable_body --> "F".
variable_body --> "G".
variable_body --> "H".
variable_body --> "I".
variable_body --> "J".
variable_body --> "K".
variable_body --> "L".
variable_body --> "M".
variable_body --> "N".
variable_body --> "O".
variable_body --> "P".
variable_body --> "Q".
variable_body --> "R".
variable_body --> "S".
variable_body --> "T".
variable_body --> "U".
variable_body --> "V".
variable_body --> "W".
variable_body --> "X".
variable_body --> "Y".
variable_body --> "Z".
a691 --> variable_body_no_bracket , a692.
a692 --> close_bracket.
variable_prefix_01 --> char_not , a701.
a701 --> blank.
variable --> variable_prefix , a711.
a711 --> variable_body , a712.
variables_rec --> variable , a721.
a721 --> separator , variables_without_comma.
char_False --> char_F , char_alse.
char_alse --> char_a , char_lse.
char_lse --> char_l , char_se.
char_se --> char_s , char_e.
char_class --> char_c , char_lass.
char_lass --> char_l , char_ass.
char_ass --> char_a , char_ss.
char_ss --> char_s , char_s.
char_finally --> char_f , char_inally.
char_inally --> char_i , char_nally.
char_nally --> char_n , char_ally.
char_ally --> char_a , char_lly.
char_lly --> char_l , char_ly.
char_ly --> char_l , char_y.
char_is --> char_i , char_s.
char_return --> char_r , char_eturn.
char_eturn --> char_e , char_turn.
char_turn --> char_t , char_urn.
char_urn --> char_u , char_rn.
char_rn --> char_r , char_n.
char_None --> char_N , char_one.
char_one --> char_o , char_ne.
char_ne --> char_n , char_e.
char_continue --> char_c , char_ontinue.
char_ontinue --> char_o , char_ntinue.
char_ntinue --> char_n , char_tinue.
char_tinue --> char_t , char_inue.
char_inue --> char_i , char_nue.
char_nue --> char_n , char_ue.
char_ue --> char_u , char_e.
char_for --> char_f , char_or.
char_or --> char_o , char_r.
char_lambda --> char_l , char_ambda.
char_ambda --> char_a , char_mbda.
char_mbda --> char_m , char_bda.
char_bda --> char_b , char_da.
char_da --> char_d , char_a.
char_try --> char_t , char_ry.
char_ry --> char_r , char_y.
char_True --> char_T , char_rue.
char_rue --> char_r , char_ue.
char_def --> char_d , char_ef.
char_ef --> char_e , char_f.
char_from --> char_f , char_rom.
char_rom --> char_r , char_om.
char_om --> char_o , char_m.
char_nonlocal --> char_n , char_onlocal.
char_onlocal --> char_o , char_nlocal.
char_nlocal --> char_n , char_local.
char_local --> char_l , char_ocal.
char_ocal --> char_o , char_cal.
char_cal --> char_c , char_al.
char_al --> char_a , char_l.
char_while --> char_w , char_hile.
char_hile --> char_h , char_ile.
char_ile --> char_i , char_le.
char_le --> char_l , char_e.
char_and --> char_a , char_nd.
char_nd --> char_n , char_d.
char_del --> char_d , char_el.
char_el --> char_e , char_l.
char_global --> char_g , char_lobal.
char_lobal --> char_l , char_obal.
char_obal --> char_o , char_bal.
char_bal --> char_b , char_al.
char_not --> char_n , char_ot.
char_ot --> char_o , char_t.
char_with --> char_w , char_ith.
char_ith --> char_i , char_th.
char_th --> char_t , char_h.
char_as --> char_a , char_s.
char_elif --> char_e , char_lif.
char_lif --> char_l , char_if.
char_if --> char_i , char_f.
char_yield --> char_y , char_ield.
char_ield --> char_i , char_eld.
char_eld --> char_e , char_ld.
char_ld --> char_l , char_d.
char_assert --> char_a , char_ssert.
char_ssert --> char_s , char_sert.
char_sert --> char_s , char_ert.
char_ert --> char_e , char_rt.
char_rt --> char_r , char_t.
char_else --> char_e , char_lse.
char_import --> char_i , char_mport.
char_mport --> char_m , char_port.
char_port --> char_p , char_ort.
char_ort --> char_o , char_rt.
char_pass --> char_p , char_ass.
char_break --> char_b , char_reak.
char_reak --> char_r , char_eak.
char_eak --> char_e , char_ak.
char_ak --> char_a , char_k.
char_except --> char_e , char_xcept.
char_xcept --> char_x , char_cept.
char_cept --> char_c , char_ept.
char_ept --> char_e , char_pt.
char_pt --> char_p , char_t.
char_in --> char_i , char_n.
char_raise --> char_r , char_aise.
char_aise --> char_a , char_ise.
char_ise --> char_i , char_se.
char_not96in --> char_n , char_ot96in.
char_ot96in --> char_o , char_t96in.
char_t96in --> char_t , char_96in.
char_96in --> char_96 , char_in.
char_is96not --> char_i , char_s96not.
char_s96not --> char_s , char_96not.
char_96not --> char_96 , char_not.
char_6060 --> char_60 , char_60.
char_4361 --> char_43 , char_61.
char_4561 --> char_45 , char_61.
char_4261 --> char_42 , char_61.
char_474761 --> char_47 , char_4761.
char_4761 --> char_47 , char_61.
char_3761 --> char_37 , char_61.
char_424261 --> char_42 , char_4261.
char_606061 --> char_60 , char_6061.
char_626261 --> char_62 , char_6261.
char_6161 --> char_61 , char_61.
char_3361 --> char_33 , char_61.
char_6261 --> char_62 , char_61.
char_6061 --> char_60 , char_61.
char_4242 --> char_42 , char_42.
char_4747 --> char_47 , char_47.
char_6262 --> char_62 , char_62.
char_32 --> "`".
char_33 --> "!".
char_34 --> "\"".
char_35 --> "#".
char_36 --> "$".
char_37 --> "%".
char_38 --> "&".
char_39 --> "\'".
char_40 --> "(".
char_41 --> ")".
char_42 --> "*".
char_43 --> "+".
char_44 --> ",".
char_45 --> "-".
char_46 --> ".".
char_47 --> "/".
char_0 --> "0".
char_1 --> "1".
char_2 --> "2".
char_3 --> "3".
char_4 --> "4".
char_5 --> "5".
char_6 --> "6".
char_7 --> "7".
char_8 --> "8".
char_9 --> "9".
char_10 --> "\n".
char_58 --> ":".
char_59 --> ";".
char_60 --> "<".
char_61 --> "=".
char_62 --> ">".
char_63 --> "?".
char_64 --> "@".
char_A --> "A".
char_B --> "B".
char_C --> "C".
char_D --> "D".
char_E --> "E".
char_F --> "F".
char_G --> "G".
char_H --> "H".
char_I --> "I".
char_J --> "J".
char_K --> "K".
char_L --> "L".
char_M --> "M".
char_N --> "N".
char_O --> "O".
char_P --> "P".
char_Q --> "Q".
char_R --> "R".
char_S --> "S".
char_T --> "T".
char_U --> "U".
char_V --> "V".
char_W --> "W".
char_X --> "X".
char_Y --> "Y".
char_Z --> "Z".
char_91 --> "[".
char_92 --> "\\".
char_93 --> "]".
char_94 --> "^".
char_95 --> "_".
char_96 --> "`".
char_a --> "a".
char_b --> "b".
char_c --> "c".
char_d --> "d".
char_e --> "e".
char_f --> "f".
char_g --> "g".
char_h --> "h".
char_i --> "i".
char_j --> "j".
char_k --> "k".
char_l --> "l".
char_m --> "m".
char_n --> "n".
char_o --> "o".
char_p --> "p".
char_q --> "q".
char_r --> "r".
char_s --> "s".
char_t --> "t".
char_u --> "u".
char_v --> "v".
char_w --> "w".
char_x --> "x".
char_y --> "y".
char_z --> "z".
char_123 --> "{".
char_124 --> ";".
char_125 --> "}".
char_126 --> "~".
char_tab --> "\t".
datatype --> open_curly_bracket , a81.
datatype --> open_square_bracket , a61.
datatype --> open_curly_bracket , a51.
datatype --> open_bracket , a71.
datatype --> char_T , char_rue.
datatype --> char_F , char_alse.
datatype --> any_int , a91.
datatype --> int , a101.
datatype --> any_non_complex_number_with_op , complex_part.
datatype --> non_complex_number , char_j.
datatype --> non_complex_number , a111.
datatype --> single_quote , a201.
datatype --> double_quote , a211.
datatype --> double_quote , a221.
datatype --> single_quote , a231.
datatype --> char_N , char_one.
datatype --> char_46 , int.
datatype --> "0".
datatype --> "1".
datatype --> "2".
datatype --> "3".
datatype --> "4".
datatype --> "5".
datatype --> "6".
datatype --> "7".
datatype --> "8".
datatype --> "9".
datatype --> digit , int.
none --> char_N , char_one.
number --> any_non_complex_number_with_op , complex_part.
number --> non_complex_number , a111.
number --> char_T , char_rue.
number --> char_F , char_alse.
number --> any_int , a91.
number --> int , a101.
number --> char_46 , int.
number --> digit , int.
number --> non_complex_number , char_j.
number --> "0".
number --> "1".
number --> "2".
number --> "3".
number --> "4".
number --> "5".
number --> "6".
number --> "7".
number --> "8".
number --> "9".
digit --> "0".
digit --> "1".
digit --> "2".
digit --> "3".
digit --> "4".
digit --> "5".
digit --> "6".
digit --> "7".
digit --> "8".
digit --> "9".
int --> digit , int.
int --> "0".
int --> "1".
int --> "2".
int --> "3".
int --> "4".
int --> "5".
int --> "6".
int --> "7".
int --> "8".
int --> "9".
boolean --> char_T , char_rue.
boolean --> char_F , char_alse.
non_complex_number --> any_int , a91.
non_complex_number --> int , a101.
non_complex_number --> char_46 , int.
non_complex_number --> "0".
non_complex_number --> "1".
non_complex_number --> "2".
non_complex_number --> "3".
non_complex_number --> "4".
non_complex_number --> "5".
non_complex_number --> "6".
non_complex_number --> "7".
non_complex_number --> "8".
non_complex_number --> "9".
non_complex_number --> digit , int.
power_symbol --> "e".
power_symbol --> "E".
any_non_complex_number_with_op --> non_complex_number , complex_infix.
op_num_plus_min --> "+".
op_num_plus_min --> "-".
op_num_single --> "*".
op_num_single --> "%".
op_num_single --> "/".
op_num_single --> "+".
op_num_single --> "-".
op_num --> char_42 , char_42.
op_num --> char_47 , char_47.
op_num --> "+".
op_num --> "-".
op_num --> "*".
op_num --> "%".
op_num --> "/".
op_compare --> ">".
op_compare --> "<".
op_compare --> char_61 , char_61.
op_compare --> char_33 , char_61.
op_compare --> char_62 , char_61.
op_compare --> char_60 , char_61.
op_assignment_single --> "=".
op_assignment --> char_43 , char_61.
op_assignment --> char_45 , char_61.
op_assignment --> char_42 , char_61.
op_assignment --> char_47 , char_61.
op_assignment --> char_47 , char_4761.
op_assignment --> char_37 , char_61.
op_assignment --> char_42 , char_4261.
op_assignment --> char_60 , char_6061.
op_assignment --> char_62 , char_6261.
op_assignment --> "=".
op_bitwise_single --> "&".
op_bitwise_single --> ";".
op_bitwise_single --> "^".
op_bitwise_single --> "~".
op_bitwise --> char_60 , char_60.
op_bitwise --> char_62 , char_62.
op_bitwise --> "&".
op_bitwise --> ";".
op_bitwise --> "^".
op_bitwise --> "~".
op_logical --> char_a , char_nd.
op_logical --> char_o , char_r.
op_logical --> char_n , char_ot.
op_membership --> char_i , char_n.
op_membership --> char_n , char_ot96in.
op_identity --> char_i , char_s.
op_identity --> char_i , char_s96not.
op_prefix --> "~".
op_prefix --> "+".
op_prefix --> "-".
op_single --> ">".
op_single --> "<".
op_single --> "&".
op_single --> ";".
op_single --> "^".
op_single --> "~".
op_single --> "=".
op_single --> "+".
op_single --> "-".
op_single --> "*".
op_single --> "%".
op_single --> "/".
lowercase --> "a".
lowercase --> "b".
lowercase --> "c".
lowercase --> "d".
lowercase --> "e".
lowercase --> "f".
lowercase --> "g".
lowercase --> "h".
lowercase --> "i".
lowercase --> "j".
lowercase --> "k".
lowercase --> "l".
lowercase --> "m".
lowercase --> "n".
lowercase --> "o".
lowercase --> "p".
lowercase --> "q".
lowercase --> "r".
lowercase --> "s".
lowercase --> "t".
lowercase --> "u".
lowercase --> "v".
lowercase --> "w".
lowercase --> "x".
lowercase --> "y".
lowercase --> "z".
uppercase --> "A".
uppercase --> "B".
uppercase --> "C".
uppercase --> "D".
uppercase --> "E".
uppercase --> "F".
uppercase --> "G".
uppercase --> "H".
uppercase --> "I".
uppercase --> "J".
uppercase --> "K".
uppercase --> "L".
uppercase --> "M".
uppercase --> "N".
uppercase --> "O".
uppercase --> "P".
uppercase --> "Q".
uppercase --> "R".
uppercase --> "S".
uppercase --> "T".
uppercase --> "U".
uppercase --> "V".
uppercase --> "W".
uppercase --> "X".
uppercase --> "Y".
uppercase --> "Z".
symbol_without_underscore_and_blank --> "!".
symbol_without_underscore_and_blank --> "\"".
symbol_without_underscore_and_blank --> "#".
symbol_without_underscore_and_blank --> "$".
symbol_without_underscore_and_blank --> "%".
symbol_without_underscore_and_blank --> "&".
symbol_without_underscore_and_blank --> "\'".
symbol_without_underscore_and_blank --> "(".
symbol_without_underscore_and_blank --> ")".
symbol_without_underscore_and_blank --> "*".
symbol_without_underscore_and_blank --> "+".
symbol_without_underscore_and_blank --> ",".
symbol_without_underscore_and_blank --> "-".
symbol_without_underscore_and_blank --> ".".
symbol_without_underscore_and_blank --> "/".
symbol_without_underscore_and_blank --> ":".
symbol_without_underscore_and_blank --> ";".
symbol_without_underscore_and_blank --> "<".
symbol_without_underscore_and_blank --> "=".
symbol_without_underscore_and_blank --> ">".
symbol_without_underscore_and_blank --> "?".
symbol_without_underscore_and_blank --> "@".
symbol_without_underscore_and_blank --> "[".
symbol_without_underscore_and_blank --> "\\".
symbol_without_underscore_and_blank --> "]".
symbol_without_underscore_and_blank --> "^".
symbol_without_underscore_and_blank --> "`".
symbol_without_underscore_and_blank --> "{".
symbol_without_underscore_and_blank --> ";".
symbol_without_underscore_and_blank --> "}".
symbol_without_underscore_and_blank --> "~".
symbol_without_underscore --> "`".
symbol_without_underscore --> "!".
symbol_without_underscore --> "\"".
symbol_without_underscore --> "#".
symbol_without_underscore --> "$".
symbol_without_underscore --> "%".
symbol_without_underscore --> "&".
symbol_without_underscore --> "\'".
symbol_without_underscore --> "(".
symbol_without_underscore --> ")".
symbol_without_underscore --> "*".
symbol_without_underscore --> "+".
symbol_without_underscore --> ",".
symbol_without_underscore --> "-".
symbol_without_underscore --> ".".
symbol_without_underscore --> "/".
symbol_without_underscore --> ":".
symbol_without_underscore --> ";".
symbol_without_underscore --> "<".
symbol_without_underscore --> "=".
symbol_without_underscore --> ">".
symbol_without_underscore --> "?".
symbol_without_underscore --> "@".
symbol_without_underscore --> "[".
symbol_without_underscore --> "\\".
symbol_without_underscore --> "]".
symbol_without_underscore --> "^".
symbol_without_underscore --> "`".
symbol_without_underscore --> "{".
symbol_without_underscore --> ";".
symbol_without_underscore --> "}".
symbol_without_underscore --> "~".
symbol_without_single_quote --> "`".
symbol_without_single_quote --> "!".
symbol_without_single_quote --> "\"".
symbol_without_single_quote --> "#".
symbol_without_single_quote --> "$".
symbol_without_single_quote --> "%".
symbol_without_single_quote --> "&".
symbol_without_single_quote --> "(".
symbol_without_single_quote --> ")".
symbol_without_single_quote --> "*".
symbol_without_single_quote --> "+".
symbol_without_single_quote --> ",".
symbol_without_single_quote --> "-".
symbol_without_single_quote --> ".".
symbol_without_single_quote --> "/".
symbol_without_single_quote --> ":".
symbol_without_single_quote --> ";".
symbol_without_single_quote --> "<".
symbol_without_single_quote --> "=".
symbol_without_single_quote --> ">".
symbol_without_single_quote --> "?".
symbol_without_single_quote --> "@".
symbol_without_single_quote --> "[".
symbol_without_single_quote --> "\\".
symbol_without_single_quote --> "]".
symbol_without_single_quote --> "^".
symbol_without_single_quote --> "_".
symbol_without_single_quote --> "`".
symbol_without_single_quote --> "{".
symbol_without_single_quote --> ";".
symbol_without_single_quote --> "}".
symbol_without_single_quote --> "~".
symbol_without_single_quote --> char_92 , single_quote.
symbol_without_single_quote --> "_".
symbol_without_single_quote --> "\t".
symbol_without_double_quote --> "`".
symbol_without_double_quote --> "!".
symbol_without_double_quote --> "#".
symbol_without_double_quote --> "$".
symbol_without_double_quote --> "%".
symbol_without_double_quote --> "&".
symbol_without_double_quote --> "\'".
symbol_without_double_quote --> "(".
symbol_without_double_quote --> ")".
symbol_without_double_quote --> "*".
symbol_without_double_quote --> "+".
symbol_without_double_quote --> ",".
symbol_without_double_quote --> "-".
symbol_without_double_quote --> ".".
symbol_without_double_quote --> "/".
symbol_without_double_quote --> ":".
symbol_without_double_quote --> ";".
symbol_without_double_quote --> "<".
symbol_without_double_quote --> "=".
symbol_without_double_quote --> ">".
symbol_without_double_quote --> "?".
symbol_without_double_quote --> "@".
symbol_without_double_quote --> "[".
symbol_without_double_quote --> "\\".
symbol_without_double_quote --> "]".
symbol_without_double_quote --> "^".
symbol_without_double_quote --> "_".
symbol_without_double_quote --> "`".
symbol_without_double_quote --> "{".
symbol_without_double_quote --> ";".
symbol_without_double_quote --> "}".
symbol_without_double_quote --> "~".
symbol_without_double_quote --> char_92 , double_quote.
symbol_without_double_quote --> "_".
symbol_without_double_quote --> "\t".
enter --> "\n".
single_quote --> "\'".
double_quote --> "\"".
any_alphanumeric --> letter , a141.
any_alphanumeric --> digit , a151.
alphanumeric_underscore_new --> letter , a141.
alphanumeric_underscore_new --> digit , a151.
alphanumeric_underscore_new --> "_".
any_alphanumeric_underscore --> alphanumeric_underscore_new , any_alphanumeric_underscore.
any_alphanumeric_underscore --> letter , a141.
any_alphanumeric_underscore --> digit , a151.
any_alphanumeric_underscore --> "_".
string_body_without_single_quote --> letter , string_body_without_single_quote.
string_body_without_single_quote --> digit , string_body_without_single_quote.
string_body_without_single_quote --> symbol_without_single_quote , string_body_without_single_quote.
string_body_without_single_quote --> "0".
string_body_without_single_quote --> "1".
string_body_without_single_quote --> "2".
string_body_without_single_quote --> "3".
string_body_without_single_quote --> "4".
string_body_without_single_quote --> "5".
string_body_without_single_quote --> "6".
string_body_without_single_quote --> "7".
string_body_without_single_quote --> "8".
string_body_without_single_quote --> "9".
string_body_without_single_quote --> "`".
string_body_without_single_quote --> "!".
string_body_without_single_quote --> "\"".
string_body_without_single_quote --> "#".
string_body_without_single_quote --> "$".
string_body_without_single_quote --> "%".
string_body_without_single_quote --> "&".
string_body_without_single_quote --> "(".
string_body_without_single_quote --> ")".
string_body_without_single_quote --> "*".
string_body_without_single_quote --> "+".
string_body_without_single_quote --> ",".
string_body_without_single_quote --> "-".
string_body_without_single_quote --> ".".
string_body_without_single_quote --> "/".
string_body_without_single_quote --> ":".
string_body_without_single_quote --> ";".
string_body_without_single_quote --> "<".
string_body_without_single_quote --> "=".
string_body_without_single_quote --> ">".
string_body_without_single_quote --> "?".
string_body_without_single_quote --> "@".
string_body_without_single_quote --> "[".
string_body_without_single_quote --> "\\".
string_body_without_single_quote --> "]".
string_body_without_single_quote --> "^".
string_body_without_single_quote --> "_".
string_body_without_single_quote --> "`".
string_body_without_single_quote --> "{".
string_body_without_single_quote --> ";".
string_body_without_single_quote --> "}".
string_body_without_single_quote --> "~".
string_body_without_single_quote --> char_92 , single_quote.
string_body_without_single_quote --> "a".
string_body_without_single_quote --> "b".
string_body_without_single_quote --> "c".
string_body_without_single_quote --> "d".
string_body_without_single_quote --> "e".
string_body_without_single_quote --> "f".
string_body_without_single_quote --> "g".
string_body_without_single_quote --> "h".
string_body_without_single_quote --> "i".
string_body_without_single_quote --> "j".
string_body_without_single_quote --> "k".
string_body_without_single_quote --> "l".
string_body_without_single_quote --> "m".
string_body_without_single_quote --> "n".
string_body_without_single_quote --> "o".
string_body_without_single_quote --> "p".
string_body_without_single_quote --> "q".
string_body_without_single_quote --> "r".
string_body_without_single_quote --> "s".
string_body_without_single_quote --> "t".
string_body_without_single_quote --> "u".
string_body_without_single_quote --> "v".
string_body_without_single_quote --> "w".
string_body_without_single_quote --> "x".
string_body_without_single_quote --> "y".
string_body_without_single_quote --> "z".
string_body_without_single_quote --> "A".
string_body_without_single_quote --> "B".
string_body_without_single_quote --> "C".
string_body_without_single_quote --> "D".
string_body_without_single_quote --> "E".
string_body_without_single_quote --> "F".
string_body_without_single_quote --> "G".
string_body_without_single_quote --> "H".
string_body_without_single_quote --> "I".
string_body_without_single_quote --> "J".
string_body_without_single_quote --> "K".
string_body_without_single_quote --> "L".
string_body_without_single_quote --> "M".
string_body_without_single_quote --> "N".
string_body_without_single_quote --> "O".
string_body_without_single_quote --> "P".
string_body_without_single_quote --> "Q".
string_body_without_single_quote --> "R".
string_body_without_single_quote --> "S".
string_body_without_single_quote --> "T".
string_body_without_single_quote --> "U".
string_body_without_single_quote --> "V".
string_body_without_single_quote --> "W".
string_body_without_single_quote --> "X".
string_body_without_single_quote --> "Y".
string_body_without_single_quote --> "Z".
string_body_without_single_quote --> "_".
string_body_without_single_quote --> "\t".
string_body_without_double_quote --> letter , string_body_without_double_quote.
string_body_without_double_quote --> digit , string_body_without_double_quote.
string_body_without_double_quote --> symbol_without_double_quote , string_body_without_double_quote.
string_body_without_double_quote --> "0".
string_body_without_double_quote --> "1".
string_body_without_double_quote --> "2".
string_body_without_double_quote --> "3".
string_body_without_double_quote --> "4".
string_body_without_double_quote --> "5".
string_body_without_double_quote --> "6".
string_body_without_double_quote --> "7".
string_body_without_double_quote --> "8".
string_body_without_double_quote --> "9".
string_body_without_double_quote --> "`".
string_body_without_double_quote --> "!".
string_body_without_double_quote --> "#".
string_body_without_double_quote --> "$".
string_body_without_double_quote --> "%".
string_body_without_double_quote --> "&".
string_body_without_double_quote --> "\'".
string_body_without_double_quote --> "(".
string_body_without_double_quote --> ")".
string_body_without_double_quote --> "*".
string_body_without_double_quote --> "+".
string_body_without_double_quote --> ",".
string_body_without_double_quote --> "-".
string_body_without_double_quote --> ".".
string_body_without_double_quote --> "/".
string_body_without_double_quote --> ":".
string_body_without_double_quote --> ";".
string_body_without_double_quote --> "<".
string_body_without_double_quote --> "=".
string_body_without_double_quote --> ">".
string_body_without_double_quote --> "?".
string_body_without_double_quote --> "@".
string_body_without_double_quote --> "[".
string_body_without_double_quote --> "\\".
string_body_without_double_quote --> "]".
string_body_without_double_quote --> "^".
string_body_without_double_quote --> "_".
string_body_without_double_quote --> "`".
string_body_without_double_quote --> "{".
string_body_without_double_quote --> ";".
string_body_without_double_quote --> "}".
string_body_without_double_quote --> "~".
string_body_without_double_quote --> char_92 , double_quote.
string_body_without_double_quote --> "a".
string_body_without_double_quote --> "b".
string_body_without_double_quote --> "c".
string_body_without_double_quote --> "d".
string_body_without_double_quote --> "e".
string_body_without_double_quote --> "f".
string_body_without_double_quote --> "g".
string_body_without_double_quote --> "h".
string_body_without_double_quote --> "i".
string_body_without_double_quote --> "j".
string_body_without_double_quote --> "k".
string_body_without_double_quote --> "l".
string_body_without_double_quote --> "m".
string_body_without_double_quote --> "n".
string_body_without_double_quote --> "o".
string_body_without_double_quote --> "p".
string_body_without_double_quote --> "q".
string_body_without_double_quote --> "r".
string_body_without_double_quote --> "s".
string_body_without_double_quote --> "t".
string_body_without_double_quote --> "u".
string_body_without_double_quote --> "v".
string_body_without_double_quote --> "w".
string_body_without_double_quote --> "x".
string_body_without_double_quote --> "y".
string_body_without_double_quote --> "z".
string_body_without_double_quote --> "A".
string_body_without_double_quote --> "B".
string_body_without_double_quote --> "C".
string_body_without_double_quote --> "D".
string_body_without_double_quote --> "E".
string_body_without_double_quote --> "F".
string_body_without_double_quote --> "G".
string_body_without_double_quote --> "H".
string_body_without_double_quote --> "I".
string_body_without_double_quote --> "J".
string_body_without_double_quote --> "K".
string_body_without_double_quote --> "L".
string_body_without_double_quote --> "M".
string_body_without_double_quote --> "N".
string_body_without_double_quote --> "O".
string_body_without_double_quote --> "P".
string_body_without_double_quote --> "Q".
string_body_without_double_quote --> "R".
string_body_without_double_quote --> "S".
string_body_without_double_quote --> "T".
string_body_without_double_quote --> "U".
string_body_without_double_quote --> "V".
string_body_without_double_quote --> "W".
string_body_without_double_quote --> "X".
string_body_without_double_quote --> "Y".
string_body_without_double_quote --> "Z".
string_body_without_double_quote --> "_".
string_body_without_double_quote --> "\t".
string_body_multi_body_without_double_quote --> string_multi_body_without_double_quote , string_body_multi_body_without_double_quote.
string_body_multi_body_without_double_quote --> double_quote , a161.
string_body_multi_body_without_double_quote --> double_quote , a171.
string_body_multi_body_without_double_quote --> "`".
string_body_multi_body_without_double_quote --> "!".
string_body_multi_body_without_double_quote --> "#".
string_body_multi_body_without_double_quote --> "$".
string_body_multi_body_without_double_quote --> "%".
string_body_multi_body_without_double_quote --> "&".
string_body_multi_body_without_double_quote --> "\'".
string_body_multi_body_without_double_quote --> "(".
string_body_multi_body_without_double_quote --> ")".
string_body_multi_body_without_double_quote --> "*".
string_body_multi_body_without_double_quote --> "+".
string_body_multi_body_without_double_quote --> ",".
string_body_multi_body_without_double_quote --> "-".
string_body_multi_body_without_double_quote --> ".".
string_body_multi_body_without_double_quote --> "/".
string_body_multi_body_without_double_quote --> ":".
string_body_multi_body_without_double_quote --> ";".
string_body_multi_body_without_double_quote --> "<".
string_body_multi_body_without_double_quote --> "=".
string_body_multi_body_without_double_quote --> ">".
string_body_multi_body_without_double_quote --> "?".
string_body_multi_body_without_double_quote --> "@".
string_body_multi_body_without_double_quote --> "[".
string_body_multi_body_without_double_quote --> "\\".
string_body_multi_body_without_double_quote --> "]".
string_body_multi_body_without_double_quote --> "^".
string_body_multi_body_without_double_quote --> "_".
string_body_multi_body_without_double_quote --> "`".
string_body_multi_body_without_double_quote --> "{".
string_body_multi_body_without_double_quote --> ";".
string_body_multi_body_without_double_quote --> "}".
string_body_multi_body_without_double_quote --> "~".
string_body_multi_body_without_double_quote --> char_92 , double_quote.
string_body_multi_body_without_double_quote --> "_".
string_body_multi_body_without_double_quote --> "\t".
string_body_multi_body_without_double_quote --> "0".
string_body_multi_body_without_double_quote --> "1".
string_body_multi_body_without_double_quote --> "2".
string_body_multi_body_without_double_quote --> "3".
string_body_multi_body_without_double_quote --> "4".
string_body_multi_body_without_double_quote --> "5".
string_body_multi_body_without_double_quote --> "6".
string_body_multi_body_without_double_quote --> "7".
string_body_multi_body_without_double_quote --> "8".
string_body_multi_body_without_double_quote --> "9".
string_body_multi_body_without_double_quote --> "a".
string_body_multi_body_without_double_quote --> "b".
string_body_multi_body_without_double_quote --> "c".
string_body_multi_body_without_double_quote --> "d".
string_body_multi_body_without_double_quote --> "e".
string_body_multi_body_without_double_quote --> "f".
string_body_multi_body_without_double_quote --> "g".
string_body_multi_body_without_double_quote --> "h".
string_body_multi_body_without_double_quote --> "i".
string_body_multi_body_without_double_quote --> "j".
string_body_multi_body_without_double_quote --> "k".
string_body_multi_body_without_double_quote --> "l".
string_body_multi_body_without_double_quote --> "m".
string_body_multi_body_without_double_quote --> "n".
string_body_multi_body_without_double_quote --> "o".
string_body_multi_body_without_double_quote --> "p".
string_body_multi_body_without_double_quote --> "q".
string_body_multi_body_without_double_quote --> "r".
string_body_multi_body_without_double_quote --> "s".
string_body_multi_body_without_double_quote --> "t".
string_body_multi_body_without_double_quote --> "u".
string_body_multi_body_without_double_quote --> "v".
string_body_multi_body_without_double_quote --> "w".
string_body_multi_body_without_double_quote --> "x".
string_body_multi_body_without_double_quote --> "y".
string_body_multi_body_without_double_quote --> "z".
string_body_multi_body_without_double_quote --> "A".
string_body_multi_body_without_double_quote --> "B".
string_body_multi_body_without_double_quote --> "C".
string_body_multi_body_without_double_quote --> "D".
string_body_multi_body_without_double_quote --> "E".
string_body_multi_body_without_double_quote --> "F".
string_body_multi_body_without_double_quote --> "G".
string_body_multi_body_without_double_quote --> "H".
string_body_multi_body_without_double_quote --> "I".
string_body_multi_body_without_double_quote --> "J".
string_body_multi_body_without_double_quote --> "K".
string_body_multi_body_without_double_quote --> "L".
string_body_multi_body_without_double_quote --> "M".
string_body_multi_body_without_double_quote --> "N".
string_body_multi_body_without_double_quote --> "O".
string_body_multi_body_without_double_quote --> "P".
string_body_multi_body_without_double_quote --> "Q".
string_body_multi_body_without_double_quote --> "R".
string_body_multi_body_without_double_quote --> "S".
string_body_multi_body_without_double_quote --> "T".
string_body_multi_body_without_double_quote --> "U".
string_body_multi_body_without_double_quote --> "V".
string_body_multi_body_without_double_quote --> "W".
string_body_multi_body_without_double_quote --> "X".
string_body_multi_body_without_double_quote --> "Y".
string_body_multi_body_without_double_quote --> "Z".
string_body_multi_body_without_double_quote --> "\n".
string_body_multi_body_without_single_quote --> string_multi_body_without_single_quote , string_body_multi_body_without_single_quote.
string_body_multi_body_without_single_quote --> single_quote , a181.
string_body_multi_body_without_single_quote --> single_quote , a191.
string_body_multi_body_without_single_quote --> "`".
string_body_multi_body_without_single_quote --> "!".
string_body_multi_body_without_single_quote --> "\"".
string_body_multi_body_without_single_quote --> "#".
string_body_multi_body_without_single_quote --> "$".
string_body_multi_body_without_single_quote --> "%".
string_body_multi_body_without_single_quote --> "&".
string_body_multi_body_without_single_quote --> "(".
string_body_multi_body_without_single_quote --> ")".
string_body_multi_body_without_single_quote --> "*".
string_body_multi_body_without_single_quote --> "+".
string_body_multi_body_without_single_quote --> ",".
string_body_multi_body_without_single_quote --> "-".
string_body_multi_body_without_single_quote --> ".".
string_body_multi_body_without_single_quote --> "/".
string_body_multi_body_without_single_quote --> ":".
string_body_multi_body_without_single_quote --> ";".
string_body_multi_body_without_single_quote --> "<".
string_body_multi_body_without_single_quote --> "=".
string_body_multi_body_without_single_quote --> ">".
string_body_multi_body_without_single_quote --> "?".
string_body_multi_body_without_single_quote --> "@".
string_body_multi_body_without_single_quote --> "[".
string_body_multi_body_without_single_quote --> "\\".
string_body_multi_body_without_single_quote --> "]".
string_body_multi_body_without_single_quote --> "^".
string_body_multi_body_without_single_quote --> "_".
string_body_multi_body_without_single_quote --> "`".
string_body_multi_body_without_single_quote --> "{".
string_body_multi_body_without_single_quote --> ";".
string_body_multi_body_without_single_quote --> "}".
string_body_multi_body_without_single_quote --> "~".
string_body_multi_body_without_single_quote --> char_92 , single_quote.
string_body_multi_body_without_single_quote --> "_".
string_body_multi_body_without_single_quote --> "\t".
string_body_multi_body_without_single_quote --> "0".
string_body_multi_body_without_single_quote --> "1".
string_body_multi_body_without_single_quote --> "2".
string_body_multi_body_without_single_quote --> "3".
string_body_multi_body_without_single_quote --> "4".
string_body_multi_body_without_single_quote --> "5".
string_body_multi_body_without_single_quote --> "6".
string_body_multi_body_without_single_quote --> "7".
string_body_multi_body_without_single_quote --> "8".
string_body_multi_body_without_single_quote --> "9".
string_body_multi_body_without_single_quote --> "a".
string_body_multi_body_without_single_quote --> "b".
string_body_multi_body_without_single_quote --> "c".
string_body_multi_body_without_single_quote --> "d".
string_body_multi_body_without_single_quote --> "e".
string_body_multi_body_without_single_quote --> "f".
string_body_multi_body_without_single_quote --> "g".
string_body_multi_body_without_single_quote --> "h".
string_body_multi_body_without_single_quote --> "i".
string_body_multi_body_without_single_quote --> "j".
string_body_multi_body_without_single_quote --> "k".
string_body_multi_body_without_single_quote --> "l".
string_body_multi_body_without_single_quote --> "m".
string_body_multi_body_without_single_quote --> "n".
string_body_multi_body_without_single_quote --> "o".
string_body_multi_body_without_single_quote --> "p".
string_body_multi_body_without_single_quote --> "q".
string_body_multi_body_without_single_quote --> "r".
string_body_multi_body_without_single_quote --> "s".
string_body_multi_body_without_single_quote --> "t".
string_body_multi_body_without_single_quote --> "u".
string_body_multi_body_without_single_quote --> "v".
string_body_multi_body_without_single_quote --> "w".
string_body_multi_body_without_single_quote --> "x".
string_body_multi_body_without_single_quote --> "y".
string_body_multi_body_without_single_quote --> "z".
string_body_multi_body_without_single_quote --> "A".
string_body_multi_body_without_single_quote --> "B".
string_body_multi_body_without_single_quote --> "C".
string_body_multi_body_without_single_quote --> "D".
string_body_multi_body_without_single_quote --> "E".
string_body_multi_body_without_single_quote --> "F".
string_body_multi_body_without_single_quote --> "G".
string_body_multi_body_without_single_quote --> "H".
string_body_multi_body_without_single_quote --> "I".
string_body_multi_body_without_single_quote --> "J".
string_body_multi_body_without_single_quote --> "K".
string_body_multi_body_without_single_quote --> "L".
string_body_multi_body_without_single_quote --> "M".
string_body_multi_body_without_single_quote --> "N".
string_body_multi_body_without_single_quote --> "O".
string_body_multi_body_without_single_quote --> "P".
string_body_multi_body_without_single_quote --> "Q".
string_body_multi_body_without_single_quote --> "R".
string_body_multi_body_without_single_quote --> "S".
string_body_multi_body_without_single_quote --> "T".
string_body_multi_body_without_single_quote --> "U".
string_body_multi_body_without_single_quote --> "V".
string_body_multi_body_without_single_quote --> "W".
string_body_multi_body_without_single_quote --> "X".
string_body_multi_body_without_single_quote --> "Y".
string_body_multi_body_without_single_quote --> "Z".
string_body_multi_body_without_single_quote --> "\n".
string --> single_quote , a201.
string --> double_quote , a211.
string --> double_quote , a221.
string --> single_quote , a231.
blank --> "`".
tab --> "\t".
blanks_tab --> tab , blanks.
blanks_tab --> "\t".
blanks_blank --> blank , blanks.
blanks_blank --> "`".
tabs --> tab , tabs.
tabs --> "\t".
underscore --> "_".
underscores --> underscore , underscores.
underscores --> "_".
maybe_empty_line --> any_blanks , a251.
maybe_empty_line --> tab , tabs.
maybe_empty_line --> any_comment , newline.
maybe_empty_line --> any_blanks , a241.
maybe_empty_line --> "\t".
maybe_empty_line --> newline_only , maybe_empty_line.
comma --> ",".
dot --> ".".
keywords --> char_F , char_alse.
keywords --> char_c , char_lass.
keywords --> char_f , char_inally.
keywords --> char_i , char_s.
keywords --> char_r , char_eturn.
keywords --> char_N , char_one.
keywords --> char_c , char_ontinue.
keywords --> char_f , char_or.
keywords --> char_l , char_ambda.
keywords --> char_t , char_ry.
keywords --> char_T , char_rue.
keywords --> char_d , char_ef.
keywords --> char_f , char_rom.
keywords --> char_n , char_onlocal.
keywords --> char_w , char_hile.
keywords --> char_a , char_nd.
keywords --> char_d , char_el.
keywords --> char_g , char_lobal.
keywords --> char_n , char_ot.
keywords --> char_w , char_ith.
keywords --> char_a , char_s.
keywords --> char_e , char_lif.
keywords --> char_i , char_f.
keywords --> char_o , char_r.
keywords --> char_y , char_ield.
keywords --> char_a , char_ssert.
keywords --> char_e , char_lse.
keywords --> char_i , char_mport.
keywords --> char_p , char_ass.
keywords --> char_b , char_reak.
keywords --> char_e , char_xcept.
keywords --> char_i , char_n.
keywords --> char_r , char_aise.
statement --> statement_single , statement.
statement --> any_blanks , a251.
statement --> any_comment , newline.
statement --> any_tabs , statement_elmt.
statement --> simple_stmt , a281.
statement --> any_blanks , a241.
statement --> newline_only , maybe_empty_line.
statement --> if_only , a311.
statement --> char_while , a321.
statement --> char_for , a331.
statement --> char_with , a371.
statement --> char_def , a521.
statement --> char_class , a291.
block_statement --> any_blanks , statement_elmt.
block_statement --> newline , statement.
block_statement --> simple_stmt , a281.
block_statement --> if_only , a311.
block_statement --> char_while , a321.
block_statement --> char_for , a331.
block_statement --> char_with , a371.
block_statement --> char_def , a521.
block_statement --> char_class , a291.
compound_stmt --> if_only , a311.
compound_stmt --> char_while , a321.
compound_stmt --> char_for , a331.
compound_stmt --> char_with , a371.
compound_stmt --> char_def , a521.
compound_stmt --> char_class , a291.
simple_stmt --> char_return , return_body.
simple_stmt --> maybe_expr_before , a441.
simple_stmt --> import_only , import_alias_body.
simple_stmt --> char_import , import_only_body.
simple_stmt --> char_from , import_with_from_body_full.
simple_stmt --> char_p , char_ass.
simple_stmt --> char_b , char_reak.
simple_stmt --> char_c , char_ontinue.
simple_stmt --> variable_names , a491.
simple_stmt --> variable_names , a481.
simple_stmt --> expr_01 , a442.
simple_stmt --> expr_02 , a443.
statement_single --> any_blanks , a251.
statement_single --> any_tabs , statement_elmt.
statement_single --> any_comment , newline.
statement_single --> any_blanks , a241.
statement_single --> simple_stmt , a281.
statement_single --> newline_only , maybe_empty_line.
statement_single --> if_only , a311.
statement_single --> char_while , a321.
statement_single --> char_for , a331.
statement_single --> char_with , a371.
statement_single --> char_def , a521.
statement_single --> char_class , a291.
maybe_else --> char_else , block.
any_elif --> elif_only , any_elif.
any_elif --> char_el , if_only.
pass --> char_p , char_ass.
break --> char_b , char_reak.
continue --> char_c , char_ontinue.
with_items --> expr , a351.
with_items --> with_item , a361.
args_element --> variable_prefix , a711.
args_element --> maybe_expr_before , a441.
args_element --> variable_names , a491.
args_element --> expr_01 , a442.
args_element --> expr_02 , a443.
args_ins --> args_element , a381.
args_ins --> variable_prefix , a711.
args_ins --> maybe_expr_before , a441.
args_ins --> expr_01 , a442.
args_ins --> variable_names , a491.
args_ins --> expr_02 , a443.
any_args --> open_bracket , a391.
comment_body --> comment_elmt , comment_body.
comment_body --> "0".
comment_body --> "1".
comment_body --> "2".
comment_body --> "3".
comment_body --> "4".
comment_body --> "5".
comment_body --> "6".
comment_body --> "7".
comment_body --> "8".
comment_body --> "9".
comment_body --> "\t".
comment_body --> "a".
comment_body --> "b".
comment_body --> "c".
comment_body --> "d".
comment_body --> "e".
comment_body --> "f".
comment_body --> "g".
comment_body --> "h".
comment_body --> "i".
comment_body --> "j".
comment_body --> "k".
comment_body --> "l".
comment_body --> "m".
comment_body --> "n".
comment_body --> "o".
comment_body --> "p".
comment_body --> "q".
comment_body --> "r".
comment_body --> "s".
comment_body --> "t".
comment_body --> "u".
comment_body --> "v".
comment_body --> "w".
comment_body --> "x".
comment_body --> "y".
comment_body --> "z".
comment_body --> "A".
comment_body --> "B".
comment_body --> "C".
comment_body --> "D".
comment_body --> "E".
comment_body --> "F".
comment_body --> "G".
comment_body --> "H".
comment_body --> "I".
comment_body --> "J".
comment_body --> "K".
comment_body --> "L".
comment_body --> "M".
comment_body --> "N".
comment_body --> "O".
comment_body --> "P".
comment_body --> "Q".
comment_body --> "R".
comment_body --> "S".
comment_body --> "T".
comment_body --> "U".
comment_body --> "V".
comment_body --> "W".
comment_body --> "X".
comment_body --> "Y".
comment_body --> "Z".
comment_body --> "!".
comment_body --> "\"".
comment_body --> "#".
comment_body --> "$".
comment_body --> "%".
comment_body --> "&".
comment_body --> "\'".
comment_body --> "(".
comment_body --> ")".
comment_body --> "*".
comment_body --> "+".
comment_body --> ",".
comment_body --> "-".
comment_body --> ".".
comment_body --> "/".
comment_body --> ":".
comment_body --> ";".
comment_body --> "<".
comment_body --> "=".
comment_body --> ">".
comment_body --> "?".
comment_body --> "@".
comment_body --> "[".
comment_body --> "\\".
comment_body --> "]".
comment_body --> "^".
comment_body --> "`".
comment_body --> "{".
comment_body --> ";".
comment_body --> "}".
comment_body --> "~".
comment_body --> "`".
comment_body --> "_".
any_comment --> char_35 , a401.
expr_elmt --> variable_prefix , a711.
expr_elmt --> variable_name , a501.
expr_elmt --> any_non_complex_number_with_op , complex_part.
expr_elmt --> non_complex_number , a111.
expr_elmt --> single_quote , a201.
expr_elmt --> double_quote , a211.
expr_elmt --> double_quote , a221.
expr_elmt --> single_quote , a231.
expr_elmt --> open_curly_bracket , a81.
expr_elmt --> open_square_bracket , a61.
expr_elmt --> open_curly_bracket , a51.
expr_elmt --> open_bracket , a71.
expr_elmt --> char_N , char_one.
expr_elmt --> char_T , char_rue.
expr_elmt --> char_F , char_alse.
expr_elmt --> any_int , a91.
expr_elmt --> int , a101.
expr_elmt --> char_46 , int.
expr_elmt --> digit , int.
expr_elmt --> "0".
expr_elmt --> "1".
expr_elmt --> "2".
expr_elmt --> "3".
expr_elmt --> "4".
expr_elmt --> "5".
expr_elmt --> "6".
expr_elmt --> "7".
expr_elmt --> "8".
expr_elmt --> "9".
expr_elmt --> non_complex_number , char_j.
expr_body_02 --> expr_elmt , a411.
expr_body_02 --> variable_prefix , a711.
expr_body_02 --> variable_name , a501.
expr_body_02 --> open_curly_bracket , a81.
expr_body_02 --> open_square_bracket , a61.
expr_body_02 --> open_curly_bracket , a51.
expr_body_02 --> open_bracket , a71.
expr_body_02 --> char_T , char_rue.
expr_body_02 --> char_F , char_alse.
expr_body_02 --> any_int , a91.
expr_body_02 --> int , a101.
expr_body_02 --> char_46 , int.
expr_body_02 --> "0".
expr_body_02 --> "1".
expr_body_02 --> "2".
expr_body_02 --> "3".
expr_body_02 --> "4".
expr_body_02 --> "5".
expr_body_02 --> "6".
expr_body_02 --> "7".
expr_body_02 --> "8".
expr_body_02 --> "9".
expr_body_02 --> digit , int.
expr_body_02 --> any_non_complex_number_with_op , complex_part.
expr_body_02 --> non_complex_number , char_j.
expr_body_02 --> non_complex_number , a111.
expr_body_02 --> single_quote , a201.
expr_body_02 --> double_quote , a211.
expr_body_02 --> double_quote , a221.
expr_body_02 --> single_quote , a231.
expr_body_02 --> char_N , char_one.
expr_prefix --> op_prefix , a421.
maybe_expr_after --> expr_op_infix , expr_body.
maybe_expr_before --> expr_body , expr_op_infix.
expr_02 --> op_prefix , a421.
expr_02 --> "\t".
expr_02 --> tab , blanks.
expr_02 --> "`".
expr_02 --> blank , blanks.
assign_without_op_01 --> exprs_without_comma , a471.
assign_without_op_01 --> variable_names , a491.
assign_without_op_01 --> expr , a461.
assign_without_op_01 --> maybe_expr_before , a441.
assign_without_op_01 --> expr_01 , a442.
assign_without_op_01 --> expr_02 , a443.
assign --> variable_names , a491.
assign --> variable_names , a481.
return_body_01 --> maybe_expr_before , a441.
return_body_01 --> expr_01 , a442.
return_body_01 --> expr_02 , a443.
maybe_from_expr --> char_from , from_expr_body.
any_raise_elmt --> expr , a531.
import_with_from_elmt --> char_import , import_all_body.
import_with_from_elmt --> import_only , import_alias_body.
import_with_from_elmt --> char_import , import_only_body.
import_without_from --> import_only , import_alias_body.
import_without_from --> char_import , import_only_body.
import --> char_from , import_with_from_body_full.
import --> import_only , import_alias_body.
import --> char_import , import_only_body.
parameter_element --> variable_prefix , a711.
parameter_default --> variable_names , a491.
maybe_parameter_only --> parameter_element , a541.
maybe_parameter_only --> variable_prefix , a711.
access_array --> open_square_bracket , a601.
access_array --> access_array_single , a611.
any_hint --> colon , expr.
any_other_char_var --> letter , a621.
any_other_char_var --> digit , a631.
any_other_char_var --> underscore , a641.
any_other_char_var --> "0".
any_other_char_var --> "1".
any_other_char_var --> "2".
any_other_char_var --> "3".
any_other_char_var --> "4".
any_other_char_var --> "5".
any_other_char_var --> "6".
any_other_char_var --> "7".
any_other_char_var --> "8".
any_other_char_var --> "9".
any_other_char_var --> "_".
any_other_char_var --> "a".
any_other_char_var --> "b".
any_other_char_var --> "c".
any_other_char_var --> "d".
any_other_char_var --> "e".
any_other_char_var --> "f".
any_other_char_var --> "g".
any_other_char_var --> "h".
any_other_char_var --> "i".
any_other_char_var --> "j".
any_other_char_var --> "k".
any_other_char_var --> "l".
any_other_char_var --> "m".
any_other_char_var --> "n".
any_other_char_var --> "o".
any_other_char_var --> "p".
any_other_char_var --> "q".
any_other_char_var --> "r".
any_other_char_var --> "s".
any_other_char_var --> "t".
any_other_char_var --> "u".
any_other_char_var --> "v".
any_other_char_var --> "w".
any_other_char_var --> "x".
any_other_char_var --> "y".
any_other_char_var --> "z".
any_other_char_var --> "A".
any_other_char_var --> "B".
any_other_char_var --> "C".
any_other_char_var --> "D".
any_other_char_var --> "E".
any_other_char_var --> "F".
any_other_char_var --> "G".
any_other_char_var --> "H".
any_other_char_var --> "I".
any_other_char_var --> "J".
any_other_char_var --> "K".
any_other_char_var --> "L".
any_other_char_var --> "M".
any_other_char_var --> "N".
any_other_char_var --> "O".
any_other_char_var --> "P".
any_other_char_var --> "Q".
any_other_char_var --> "R".
any_other_char_var --> "S".
any_other_char_var --> "T".
any_other_char_var --> "U".
any_other_char_var --> "V".
any_other_char_var --> "W".
any_other_char_var --> "X".
any_other_char_var --> "Y".
any_other_char_var --> "Z".
variable_single --> first_char_var , any_other_char_var.
variable_single --> "_".
variable_single --> "a".
variable_single --> "b".
variable_single --> "c".
variable_single --> "d".
variable_single --> "e".
variable_single --> "f".
variable_single --> "g".
variable_single --> "h".
variable_single --> "i".
variable_single --> "j".
variable_single --> "k".
variable_single --> "l".
variable_single --> "m".
variable_single --> "n".
variable_single --> "o".
variable_single --> "p".
variable_single --> "q".
variable_single --> "r".
variable_single --> "s".
variable_single --> "t".
variable_single --> "u".
variable_single --> "v".
variable_single --> "w".
variable_single --> "x".
variable_single --> "y".
variable_single --> "z".
variable_single --> "A".
variable_single --> "B".
variable_single --> "C".
variable_single --> "D".
variable_single --> "E".
variable_single --> "F".
variable_single --> "G".
variable_single --> "H".
variable_single --> "I".
variable_single --> "J".
variable_single --> "K".
variable_single --> "L".
variable_single --> "M".
variable_single --> "N".
variable_single --> "O".
variable_single --> "P".
variable_single --> "Q".
variable_single --> "R".
variable_single --> "S".
variable_single --> "T".
variable_single --> "U".
variable_single --> "V".
variable_single --> "W".
variable_single --> "X".
variable_single --> "Y".
variable_single --> "Z".
variable_names_without_comma --> first_char_var , any_other_char_var.
variable_names_without_comma --> variable_name , a651.
variable_names_without_comma --> "_".
variable_names_without_comma --> "a".
variable_names_without_comma --> "b".
variable_names_without_comma --> "c".
variable_names_without_comma --> "d".
variable_names_without_comma --> "e".
variable_names_without_comma --> "f".
variable_names_without_comma --> "g".
variable_names_without_comma --> "h".
variable_names_without_comma --> "i".
variable_names_without_comma --> "j".
variable_names_without_comma --> "k".
variable_names_without_comma --> "l".
variable_names_without_comma --> "m".
variable_names_without_comma --> "n".
variable_names_without_comma --> "o".
variable_names_without_comma --> "p".
variable_names_without_comma --> "q".
variable_names_without_comma --> "r".
variable_names_without_comma --> "s".
variable_names_without_comma --> "t".
variable_names_without_comma --> "u".
variable_names_without_comma --> "v".
variable_names_without_comma --> "w".
variable_names_without_comma --> "x".
variable_names_without_comma --> "y".
variable_names_without_comma --> "z".
variable_names_without_comma --> "A".
variable_names_without_comma --> "B".
variable_names_without_comma --> "C".
variable_names_without_comma --> "D".
variable_names_without_comma --> "E".
variable_names_without_comma --> "F".
variable_names_without_comma --> "G".
variable_names_without_comma --> "H".
variable_names_without_comma --> "I".
variable_names_without_comma --> "J".
variable_names_without_comma --> "K".
variable_names_without_comma --> "L".
variable_names_without_comma --> "M".
variable_names_without_comma --> "N".
variable_names_without_comma --> "O".
variable_names_without_comma --> "P".
variable_names_without_comma --> "Q".
variable_names_without_comma --> "R".
variable_names_without_comma --> "S".
variable_names_without_comma --> "T".
variable_names_without_comma --> "U".
variable_names_without_comma --> "V".
variable_names_without_comma --> "W".
variable_names_without_comma --> "X".
variable_names_without_comma --> "Y".
variable_names_without_comma --> "Z".
maybe_comma --> any_blanks , a271.
maybe_comma --> comma , any_blanks.
maybe_comma --> ",".
variable_elmt --> open_bracket , a671.
variable_elmt --> variable_single , a661.
variable_elmt --> first_char_var , any_other_char_var.
variable_elmt --> "_".
variable_elmt --> "a".
variable_elmt --> "b".
variable_elmt --> "c".
variable_elmt --> "d".
variable_elmt --> "e".
variable_elmt --> "f".
variable_elmt --> "g".
variable_elmt --> "h".
variable_elmt --> "i".
variable_elmt --> "j".
variable_elmt --> "k".
variable_elmt --> "l".
variable_elmt --> "m".
variable_elmt --> "n".
variable_elmt --> "o".
variable_elmt --> "p".
variable_elmt --> "q".
variable_elmt --> "r".
variable_elmt --> "s".
variable_elmt --> "t".
variable_elmt --> "u".
variable_elmt --> "v".
variable_elmt --> "w".
variable_elmt --> "x".
variable_elmt --> "y".
variable_elmt --> "z".
variable_elmt --> "A".
variable_elmt --> "B".
variable_elmt --> "C".
variable_elmt --> "D".
variable_elmt --> "E".
variable_elmt --> "F".
variable_elmt --> "G".
variable_elmt --> "H".
variable_elmt --> "I".
variable_elmt --> "J".
variable_elmt --> "K".
variable_elmt --> "L".
variable_elmt --> "M".
variable_elmt --> "N".
variable_elmt --> "O".
variable_elmt --> "P".
variable_elmt --> "Q".
variable_elmt --> "R".
variable_elmt --> "S".
variable_elmt --> "T".
variable_elmt --> "U".
variable_elmt --> "V".
variable_elmt --> "W".
variable_elmt --> "X".
variable_elmt --> "Y".
variable_elmt --> "Z".
variable_prefix_02 --> op_prefix , a421.
variable_prefix_02 --> "\t".
variable_prefix_02 --> tab , blanks.
variable_prefix_02 --> "`".
variable_prefix_02 --> blank , blanks.
variables_without_comma --> variable_prefix , a711.
variables_without_comma --> variable , a721.
any_int --> "0".
any_int --> "1".
any_int --> "2".
any_int --> "3".
any_int --> "4".
any_int --> "5".
any_int --> "6".
any_int --> "7".
any_int --> "8".
any_int --> "9".
any_int --> digit , int.
any_op_num_plus_min --> "+".
any_op_num_plus_min --> "-".
op_new --> char_i , char_n.
op_new --> char_n , char_ot96in.
op_new --> char_i , char_s.
op_new --> char_i , char_s96not.
op --> "*".
op --> "%".
op --> "/".
op --> char_42 , char_42.
op --> char_47 , char_47.
op --> ">".
op --> "<".
op --> char_61 , char_61.
op --> char_33 , char_61.
op --> char_62 , char_61.
op --> char_60 , char_61.
op --> "=".
op --> char_43 , char_61.
op --> char_45 , char_61.
op --> char_42 , char_61.
op --> char_47 , char_61.
op --> char_47 , char_4761.
op --> char_37 , char_61.
op --> char_42 , char_4261.
op --> char_60 , char_6061.
op --> char_62 , char_6261.
op --> "&".
op --> ";".
op --> "^".
op --> "~".
op --> char_60 , char_60.
op --> char_62 , char_62.
op --> char_a , char_nd.
op --> char_o , char_r.
op --> char_n , char_ot.
op --> char_i , char_n.
op --> char_n , char_ot96in.
op --> char_i , char_s.
op --> char_i , char_s96not.
op --> "+".
op --> "-".
letter --> "a".
letter --> "b".
letter --> "c".
letter --> "d".
letter --> "e".
letter --> "f".
letter --> "g".
letter --> "h".
letter --> "i".
letter --> "j".
letter --> "k".
letter --> "l".
letter --> "m".
letter --> "n".
letter --> "o".
letter --> "p".
letter --> "q".
letter --> "r".
letter --> "s".
letter --> "t".
letter --> "u".
letter --> "v".
letter --> "w".
letter --> "x".
letter --> "y".
letter --> "z".
letter --> "A".
letter --> "B".
letter --> "C".
letter --> "D".
letter --> "E".
letter --> "F".
letter --> "G".
letter --> "H".
letter --> "I".
letter --> "J".
letter --> "K".
letter --> "L".
letter --> "M".
letter --> "N".
letter --> "O".
letter --> "P".
letter --> "Q".
letter --> "R".
letter --> "S".
letter --> "T".
letter --> "U".
letter --> "V".
letter --> "W".
letter --> "X".
letter --> "Y".
letter --> "Z".
symbol --> "!".
symbol --> "\"".
symbol --> "#".
symbol --> "$".
symbol --> "%".
symbol --> "&".
symbol --> "\'".
symbol --> "(".
symbol --> ")".
symbol --> "*".
symbol --> "+".
symbol --> ",".
symbol --> "-".
symbol --> ".".
symbol --> "/".
symbol --> ":".
symbol --> ";".
symbol --> "<".
symbol --> "=".
symbol --> ">".
symbol --> "?".
symbol --> "@".
symbol --> "[".
symbol --> "\\".
symbol --> "]".
symbol --> "^".
symbol --> "`".
symbol --> "{".
symbol --> ";".
symbol --> "}".
symbol --> "~".
symbol --> "`".
symbol --> "_".
string_multi_body_without_double_quote --> "`".
string_multi_body_without_double_quote --> "!".
string_multi_body_without_double_quote --> "#".
string_multi_body_without_double_quote --> "$".
string_multi_body_without_double_quote --> "%".
string_multi_body_without_double_quote --> "&".
string_multi_body_without_double_quote --> "\'".
string_multi_body_without_double_quote --> "(".
string_multi_body_without_double_quote --> ")".
string_multi_body_without_double_quote --> "*".
string_multi_body_without_double_quote --> "+".
string_multi_body_without_double_quote --> ",".
string_multi_body_without_double_quote --> "-".
string_multi_body_without_double_quote --> ".".
string_multi_body_without_double_quote --> "/".
string_multi_body_without_double_quote --> ":".
string_multi_body_without_double_quote --> ";".
string_multi_body_without_double_quote --> "<".
string_multi_body_without_double_quote --> "=".
string_multi_body_without_double_quote --> ">".
string_multi_body_without_double_quote --> "?".
string_multi_body_without_double_quote --> "@".
string_multi_body_without_double_quote --> "[".
string_multi_body_without_double_quote --> "\\".
string_multi_body_without_double_quote --> "]".
string_multi_body_without_double_quote --> "^".
string_multi_body_without_double_quote --> "_".
string_multi_body_without_double_quote --> "`".
string_multi_body_without_double_quote --> "{".
string_multi_body_without_double_quote --> ";".
string_multi_body_without_double_quote --> "}".
string_multi_body_without_double_quote --> "~".
string_multi_body_without_double_quote --> char_92 , double_quote.
string_multi_body_without_double_quote --> "_".
string_multi_body_without_double_quote --> "\t".
string_multi_body_without_double_quote --> "0".
string_multi_body_without_double_quote --> "1".
string_multi_body_without_double_quote --> "2".
string_multi_body_without_double_quote --> "3".
string_multi_body_without_double_quote --> "4".
string_multi_body_without_double_quote --> "5".
string_multi_body_without_double_quote --> "6".
string_multi_body_without_double_quote --> "7".
string_multi_body_without_double_quote --> "8".
string_multi_body_without_double_quote --> "9".
string_multi_body_without_double_quote --> "a".
string_multi_body_without_double_quote --> "b".
string_multi_body_without_double_quote --> "c".
string_multi_body_without_double_quote --> "d".
string_multi_body_without_double_quote --> "e".
string_multi_body_without_double_quote --> "f".
string_multi_body_without_double_quote --> "g".
string_multi_body_without_double_quote --> "h".
string_multi_body_without_double_quote --> "i".
string_multi_body_without_double_quote --> "j".
string_multi_body_without_double_quote --> "k".
string_multi_body_without_double_quote --> "l".
string_multi_body_without_double_quote --> "m".
string_multi_body_without_double_quote --> "n".
string_multi_body_without_double_quote --> "o".
string_multi_body_without_double_quote --> "p".
string_multi_body_without_double_quote --> "q".
string_multi_body_without_double_quote --> "r".
string_multi_body_without_double_quote --> "s".
string_multi_body_without_double_quote --> "t".
string_multi_body_without_double_quote --> "u".
string_multi_body_without_double_quote --> "v".
string_multi_body_without_double_quote --> "w".
string_multi_body_without_double_quote --> "x".
string_multi_body_without_double_quote --> "y".
string_multi_body_without_double_quote --> "z".
string_multi_body_without_double_quote --> "A".
string_multi_body_without_double_quote --> "B".
string_multi_body_without_double_quote --> "C".
string_multi_body_without_double_quote --> "D".
string_multi_body_without_double_quote --> "E".
string_multi_body_without_double_quote --> "F".
string_multi_body_without_double_quote --> "G".
string_multi_body_without_double_quote --> "H".
string_multi_body_without_double_quote --> "I".
string_multi_body_without_double_quote --> "J".
string_multi_body_without_double_quote --> "K".
string_multi_body_without_double_quote --> "L".
string_multi_body_without_double_quote --> "M".
string_multi_body_without_double_quote --> "N".
string_multi_body_without_double_quote --> "O".
string_multi_body_without_double_quote --> "P".
string_multi_body_without_double_quote --> "Q".
string_multi_body_without_double_quote --> "R".
string_multi_body_without_double_quote --> "S".
string_multi_body_without_double_quote --> "T".
string_multi_body_without_double_quote --> "U".
string_multi_body_without_double_quote --> "V".
string_multi_body_without_double_quote --> "W".
string_multi_body_without_double_quote --> "X".
string_multi_body_without_double_quote --> "Y".
string_multi_body_without_double_quote --> "Z".
string_multi_body_without_double_quote --> "\n".
string_multi_body_without_single_quote --> "`".
string_multi_body_without_single_quote --> "!".
string_multi_body_without_single_quote --> "\"".
string_multi_body_without_single_quote --> "#".
string_multi_body_without_single_quote --> "$".
string_multi_body_without_single_quote --> "%".
string_multi_body_without_single_quote --> "&".
string_multi_body_without_single_quote --> "(".
string_multi_body_without_single_quote --> ")".
string_multi_body_without_single_quote --> "*".
string_multi_body_without_single_quote --> "+".
string_multi_body_without_single_quote --> ",".
string_multi_body_without_single_quote --> "-".
string_multi_body_without_single_quote --> ".".
string_multi_body_without_single_quote --> "/".
string_multi_body_without_single_quote --> ":".
string_multi_body_without_single_quote --> ";".
string_multi_body_without_single_quote --> "<".
string_multi_body_without_single_quote --> "=".
string_multi_body_without_single_quote --> ">".
string_multi_body_without_single_quote --> "?".
string_multi_body_without_single_quote --> "@".
string_multi_body_without_single_quote --> "[".
string_multi_body_without_single_quote --> "\\".
string_multi_body_without_single_quote --> "]".
string_multi_body_without_single_quote --> "^".
string_multi_body_without_single_quote --> "_".
string_multi_body_without_single_quote --> "`".
string_multi_body_without_single_quote --> "{".
string_multi_body_without_single_quote --> ";".
string_multi_body_without_single_quote --> "}".
string_multi_body_without_single_quote --> "~".
string_multi_body_without_single_quote --> char_92 , single_quote.
string_multi_body_without_single_quote --> "_".
string_multi_body_without_single_quote --> "\t".
string_multi_body_without_single_quote --> "0".
string_multi_body_without_single_quote --> "1".
string_multi_body_without_single_quote --> "2".
string_multi_body_without_single_quote --> "3".
string_multi_body_without_single_quote --> "4".
string_multi_body_without_single_quote --> "5".
string_multi_body_without_single_quote --> "6".
string_multi_body_without_single_quote --> "7".
string_multi_body_without_single_quote --> "8".
string_multi_body_without_single_quote --> "9".
string_multi_body_without_single_quote --> "a".
string_multi_body_without_single_quote --> "b".
string_multi_body_without_single_quote --> "c".
string_multi_body_without_single_quote --> "d".
string_multi_body_without_single_quote --> "e".
string_multi_body_without_single_quote --> "f".
string_multi_body_without_single_quote --> "g".
string_multi_body_without_single_quote --> "h".
string_multi_body_without_single_quote --> "i".
string_multi_body_without_single_quote --> "j".
string_multi_body_without_single_quote --> "k".
string_multi_body_without_single_quote --> "l".
string_multi_body_without_single_quote --> "m".
string_multi_body_without_single_quote --> "n".
string_multi_body_without_single_quote --> "o".
string_multi_body_without_single_quote --> "p".
string_multi_body_without_single_quote --> "q".
string_multi_body_without_single_quote --> "r".
string_multi_body_without_single_quote --> "s".
string_multi_body_without_single_quote --> "t".
string_multi_body_without_single_quote --> "u".
string_multi_body_without_single_quote --> "v".
string_multi_body_without_single_quote --> "w".
string_multi_body_without_single_quote --> "x".
string_multi_body_without_single_quote --> "y".
string_multi_body_without_single_quote --> "z".
string_multi_body_without_single_quote --> "A".
string_multi_body_without_single_quote --> "B".
string_multi_body_without_single_quote --> "C".
string_multi_body_without_single_quote --> "D".
string_multi_body_without_single_quote --> "E".
string_multi_body_without_single_quote --> "F".
string_multi_body_without_single_quote --> "G".
string_multi_body_without_single_quote --> "H".
string_multi_body_without_single_quote --> "I".
string_multi_body_without_single_quote --> "J".
string_multi_body_without_single_quote --> "K".
string_multi_body_without_single_quote --> "L".
string_multi_body_without_single_quote --> "M".
string_multi_body_without_single_quote --> "N".
string_multi_body_without_single_quote --> "O".
string_multi_body_without_single_quote --> "P".
string_multi_body_without_single_quote --> "Q".
string_multi_body_without_single_quote --> "R".
string_multi_body_without_single_quote --> "S".
string_multi_body_without_single_quote --> "T".
string_multi_body_without_single_quote --> "U".
string_multi_body_without_single_quote --> "V".
string_multi_body_without_single_quote --> "W".
string_multi_body_without_single_quote --> "X".
string_multi_body_without_single_quote --> "Y".
string_multi_body_without_single_quote --> "Z".
string_multi_body_without_single_quote --> "\n".
blanks --> "\t".
blanks --> tab , blanks.
blanks --> "`".
blanks --> blank , blanks.
any_blanks --> tab , blanks.
any_blanks --> blank , blanks.
any_blanks --> "\t".
any_blanks --> "`".
any_tabs --> "\t".
any_tabs --> tab , tabs.
any_underscore --> "_".
any_underscore --> underscore , underscores.
any_args_ins --> variable_prefix , a711.
any_args_ins --> maybe_expr_before , a441.
any_args_ins --> variable_names , a491.
any_args_ins --> args_element , a381.
any_args_ins --> expr_01 , a442.
any_args_ins --> expr_02 , a443.
comment_elmt --> "a".
comment_elmt --> "b".
comment_elmt --> "c".
comment_elmt --> "d".
comment_elmt --> "e".
comment_elmt --> "f".
comment_elmt --> "g".
comment_elmt --> "h".
comment_elmt --> "i".
comment_elmt --> "j".
comment_elmt --> "k".
comment_elmt --> "l".
comment_elmt --> "m".
comment_elmt --> "n".
comment_elmt --> "o".
comment_elmt --> "p".
comment_elmt --> "q".
comment_elmt --> "r".
comment_elmt --> "s".
comment_elmt --> "t".
comment_elmt --> "u".
comment_elmt --> "v".
comment_elmt --> "w".
comment_elmt --> "x".
comment_elmt --> "y".
comment_elmt --> "z".
comment_elmt --> "A".
comment_elmt --> "B".
comment_elmt --> "C".
comment_elmt --> "D".
comment_elmt --> "E".
comment_elmt --> "F".
comment_elmt --> "G".
comment_elmt --> "H".
comment_elmt --> "I".
comment_elmt --> "J".
comment_elmt --> "K".
comment_elmt --> "L".
comment_elmt --> "M".
comment_elmt --> "N".
comment_elmt --> "O".
comment_elmt --> "P".
comment_elmt --> "Q".
comment_elmt --> "R".
comment_elmt --> "S".
comment_elmt --> "T".
comment_elmt --> "U".
comment_elmt --> "V".
comment_elmt --> "W".
comment_elmt --> "X".
comment_elmt --> "Y".
comment_elmt --> "Z".
comment_elmt --> "0".
comment_elmt --> "1".
comment_elmt --> "2".
comment_elmt --> "3".
comment_elmt --> "4".
comment_elmt --> "5".
comment_elmt --> "6".
comment_elmt --> "7".
comment_elmt --> "8".
comment_elmt --> "9".
comment_elmt --> "`".
comment_elmt --> "_".
comment_elmt --> "\t".
comment_elmt --> "!".
comment_elmt --> "\"".
comment_elmt --> "#".
comment_elmt --> "$".
comment_elmt --> "%".
comment_elmt --> "&".
comment_elmt --> "\'".
comment_elmt --> "(".
comment_elmt --> ")".
comment_elmt --> "*".
comment_elmt --> "+".
comment_elmt --> ",".
comment_elmt --> "-".
comment_elmt --> ".".
comment_elmt --> "/".
comment_elmt --> ":".
comment_elmt --> ";".
comment_elmt --> "<".
comment_elmt --> "=".
comment_elmt --> ">".
comment_elmt --> "?".
comment_elmt --> "@".
comment_elmt --> "[".
comment_elmt --> "\\".
comment_elmt --> "]".
comment_elmt --> "^".
comment_elmt --> "`".
comment_elmt --> "{".
comment_elmt --> ";".
comment_elmt --> "}".
comment_elmt --> "~".
any_comment_body --> comment_elmt , comment_body.
any_comment_body --> "a".
any_comment_body --> "b".
any_comment_body --> "c".
any_comment_body --> "d".
any_comment_body --> "e".
any_comment_body --> "f".
any_comment_body --> "g".
any_comment_body --> "h".
any_comment_body --> "i".
any_comment_body --> "j".
any_comment_body --> "k".
any_comment_body --> "l".
any_comment_body --> "m".
any_comment_body --> "n".
any_comment_body --> "o".
any_comment_body --> "p".
any_comment_body --> "q".
any_comment_body --> "r".
any_comment_body --> "s".
any_comment_body --> "t".
any_comment_body --> "u".
any_comment_body --> "v".
any_comment_body --> "w".
any_comment_body --> "x".
any_comment_body --> "y".
any_comment_body --> "z".
any_comment_body --> "A".
any_comment_body --> "B".
any_comment_body --> "C".
any_comment_body --> "D".
any_comment_body --> "E".
any_comment_body --> "F".
any_comment_body --> "G".
any_comment_body --> "H".
any_comment_body --> "I".
any_comment_body --> "J".
any_comment_body --> "K".
any_comment_body --> "L".
any_comment_body --> "M".
any_comment_body --> "N".
any_comment_body --> "O".
any_comment_body --> "P".
any_comment_body --> "Q".
any_comment_body --> "R".
any_comment_body --> "S".
any_comment_body --> "T".
any_comment_body --> "U".
any_comment_body --> "V".
any_comment_body --> "W".
any_comment_body --> "X".
any_comment_body --> "Y".
any_comment_body --> "Z".
any_comment_body --> "0".
any_comment_body --> "1".
any_comment_body --> "2".
any_comment_body --> "3".
any_comment_body --> "4".
any_comment_body --> "5".
any_comment_body --> "6".
any_comment_body --> "7".
any_comment_body --> "8".
any_comment_body --> "9".
any_comment_body --> "`".
any_comment_body --> "!".
any_comment_body --> "\"".
any_comment_body --> "#".
any_comment_body --> "$".
any_comment_body --> "%".
any_comment_body --> "&".
any_comment_body --> "\'".
any_comment_body --> "(".
any_comment_body --> ")".
any_comment_body --> "*".
any_comment_body --> "+".
any_comment_body --> ",".
any_comment_body --> "-".
any_comment_body --> ".".
any_comment_body --> "/".
any_comment_body --> ":".
any_comment_body --> ";".
any_comment_body --> "<".
any_comment_body --> "=".
any_comment_body --> ">".
any_comment_body --> "?".
any_comment_body --> "@".
any_comment_body --> "[".
any_comment_body --> "\\".
any_comment_body --> "]".
any_comment_body --> "^".
any_comment_body --> "`".
any_comment_body --> "{".
any_comment_body --> ";".
any_comment_body --> "}".
any_comment_body --> "~".
any_comment_body --> "_".
any_comment_body --> "\t".
end_of_variable_char_01 --> char_42 , char_42.
end_of_variable_char_01 --> char_47 , char_47.
end_of_variable_char_01 --> ">".
end_of_variable_char_01 --> "<".
end_of_variable_char_01 --> char_61 , char_61.
end_of_variable_char_01 --> char_33 , char_61.
end_of_variable_char_01 --> char_62 , char_61.
end_of_variable_char_01 --> char_60 , char_61.
end_of_variable_char_01 --> char_43 , char_61.
end_of_variable_char_01 --> char_45 , char_61.
end_of_variable_char_01 --> char_42 , char_61.
end_of_variable_char_01 --> char_47 , char_61.
end_of_variable_char_01 --> char_47 , char_4761.
end_of_variable_char_01 --> char_37 , char_61.
end_of_variable_char_01 --> char_42 , char_4261.
end_of_variable_char_01 --> char_60 , char_6061.
end_of_variable_char_01 --> char_62 , char_6261.
end_of_variable_char_01 --> char_60 , char_60.
end_of_variable_char_01 --> char_62 , char_62.
end_of_variable_char_01 --> char_a , char_nd.
end_of_variable_char_01 --> char_o , char_r.
end_of_variable_char_01 --> char_n , char_ot.
end_of_variable_char_01 --> char_i , char_n.
end_of_variable_char_01 --> char_n , char_ot96in.
end_of_variable_char_01 --> char_i , char_s.
end_of_variable_char_01 --> char_i , char_s96not.
end_of_variable_char_01 --> "!".
end_of_variable_char_01 --> "\"".
end_of_variable_char_01 --> "#".
end_of_variable_char_01 --> "$".
end_of_variable_char_01 --> "%".
end_of_variable_char_01 --> "&".
end_of_variable_char_01 --> "\'".
end_of_variable_char_01 --> "(".
end_of_variable_char_01 --> ")".
end_of_variable_char_01 --> "*".
end_of_variable_char_01 --> "+".
end_of_variable_char_01 --> ",".
end_of_variable_char_01 --> "-".
end_of_variable_char_01 --> ".".
end_of_variable_char_01 --> "/".
end_of_variable_char_01 --> ":".
end_of_variable_char_01 --> ";".
end_of_variable_char_01 --> "<".
end_of_variable_char_01 --> "=".
end_of_variable_char_01 --> ">".
end_of_variable_char_01 --> "?".
end_of_variable_char_01 --> "@".
end_of_variable_char_01 --> "[".
end_of_variable_char_01 --> "\\".
end_of_variable_char_01 --> "]".
end_of_variable_char_01 --> "^".
end_of_variable_char_01 --> "`".
end_of_variable_char_01 --> "{".
end_of_variable_char_01 --> ";".
end_of_variable_char_01 --> "}".
end_of_variable_char_01 --> "~".
end_of_variable_char_01 --> "+".
end_of_variable_char_01 --> "-".
end_of_variable_char_01 --> "*".
end_of_variable_char_01 --> "%".
end_of_variable_char_01 --> "/".
end_of_variable_char_01 --> "=".
end_of_variable_char_01 --> "&".
end_of_variable_char_01 --> ";".
end_of_variable_char_01 --> "^".
end_of_variable_char_01 --> "~".
any_access_array --> open_square_bracket , a601.
any_access_array --> access_array_single , a611.
first_char_var --> "_".
first_char_var --> "a".
first_char_var --> "b".
first_char_var --> "c".
first_char_var --> "d".
first_char_var --> "e".
first_char_var --> "f".
first_char_var --> "g".
first_char_var --> "h".
first_char_var --> "i".
first_char_var --> "j".
first_char_var --> "k".
first_char_var --> "l".
first_char_var --> "m".
first_char_var --> "n".
first_char_var --> "o".
first_char_var --> "p".
first_char_var --> "q".
first_char_var --> "r".
first_char_var --> "s".
first_char_var --> "t".
first_char_var --> "u".
first_char_var --> "v".
first_char_var --> "w".
first_char_var --> "x".
first_char_var --> "y".
first_char_var --> "z".
first_char_var --> "A".
first_char_var --> "B".
first_char_var --> "C".
first_char_var --> "D".
first_char_var --> "E".
first_char_var --> "F".
first_char_var --> "G".
first_char_var --> "H".
first_char_var --> "I".
first_char_var --> "J".
first_char_var --> "K".
first_char_var --> "L".
first_char_var --> "M".
first_char_var --> "N".
first_char_var --> "O".
first_char_var --> "P".
first_char_var --> "Q".
first_char_var --> "R".
first_char_var --> "S".
first_char_var --> "T".
first_char_var --> "U".
first_char_var --> "V".
first_char_var --> "W".
first_char_var --> "X".
first_char_var --> "Y".
first_char_var --> "Z".
