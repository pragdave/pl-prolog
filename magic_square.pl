:- use_module(library(clpfd)).

magic(
  [A,B,C,
  D,E,F,
  G,H,I]
) :-
  Vars = [A,B,C,   D,E,F,  G,H,I],
  Vars ins  1..9,
all_distinct(Vars),
A + B + C #= Sum,
D + E + F #= Sum,
G + H + I #= Sum,
A + D + G #= Sum,
B + E + H #= Sum,
C + F + I #= Sum,
A + E + I #= Sum,
G + E + C #= Sum,
label(Vars).
