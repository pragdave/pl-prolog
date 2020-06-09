fib(N, N) :-
  N >= 0, N < 2, !.
fib(N, X) :-
  fib(N-1, F1),
  fib(N-2, F2),
  X is F1 + F2.
