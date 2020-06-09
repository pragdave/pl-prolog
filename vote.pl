:- use_module(library(clpfd)).

can_vote(Age) :- Age #>= 18.

years_until_can_vote(Age, Years) :-
  Years #= 18 - Age.