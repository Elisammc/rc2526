/*

pertenece(?Elem, ?Lista)
	es cierto si Elem pertenece a la Lista
	
Principio de Inducción 
1) P(n0)
2) Para todo n > n0, P(n-1) -> P(n)

pertenece(E,[Cabeza|Resto]) :- Cabeza = E.  es equibalente a  pertenece(Elem, [Elem|_]). pero no es correcto realizarlo de la 1º forma
*/

pertenece(Elem, [Elem|_]).
pertence(Elem, [_|Resto]) :- pertenece(Elem, Resto).
