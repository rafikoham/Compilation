<<<<<<< HEAD
# Question 9
### On voudrai pouvoir écrire plusieurs lignes et finir par un ";"
> Création d'un nouveau token 
>> PT_VIRG 
>> Suppression du token EOL
=======
# Compilation
## Repertoire git pour suivre les TPs de compilation encadrés par Mr Breuvart 

## A l'exercice 2, la modification apporté à **parseur.mly** est 

 ----------------------
 expression:
	expression PLUS expression		{}
	|expression MOINS expression		{}
	|expression FOIS expression		{}
	|GPAREN expression DPAREN		{}
	|MOINS	expression %prec UMOINS	{}
	|NOMBRE
;
-----------------------
### C'est une défintion plus simple et concise 
>>>>>>> master
