mode(plane). mode(car). mode(train). mode(ship).

different([]).
different([H|T]) :- not(member(H, T)), different(T).

travel([mr_jones, M1], [rachel, M2], [ john, M3], [cindy, M4]) :-
   mode(M1), mode(M2), mode(M3), mode(M4),
   different([ M1, M2, M3, M4 ]).