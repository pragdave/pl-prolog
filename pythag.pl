:- use_module(library(clpfd)).

is_triple(A, B, C) :-
  C*C #= A*A + B*B.

solve_triple1(A, B, C, MAX) :-
  [A,B,C] ins 1..MAX,
  A #< B,
  B #< C,
  label([A, B]),
  is_triple(A, B, C).