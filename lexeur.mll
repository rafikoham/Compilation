{
	open Parseur
	exception Eof
	exception TokenInconu
}

rule token=parse 
		[' ' '\t']			{token lexbuf}
<<<<<<< HEAD
		|['\n']			{EOL}
		|['0'-'9']+ as lexem		{NOMBRE(int_of_string lexem)}
=======
		|['\n'';']			{PT_VIRG}
		|['0'-'9']+			{NOMBRE}
>>>>>>> p0.0
		|'+'				{PLUS}
		|'-'				{MOINS}
		|'*'				{FOIS}
		|'('				{GPAREN}
		|')'				{DPAREN}
		|eof				{raise Eof}
		|_				{raise TokenInconu}
