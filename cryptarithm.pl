:- use_module(library(clpfd)).

solve([S,E,N,D] + [M,O,R,E] = [M,O,N,E,Y]) :-
  Letters = [S,E,N,D,M,O,R,Y],
  Letters ins 0..9,
  S #> 0,
  M #> 0,
  all_different(Letters),
                1000*S + 100*E + 10*N + D
             +  1000*M + 100*O + 10*R + E
             %===========================
  #=  10000*M + 1000*O + 100*N + 10*E + Y,
  label(Letters).

solve1([H,E,R,E] + [S,H,E] = [C,O,M,E,S]) :-
  Letters = [C,E,H,M,O,R,S],
  Letters ins 0..9,
  all_different(Letters),
  1000*H + 100*(E+S) + 10*(R+H) + (E+E) #= 10000*C + 1000*O + 100*M + 10*E + S,
  label(Letters).