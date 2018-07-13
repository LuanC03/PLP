:- initialization main.

Cafe is 1.
Questoes is 0.
Tempo is 0.
tempo(Z > 0):- Tempo is Z.
questao("Cafezinho",Cafezinho)
questao(60,Facil)
questao(180,Dificil)
questao(120,Medio)
elabora(X == 60, Cafe == 1):- Tempo is Tempo - 60.
elabora(X == 60, Cafe > 1):- Y is 60/Cafe, Tempo is Tempo - Y.
elabora(X == 120, Cafe == 1):- Tempo is Tempo - 60.
elabora(X == 120, Cafe > 1):-  Y is 120/Cafe, Tempo is Tempo - Y
elabora(X == 180, Cafe == 1):- Tempo is Tempo - 60.
elabora(X == 180, Cafe > 1):-  Y is 180/Cafe, Tempo is Tempo - Y
elabora(X == 60, Cafe == 1):- Tempo is Tempo - 60.

main:-
 read(Tempo),
 tempo(Tempo),
 repeat,    
    (  Tempo == 0
    -> !
    ;  read(Q),
       elabora(questao(Q), Cafe),
       Questoes is Questoes + 1,
    ).
 write(Questoes).

   
   
