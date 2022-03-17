{
	open Parseur
	exception Eof
	exception TokenInconu
}

rule token=parse 
		[' ' '\t' '\n']			{token lexbuf}
		|['0'-'9']+ as lexem		{NOMBRE(int_of_string lexem)}

		|[';']				{PT_VIRG}
		|'+'				{PLUS}
		|'-'				{MOINS}
		|'*'				{FOIS}
		|'('				{GPAREN}
		|')'				{DPAREN}
		|eof				{raise Eof}
		|_				{raise TokenInconu}
