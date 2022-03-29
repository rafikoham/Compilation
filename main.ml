let _=
    try
       let lexbuf=Lexing.from_channel stdin in 
       while true do 
       	Parseur.main Lexeur.token lexbuf
       	|> AST.print_post_fixe_deux ;
       done
    with
  
    	
    	|Lexeur.Eof         -> exit 0
    	|Lexeur.TokenInconu
    	|Parsing.Parse_error ->Printf.printf("Ceci n'est pas une expression arithémtique\n")
	

