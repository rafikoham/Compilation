{
	open Parseur
	exception Eof
	exception TokenInconu
}

rule token=
	parse	[' ' '\t' '\n']+					{token lexbuf}
		|';'							{PT_VIRG}
		|['0'-'9']+['.']?['0'-'9']*		as lexem	{NOMBRE( float_of_string lexem)}
		|'+'							{PLUS}
		|'-'							{MOINS}
		|'%'							{MOD}
		|'/'							{DIV}
		|'*'							{FOIS}
		|'('							{GPAREN}
		|')'							{DPAREN}
		|"True"						{BOOLEAN}
		|"False"						{BOOLEAN}
		|'!'							{BOOLEAN}
		|'<'							{BOOLEAN}
		|eof							{raise Eof}
		|_							{raise TokenInconu}

