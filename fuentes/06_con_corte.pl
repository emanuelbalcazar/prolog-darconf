nota(X, suspenso) :- X < 6, !.

nota(X, aprobado) :- X < 8, !.

nota(X, notable) :- X < 10, !.

nota(X, fallo) :- X > 10, !, fail.

nota(_, sobresaliente).

/* implementacion del predicado NOT de prolog */
negar(X) :- X, !, fail.
negar(_).