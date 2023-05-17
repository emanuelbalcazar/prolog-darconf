lista([]).
lista([X|Xs]) :- lista(Xs).

/* verifica si el elemento pertenece a una lista, en prolog existe el predicado member */
pertenece(X,[X|Xs]).
pertenece(X,[Y|Ys]) :- pertenece(X,Ys).

/* calcula la longitud de una lista, en prolog existe el predicado length */
longitud([], 0).
longitud([_|Xs], Longitud) :- longitud(Xs, L), Longitud is L+1.

/* concatena en L3 las listas L1 y L2, en prolog existe el predicado concat */
concatenar([], L, L) :- lista(L).
concatenar([X|Xs], L, [X|Z]) :- concatenar(Y, L, Z).

/* obtiene el ultimo elemento de la lista y lo devuelve, en prolog existe el predicado last */
ultimo([X], X).
ultimo([X|Xs], R) :- ultimo(Xs, R).