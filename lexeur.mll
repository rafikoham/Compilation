{
	open Parseur
	exception Eof
	exception TokenInconu
}

rule token=parse 
		[' ' '\t']			{token lexbuf}
		|['\n'';']			{PT_VIRG}
		|['0'-'9']+['\.']['0'-'9']+	{NOMBRE}
		|'+'				{PLUS}
		|'-'				{MOINS}
		|'/'				{DIV}
		|'*'				{FOIS}
		|'('				{GPAREN}
		|')'				{DPAREN}
		|eof				{raise Eof}
		|_				{raise TokenInconu}
