/*
num_elem(+Lista, -Resultado)
	es cierto si Resultado unifica con el número de elementos de Lista.
	
Principio de Inducción
1) num_elem(n0, 0). n0 en listas es []
2) num_elem(n-1) -> num_elem(n).

Cuando no utilizamos una variable pero la necesitamos, la ponemos como _
*/

num_elem([],0).
num_elem([_|Resto], R2) :- num_elem(Resto,R), R2 is R + 1.
