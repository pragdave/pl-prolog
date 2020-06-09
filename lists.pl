element_of(X, [ X | _ ]).
element_of(X, [ _ | Tail ]) :- element_of(X, Tail).

equal([], []).
equal([ H | T1 ], [ H | T2 ]) :- equal(T1, T2).

starts_with([], []).
starts_with([], [_|_]).
starts_with([ H | T1 ], [ H | T2 ]) :- starts_with(T1, T2).