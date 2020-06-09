:- use_module(library(clpfd)).

word_square(N, Words) :-
length(Words, N),
maplist(word, Words),
transpose(Words, Cols),
maplist(word, Cols).
