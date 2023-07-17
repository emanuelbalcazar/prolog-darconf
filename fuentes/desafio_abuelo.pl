/* relacion abuelo/abuela */
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
abuelo(X, Y) :- padre(X, Z), madre(Z, Y).