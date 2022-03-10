type token =
  | NOMBRE of (int)
  | PLUS
  | MOINS
  | FOIS
  | GPAREN
  | DPAREN
  | EOL

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> AST.expression_a
