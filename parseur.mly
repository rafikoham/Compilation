<<<<<<< HEAD
%token <int> NOMBRE 
%token PLUS MOINS FOIS GPAREN DPAREN EOL
%left  PLUS MOINS
%left  FOIS
%nonassoc UMOINS
%type <int> main expression
%start main 
%%
main:
	expression EOL				{$1}
=======
<<<<<<< HEAD
%token NOMBRE PLUS MOINS FOIS GPAREN DPAREN PT_VIRG
%type <unit> main expression terme facteur
=======
%token NOMBRE PLUS MOINS FOIS GPAREN DPAREN EOL
%left  PLUS MOINS
%left  FOIS
%nonassoc UMOINS
%type <unit> main expression
>>>>>>> master
%start main 
%%
main:
	expression PT_VIRG				{}
>>>>>>> p0.0
;

expression:
	expression PLUS expression		{$1+$3}
	|expression MOINS expression		{$1-$3}
	|expression FOIS expression		{$1*$3}
	|GPAREN expression DPAREN		{$2}
	|MOINS	expression %prec UMOINS	{-$2}
	|NOMBRE				{$1}
;

