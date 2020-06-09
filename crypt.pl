:- use_module(library(clpfd)).

solve([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]) :-
Letters = [ S, E, N, D, M, O, R, Y ],
Letters ins 0..9,
all_different(Letters),
S #> 0,
M #> 0,
              1000*S + 100*E + 10*N + D
           +  1000*M + 100*O + 10*R + E
           %===========================
#=  10000*M + 1000*O + 100*N + 10*E + Y,
label(Letters).

