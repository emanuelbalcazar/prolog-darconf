nota(X, suspenso) :- X < 6.

nota(X, aprobado) :- X >= 6, X < 8.

nota(X, notable) :- X >= 8, X < 10.

nota(X, sobresaliente) :- X >= 10.