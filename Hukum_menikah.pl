menikah(wati, andi).
anakkandung(wati, budi).
saudarakembar(budi, andi).

saudarakandung(Y, Z) :- saudarakembar(Y, Z).
saudarakandung(Z, Y) :- saudarakembar(Y, Z).
keponakan(X, Z) :- anakkandung(X, Y), saudarakandung(Y, Z).
tidak_sah(menikah(X, Y)) :- keponakan(X, Y).
