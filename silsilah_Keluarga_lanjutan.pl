cowo(david).
cowo(jack).
cowo(john).
cowo(ray).
cowo(peter).

cewe(amy).
cewe(karen).
cewe(liza).
cewe(susan).
cewe(mary).

menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

saudaraKandung(liza, john).
saudaraKandung(susan, ray).
saudaraKandung(peter, mary).

sepupu(liza, susan).
sepupu(liza, ray).
sepupu(john, susan).
sepupu(john, ray).

keponakan(peter, liza).
keponakan(mary, liza).
keponakan(peter, ray).
keponakan(mary, ray).

ayah(david, liza).
ayah(david, john).
ayah(jack, susan).
ayah(jack, ray).
ayah(john, peter).
ayah(john, mary).

ibu(amy, liza).
ibu(amy, john).
ibu(karen, susan).
ibu(karen, ray).
ibu(susan, peter).
ibu(susan, mary).

is_cowo(X) :- cowo(X).
is_cewe(Y) :- cewe(Y).
is_menikah(X, Y) :- menikah(X, Y).
is_saudaraKandung(X, Y) :- (saudaraKandung(X, Y) ; saudaraKandung(Y,
X)).
is_sepupu(X, Z) :- (sepupu(X, Z) ; sepupu(Z, X)).
is_keponakan(X, Y) :- keponakan(X, Y).
is_ayah(Y, Z) :- ayah(Y, Z).
is_ibu(X, Z) :- ibu(X, Z).
boleh_menikah(X, Y) :-
 (cowo(X), cewe(Y) ; cowo(Y), cewe(X)),
 not(saudaraKandung(X, Y) ; saudaraKandung(Y, X)),
 not(keponakan(X, Y) ; keponakan(Y, X)),
 not(ayah(X, Y) ; ayah(Y, X)),
 not(ibu(X, Y) ; ibu(Y, X)).






