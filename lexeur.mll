{
	open Parseur
	exception Eof
	exception TokenInconu
}

rule token=parse 
		|[' ' '\t' '\n']		{EOL}
		|['0'-'9']+ as lexem		{NOMBRE(int_of_string lexem)}
		|'+'				{PLUS}
		|'-'				{MOINS}
		|'*'				{FOIS}
		|'('				{GPAREN}
		|')'				{DPAREN}
		|eof				{raise Eof}
		|_				{raise TokenInconu}
