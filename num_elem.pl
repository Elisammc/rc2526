/*
num_elem(+Lista, -Resultado)
	es cierto si Resultado unifica con el número de elementos de Lista.
	
Principio de Inducción
1) num_elem([], ).
2) num_elem(n-1) -> num_elem(n)
*/

num_elem([],0).
num_elem([Cabeza|Resto], R2) :- num_elem(Resto,R), R2 is R + 1.
