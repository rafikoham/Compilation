%token NOMBRE PLUS MOINS FOIS DIV GPAREN DPAREN EOL
%left  PLUS MOINS
%left  FOIS DIV
%nonassoc UMOINS
%type <unit> main expression
%start main 
%%
main:
	expression EOL				{}
;

expression:
	expression PLUS expression		{}
	|expression MOINS expression		{}
	|expression FOIS expression		{}
	|expression DIV  expression		{}
	|GPAREN expression DPAREN		{}
	|MOINS	expression %prec UMOINS	{}
	|NOMBRE
;

