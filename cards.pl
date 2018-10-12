buildCards(Tipo,Nome,Cilindradas,Potencia,Velocidade,Peso,Comprimento,Is_trunfo,carros(Tipo,Nome,Cilindradas,Potencia,Velocidade,Peso,Comprimento,Is_trunfo)).
isSuperTrunfo(carros(_,_,_,_,_,_,_,1)).
getType(carros(Tipo,_,_,_,_,_,_,_),Tipo).
getName(carros(_,Nome,_,_,_,_,_,_),Nome).
getCilindradas(carros(_,_,Cilindradas,_,_,_,_,_),Cilindradas).
getPotencia(carros(_,_,_,Potencia,_,_,_,_),Potencia).
getVelocidade(carros(_,_,_,_,Velocidade,_,_,_),Velocidade).
getPeso(carros(_,_,_,_,_,Peso,_,_),Peso).
getComprimento(carros(_,_,_,_,_,_,Comprimento,_),Comprimento).
getSuperTrunfo(carros(_,_,_,_,_,_,_,Is_trunfo),Is_trunfo).

stringEquals(StringA,StringB,Equal) :-
    string_to_atom(StringA, Atom),
    string_to_atom(StringB, Atom2),
    ((Atom == Atom2) -> Equal = 1; Equal = 0).

isA(Carro, Is) :- /*O super trunfo só perde para as cartas do tipo A */
  getType(Carro, Tipo),
  sub_string(Tipo, 0, 1, 1, SubString),
  stringEquals('A', SubString, Is).
