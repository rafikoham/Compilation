type token =
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

open Parsing;;
let _ = parse_error;;
# 2 "parseur.mly"
	open AST
# 18 "parseur.ml"
let yytransl_const = [|
  258 (* PLUS *);
  259 (* MOINS *);
  260 (* FOIS *);
  261 (* GPAREN *);
  262 (* DPAREN *);
  263 (* PT_VIRG *);
  264 (* MOD *);
  265 (* DIV *);
  266 (* BOOLEAN *);
    0|]

let yytransl_block = [|
  257 (* NOMBRE *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\000\000"

let yylen = "\002\000\
\002\000\003\000\003\000\003\000\003\000\002\000\003\000\003\000\
\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\009\000\000\000\000\000\010\000\000\000\006\000\
\000\000\000\000\000\000\000\000\001\000\000\000\000\000\005\000\
\000\000\000\000\004\000\008\000\007\000"

let yydgoto = "\002\000\
\006\000\007\000"

let yysindex = "\001\000\
\041\255\000\000\000\000\041\255\041\255\000\000\010\255\000\000\
\018\255\041\255\041\255\041\255\000\000\041\255\041\255\000\000\
\032\255\032\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\026\255\028\255\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\252\255"

let yytablesize = 46
let yytable = "\008\000\
\009\000\001\000\000\000\000\000\000\000\017\000\018\000\019\000\
\000\000\020\000\021\000\010\000\011\000\012\000\000\000\000\000\
\013\000\014\000\015\000\010\000\011\000\012\000\000\000\016\000\
\000\000\014\000\015\000\002\000\002\000\003\000\003\000\002\000\
\002\000\003\000\003\000\012\000\000\000\000\000\000\000\014\000\
\015\000\003\000\000\000\004\000\000\000\005\000"

let yycheck = "\004\000\
\005\000\001\000\255\255\255\255\255\255\010\000\011\000\012\000\
\255\255\014\000\015\000\002\001\003\001\004\001\255\255\255\255\
\007\001\008\001\009\001\002\001\003\001\004\001\255\255\006\001\
\255\255\008\001\009\001\002\001\003\001\002\001\003\001\006\001\
\007\001\006\001\007\001\004\001\255\255\255\255\255\255\008\001\
\009\001\001\001\255\255\003\001\255\255\005\001"

let yynames_const = "\
  PLUS\000\
  MOINS\000\
  FOIS\000\
  GPAREN\000\
  DPAREN\000\
  PT_VIRG\000\
  MOD\000\
  DIV\000\
  BOOLEAN\000\
  "

let yynames_block = "\
  NOMBRE\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : AST.expression_a) in
    Obj.repr(
# 18 "parseur.mly"
                     (_1)
# 104 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 22 "parseur.mly"
                             (Plus(_1,_3))
# 112 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 23 "parseur.mly"
                               (Moins(_1,_3))
# 120 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 24 "parseur.mly"
                              (Mult(_1,_3))
# 128 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : AST.expression_a) in
    Obj.repr(
# 25 "parseur.mly"
                            (_2)
# 135 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 26 "parseur.mly"
                                 (Neg _2)
# 142 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 27 "parseur.mly"
                             (Div(_1,_3))
# 150 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : AST.expression_a) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : AST.expression_a) in
    Obj.repr(
# 28 "parseur.mly"
                             (Mod(_1,_3))
# 158 "parseur.ml"
               : AST.expression_a))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 29 "parseur.mly"
             (Num _1)
# 165 "parseur.ml"
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
