padre(terach, abraham).
padre(terach, nachor).
padre(terach, haram).
padre(abraham, isaac).
padre(haram, lot).
padre(haram, milcah).
padre(haram, yiscah).

madre(sarah, isaac).

hombre(terach).
hombre(abraham).
hombre(nachor).
hombre(haram).
hombre(isaac).
hombre(lot).

mujer(sarah).
mujer(milcah).
mujer(yiscah).

hijo(X, Y) :- padre(Y, X), hombre(X).

hija(X, Y) :- padre(Y, X), mujer(X).

abuelo(X, Y) :- padre(X, Z), padre(Z, Y).
