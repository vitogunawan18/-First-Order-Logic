anakibu(andi).
anakibu(budi).
anakibu(cika).
anakibu(dani).
anakibu(emil).
not(anakibu(fadil)).

sukapermen(andi).
sukapermen(budi).
sukapermen(cika).
not(sukapermen(dani)).
not(sukapermen(emil)).

siapa_saja(X):-anakibu(X).
dapat_permen(X):-anakibu(X),sukapermen(X).
dapatUang(X):-anakibu(X),not(sukapermen(X)).
tidak_mendapat_apa_apa(X):- not(anakibu(X)).
