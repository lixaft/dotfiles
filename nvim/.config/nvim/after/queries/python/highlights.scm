; extends

; Module docstring.
(module (comment)? . (expression_statement (string) @comment))

; Class docstring.
(class_definition body: (block . (expression_statement (string) @comment)))

; Function/method docstring.
(function_definition body: (block . (expression_statement (string) @comment)))

; Attribute docstring.
((expression_statement (assignment)) . (expression_statement (string) @comment))

; Allow `_` in front of constants and types.
((identifier) @type (#lua-match? @type "^_[A-Z].*[a-z]"))
((identifier) @constant (#lua-match? @constant "^_?[A-Z][A-Z_0-9]*$"))
