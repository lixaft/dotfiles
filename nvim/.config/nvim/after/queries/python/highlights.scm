; extends

; Docstrings as comment.
(module (comment)* . (expression_statement (string) @comment))
(class_definition body: (block . (expression_statement (string) @comment)))
(function_definition body: (block . (expression_statement (string) @comment)))
((expression_statement (assignment)) (comment)? . (expression_statement (string) @comment))

; Allow `_` in front of constants and types.
((identifier) @type (#lua-match? @type "^_*[A-Z].*[a-z]$"))
((identifier) @constant (#lua-match? @constant "^_*[A-Z][A-Z_0-9]*$"))
