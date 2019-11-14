alphanumeric -->
    (lowercase,alphanumeric);(uppercase,alphanumeric);(digit,alphanumeric);
    ("_",alphanumeric);"_"; lowercase; uppercase; digit.

validvariable -->
    (("_";lowercase;uppercase),alphanumeric);"_";lowercase;uppercase.