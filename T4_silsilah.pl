ayah(david, liza).
ayah(david, john).
ayah(john, peter).
ayah(john, mary).
ayah(jack, susan).
ayah(jack, ray).
ibu(amy, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

is_anakAyah(Y, X) :- ayah(X, Y).
is_anakIbu(Y, X) :- ibu(X, Y).
is_sodara(Y, Z) :- ayah(X, Y), ayah(X, Z), Y\=Z.
is_orangtua(X, Y) :- ayah(X, Y).
is_orangtua(X,Y) :- ibu(X, Y).
is_kakek(X, Z) :- ayah(X, Y), is_orangtua(Y, Z).
is_nenek(X, Z) :- ibu(X, Y), is_orangtua(Y,Z).
