(_) @spell

; Issue number (#123)
("text" @number (#lua-match? @number "^#[0-9]+$"))

((uri) @text.uri @nospell)
