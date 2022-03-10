type token =
  | NOMBRE of (int)
  | PLUS
  | MOINS
  | FOIS
  | GPAREN
  | DPAREN
  | EOL

open Parsing;;
let _ = parse_error;;
let yytransl_const = [|
  258 (* PLUS *);
  259 (* MOINS *);
  260 (* FOIS *);
  261 (* GPAREN *);
  262 (* DPAREN *);
  263 (* EOL *);
    0|]

let yytransl_block = [|
  257 (* NOMBRE *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\003\000\003\000\002\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\007\000\000\000\000\000\008\000\000\000\006\000\
\000\000\000\000\000\000\000\000\001\000\005\000\000\000\000\000\
\004\000"

let yydgoto = "\002\000\
\006\000\007\000"

let yysindex = "\001\000\
\026\255\000\000\000\000\026\255\026\255\000\000\007\255\000\000\
\022\255\026\255\026\255\026\255\000\000\000\000\255\254\255\254\
\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\010\255\016\255\
\000\000"

let yygindex = "\000\000\
\000\000\252\255"

let yytablesize = 31
let yytable = "\008\000\
\009\000\001\000\012\000\000\000\000\000\015\000\016\000\017\000\
\010\000\011\000\012\000\002\000\002\000\013\000\000\000\002\000\
\002\000\003\000\003\000\000\000\000\000\003\000\003\000\010\000\
\011\000\012\000\003\000\014\000\004\000\000\000\005\000"

let yycheck = "\004\000\
\005\000\001\000\004\001\255\255\255\255\010\000\011\000\012\000\
\002\001\003\001\004\001\002\001\003\001\007\001\255\255\006\001\
\007\001\002\001\003\001\255\255\255\255\006\001\007\001\002\001\
\003\001\004\001\001\001\006\001\003\001\255\255\005\001"

let yynames_const = "\
  PLUS\000\
  MOINS\000\
  FOIS\000\
  GPAREN\000\
  DPAREN\000\
  EOL\000\
  "

let yynames_block = "\
  NOMBRE\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : AST.expression_a) in
    Obj.repr(
# 10 "parseur.mly"
                   (_1)
# 86 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 14 "parseur.mly"
                             (Plus(_1,_3))
# 94 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 15 "parseur.mly"
                               (Moins(_1,_3))
# 102 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 16 "parseur.mly"
                              (Mult(_1,_3))
# 110 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : AST.expression_a) in
    Obj.repr(
# 17 "parseur.mly"
                            (_2)
# 117 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 18 "parseur.mly"
                                (Neg _2)
# 124 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 19 "parseur.mly"
            (Num _1)
# 131 "parseur.ml"
               : AST.expression_a))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : AST.expression_a)
