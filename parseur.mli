type token =
<<<<<<< HEAD
  | NOMBRE of (float)
  | PLUS
  | MOINS
  | FOIS
  | GPAREN
  | DPAREN
  | PT_VIRG
  | MOD
  | DIV
  | BOOLEAN

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> AST.expression_a
