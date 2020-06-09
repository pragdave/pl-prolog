:- use_module(library(clpfd)).

valid_triple(Triple) :- proper_length(Triple, 3).

triple_sum([A, B, C], Sum) :- A + B + C #= Sum.

sums_of([Triple1, Triple2, Triple3], Sum) :-
  triple_sum(Triple1, Sum),
  triple_sum(Triple2, Sum),
  triple_sum(Triple3, Sum).

magic(Rows) :-
length(Rows, 3),
maplist(valid_triple, Rows),
  flatten(Rows, Cells),
  Cells ins 1..9, all_distinct(Cells),
transpose(Rows, Columns),
sums_of(Rows, Sum),
sums_of(Columns, Sum)
  .
