/*
 invertir(+Lista, -ListaR) 
	es cierto cuando ListaR
	unifica con una lista que contiene los mismos
	elementos que Lista en orden inverso.
	
Método:
	0. Intentar con el principio de inducción
		0.1. P(n0)
		0.2. Para todo n > n0, P(n-1) -> P(n)
	1. Empezar por lo más fácil (dar la solución para la lista vacía)
	
	append(L1,L2,L3) -> L3 = L1 concatenado con L2
	
Mi intento:
	invertir([],[]).
	invertir(Elem,[_|Elem]).
	invertir([Cab|Res],[_|_]) :- invertir([_|_],[Res|Cab]).
	
Explicación:
	invertir([],[]). -> el inverso de una lista vacía es una lista vacía
	invertir([Cabeza|Resto], R2) :-   R2 es la lista inversa de la 1º lista solo si
		invertir(Resto, R), 	   -> R es el inverso de Resto y
		append(R, [Cabeza], R2).   -> R2 = R concatendo con [Cab]
		
*/

invertir([],[]).
invertir([Cabeza|Resto], R2) :- invertir(Resto, R), append(R, [Cabeza], R2).