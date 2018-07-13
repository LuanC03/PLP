divisor(N,P) :- P > 0, N > P, 0 is N mod P.

brute_force_factors( N , Fs ) :-
  integer(N) ,
  N > 0 ,
  setof( F , ( between(1,N,F) , N mod F =:= 0 ) , Fs ).

soma([Item], Item).
soma([Item1,Item2 | Tail], Total) :-
    soma([Item1+Item2|Tail], Total).

last([Y|Tail]) :- last(Tail).

:- initialization main.

main:-
  read(X3),
  string_to_atom(X3,X2),
  atom_number(X2,X),
  brute_force_factors(X,L),
  soma(L,R),
  length(L,_length),
  nth1(_length,L,_last),
  Z is (R - _last),
  ((Z =:= X) -> writeln('true');writeln('false')),
  halt(0).
