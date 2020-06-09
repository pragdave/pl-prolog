:- dynamic word/1.

word_square(Words) :-
  Words = [[ W11, W12, W13, W14 ],
           [ W21, W22, W23, W24 ],
           [ W31, W32, W33, W34 ],
           [ W41, W42, W43, W44 ]
  ],
  word([W11, W12, W13, W14]),
  word([W21, W22, W23, W24]),
  word([W31, W32, W33, W34]),
  word([W41, W42, W43, W44]),

  word([W11, W21, W31, W41]),
  word([W12, W22, W32, W42]),
  word([W13, W23, W33, W43]),
  word([W14, W24, W34, W44]),

  W12 \= W21.
