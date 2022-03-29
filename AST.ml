type expression_a=
	|Plus   of expression_a * expression_a
	|Moins  of expression_a * expression_a
	|Mult	of expression_a * expression_a
	|Div 	of expression_a * expression_a
	|Mod 	of expression_a * expression_a
	|Neg 	of expression_a
	|Num	of float
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
				|Num n -> fprintf form "@[<2>%s@ %f@]" "Num" n 
;;


let rec print_post_fixe form s g d = Format.fprintf form "@[<2>%s%s@ %a%s@ %a%s@]" s"(" print_fixe g","print_fixe d")"
				and print_fixe form=let open Format in function
				|Num n -> fprintf form "@[<2>%s@ %f@]" "CsteNb" n
				|Plus(g,d)->print_post_fixe form "AddiNb" g d 
				|Moins(g,d)->print_post_fixe form "SubiNB" g d 
				|Mult(g,d)->print_post_fixe form "MultNb" g d 
				|Neg e->fprintf  form"@[<2>%s@ %a@]" "NegaNb" print_fixe e
				
;;		
	
let rec print_post_fixe_deux (expression:expression_a)=
			match expression with
			|Num n -> Printf.printf "CstNb %.5f" n 
			|Plus(g,d)->Printf.printf "AddiNb\n"
			|Moins(g,d)->Printf.printf "SubiNb\n"
			|Mult(g,d)->Printf.printf "MultNb\n"
			|Div(g,d)->Printf.printf "DivNb\n"
			|Neg e ->Printf.printf "NegaNb"

;;
	





























			
				
				
				
