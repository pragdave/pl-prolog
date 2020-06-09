fib(N, N) :- N >= 0, N < 2, !.
fib(N, X) :-
    fib(N-1, F1),
    fib(N-2, F2),
    X is F1 + F2.

count(1).
count(2) :- !.
count(3).
count(4).

years_until_can_vote(Age, Years) :-
  Years is 18 - Age.

:- use_module(library(clpfd)).