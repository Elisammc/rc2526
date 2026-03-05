/*
  aniadir_final(+Elem, +Lista, -ListaR)
	es cierto cuando ListaR
	unifica con una lista que contiene los mismos elementos que
	Lista con el elemento Elem añadido al final.
	
	Mi intento:		
		aniadir_final(Elem, [], [Elem]).
		aniadir_final(Elem, [Cab|Res], LR2) :- aniadir_final(Elem, Res, LR), aniadir_final(Cab, LR, LR2).
		
	1. Caso base:
		Si Lista es vacía ([]), el resultado de añadir un elemento al final de Lista es ListaR = [Elem]
	2. Recursión (P(n) :- P(n-1)):
		Cuando Lista contiene 1 o más elementos:
		- LR = Resto + Elem
		- El resultado de añadir al final es añadir Cabeza a LR
		
*/

aniadir_final(Elem, [], [Elem]).
aniadir_final(Elem, [Cabeza|Resto], [Cabeza|LR]) :- aniadir_final(Elem, Resto, LR).