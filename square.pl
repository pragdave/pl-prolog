solve([S,E,N,D], [M,O,R,E], [M,O,N,E,Y]) :-
  Letters = [S,E,N,D,M,O,R,Y],
  Letters ins 0..9,
  M #> 0,
  S #> 0,
  all_different(Letters),
  1000*(S+M) + 100*(E+O) + 10*(N+R) + (D+E)
    #= 10000*M + 1000*O + 100*N + 10*E + Y.