type expression_a=
	|Plus   of expression_a * expression_a
	|Moins  of expression_a * expression_a
	|Mult	of expression_a * expression_a
	|Div 	of expression_a * expression_a
	|Mod 	of expression_a * expression_a
	|Neg 	of expression_a
	|Num	of int
	|Bool 	of expression_a * expression_a
;;


let rec print_binaire form s g d =Format.fprintf form "@[<2>%s%s@ %a%s@ %a%s@]" s"("print_AST g", "print_AST d")"
	and print_AST form=let open Format in function 
				|Plus(g,d)->print_binaire form "Plus" g d 
				|Moins(g,d)->print_binaire form "Moins" g d 
				|Mult(g,d)->print_binaire form "Mult" g d 
				|Div(g,d)->print_binaire form "Div" g d 
				|Mod(g,d)->print_binaire form "Mod" g d
				|Bool(g,d)->print_binaire form "Bool" g d 
				|Neg e -> fprintf form "@[<2>%s@ %a@]" "Neg" print_AST e
				|Num n -> fprintf form "@[<2>%s@ %i@]" "Num" n 
;;

