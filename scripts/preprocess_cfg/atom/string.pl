lowercase -->
    char_a; char_b; char_c; char_d; char_e; char_f; char_g; char_h; char_i; char_j; char_k; char_l; char_m;
    char_n; char_o; char_p; char_q; char_r; char_s; char_t; char_u; char_v; char_w; char_x; char_y; char_z.

uppercase -->
    char_A; char_B; char_C; char_D; char_E; char_F; char_G; char_H; char_I; char_J; char_K; char_L; char_M;
    char_N; char_O; char_P; char_Q; char_R; char_S; char_T; char_U; char_V; char_W; char_X; char_Y; char_Z.

letter -->
	lowercase;uppercase.

symbol_without_underscore_and_blank -->
    char_33; char_34; char_35; char_36; char_37; char_38; char_39; char_40;
    char_41; char_42; char_43; char_44; char_45; char_46; char_47; char_58;
    char_59; char_60; char_61; char_62; char_63; char_64; char_91; char_92;
    char_93; char_94; char_96; char_123; char_124; char_125; char_126.
symbol_without_underscore -->
    symbol_without_underscore_and_blank; char_32.
symbol_without_single_quote -->
    char_32; char_33; char_34; char_35; char_36; char_37; char_38; char_40;
    char_41; char_42; char_43; char_44; char_45; char_46; char_47; char_58;
    char_59; char_60; char_61; char_62; char_63; char_64; char_91; char_92;
    char_93; char_94; char_95; char_96; char_123; char_124; char_125; char_126;
    escaped_single_quote;underscore;tab.
symbol_without_double_quote -->
    char_32; char_33; char_35; char_36; char_37; char_38; char_39; char_40;
    char_41; char_42; char_43; char_44; char_45; char_46; char_47; char_58;
    char_59; char_60; char_61; char_62; char_63; char_64; char_91; char_92;
    char_93; char_94; char_95; char_96; char_123; char_124; char_125; char_126;
    escaped_double_quote;underscore;tab.

enter -->
    char_10.
single_quote -->
    char_39.
double_quote -->
    char_34.
escaped_single_quote -->
    char_92, single_quote.
escaped_double_quote -->
    char_92, double_quote.

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
    enter.

string_body_multi_body_without_double_quote -->
    eps;
    (string_multi_body_without_double_quote, string_body_multi_body_without_double_quote);
    (double_quote,string_multi_body_without_double_quote,string_body_multi_body_without_double_quote);
    (double_quote,double_quote,string_multi_body_without_double_quote, string_body_multi_body_without_double_quote).

string_multi_body_without_single_quote -->
    symbol_without_single_quote;
    digit;
    letter;
    enter.

string_body_multi_body_without_single_quote -->
    eps;
    (string_multi_body_without_single_quote, string_body_multi_body_without_single_quote);
    (single_quote, string_multi_body_without_single_quote, string_body_multi_body_without_single_quote);
    (single_quote,single_quote, string_multi_body_without_single_quote, string_body_multi_body_without_single_quote).

string -->
	(single_quote, string_body_without_single_quote, single_quote);
    (double_quote, string_body_without_double_quote, double_quote);
    (double_quote,double_quote,double_quote, string_body_multi_body_without_double_quote, double_quote,double_quote,double_quote);
    (single_quote,single_quote,single_quote, string_body_multi_body_without_single_quote, single_quote,single_quote,single_quote).
