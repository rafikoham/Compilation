let _=
    try
       let lexbuf=Lexing.from_channel stdin in 
       while true do 
<<<<<<< HEAD
       	Parseur.main Lexeur.token lexbuf
       	| > Printf.printf "%i\n%!";
=======
       	(*Parseur.main Lexeur.token lexbuf*)
       	Parseur.main lexbuf
>>>>>>> p0.0
       done
    with
    
    	|Lexeur.Eof         -> exit 0
    	|Lexeur.TokenInconu
    	|Parsing.Parse_error ->Printf.printf("Ceci n'est pas une expression arithémtique\n")
	
