can_i_not_make(Food) :-
  ingredient(Food, Item, Quantity, Unit),
  not(enough(Item, Quantity, Unit)).

enough(Item, Quantity, Unit) :-
  food(Item, InStore, Unit),
  write([Item, 'got: ', InStore, 'need: ', Quantity]),nl,
  InStore >= Quantity,
  write(['ok']), nl.
