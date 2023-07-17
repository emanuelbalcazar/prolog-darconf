padre(oscar, diego).
padre(oscar, nacho).
padre(oscar, maria).

padre(diego, lucas).
madre(sara, lucas).

padre(julian, matias).
padre(julian, camila).
padre(julian, florencia).
madre(maria, matias).
madre(maria, camila).
madre(maria, florencia).

hombre(oscar).
hombre(diego).
hombre(nacho).
hombre(julian).
hombre(lucas).
hombre(matias).

mujer(maria).
mujer(sara).
mujer(camila).
mujer(florencia).

/* relacion hijo/hija */
hijo(X, Y) :- padre(Y, X), hombre(X).
hijo(X, Y) :- madre(Y, X), hombre(X).

hija(X, Y) :- padre(Y, X), mujer(X).
hija(X, Y) :- madre(Y, X), mujer(X).

