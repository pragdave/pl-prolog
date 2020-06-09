bigger(ant, flea).
bigger(mouse, ant).
bigger(cat, mouse).
bigger(horse, cat).
bigger(whale, horse).

bigger_than(X, Y) :-
  bigger(X, Y).

bigger_than(X, Y) :-
  bigger(X, Z), bigger_than(Z, Y).
