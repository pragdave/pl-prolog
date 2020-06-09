
% Your mission is to make sense of the Imperial system of measuring distance. It's
% the system that uses inches, feet, yards, furlongs, miles, and so on. It also make
% no rational sense.

% Here are some Prolog facts that define some of the lengths:

scale(foot,    12, inch).
scale(yard,     3, foot).
scale(rod,    198, inch).
scale(chain,   22, yard).
scale(furlong, 40, rod).
scale(mile,     8, furlong).
scale(league,   3, mile).

% This says that a foot is 12 inches, a chain is 22 yards, and so on.
%
% I've set a series of challenges below. Each builds on the successful
% completion of the last. And each has a set of tests which you can run to verify
% your code.
%
% This file is called `imperial_hw.pl`. Do not modify it. Instead, put all
% your code into a file `imperial_soln.pl`. Start with just the cdoe you need to solve
% Part 1, then, after that's working, add the code to solve part 2, and so one.
%
% Run your code in SWIPL using
%
%   ?- [imperial_hw].
%   ?- [imperial_soln].
%   ?- run_tests(imperial_part«n«).
%  or
%   ?- run_tests.   % to run them all.
%
% When all the tests pass, upload your `imperial_soln.pl` file to Canvas.



%%
% Part I: Write a predicate `factor_in_inches` that takes a unit and
% a scale factor, and ensures that the scale factor represents the
% size of the unit in inches. Initially, this will support only
% direct scale factors: 1 foot is 12 inches, and 1 rod is 198 inches.
%
% Note that the factor must be a floating point value. You can convert
% an expression to a float by wrapping it in a call to `float()`
%
% You can run the tests using
%
%    ?- [imperial_hw].
%    ?- [imperial_soln].
%    ?- run_tests(imperial_part1).
%
% NOTE:
%   If you get the message
%
%          Test succeeded with choicepoint
%
%   it means that your code is allowing backtracking even after
%   finding an answer. For now, that is OK.
%

:- begin_tests(imperial_part1).

  test(factor_in_inches) :- factor_in_inches(inch,  1.0).
  test(factor_in_inches) :- factor_in_inches(foot, 12.0).
  test(factor_in_inches) :- factor_in_inches(rod, 198.0).

:- end_tests(imperial_part1).

%%
% Part 2: Now extend `factor_in_inches` to support recursive
% lookups (so 1 yard is 36 inches because 1 yard is
% 3 feet and 1 foot is 12 inches.

:- begin_tests(imperial_part2).

  test(factor_in_inches) :- factor_in_inches(inch,        1.0).
  test(factor_in_inches) :- factor_in_inches(foot,       12.0).
  test(factor_in_inches) :- factor_in_inches(yard,       36.0).
  test(factor_in_inches) :- factor_in_inches(rod,       198.0).
  test(factor_in_inches) :- factor_in_inches(chain,     792.0).
  test(factor_in_inches) :- factor_in_inches(furlong,  7920.0).
  test(factor_in_inches) :- factor_in_inches(mile,    63360.0).
  test(factor_in_inches) :- factor_in_inches(league, 190080.0).

:- end_tests(imperial_part2).

%%
% Part 3: Now add a new predicate,
%
%     scale_factor(Unit1, Unit2, Factor)
%
% which asserts that `Factor` is the amount you multiple a
% value expressed in Unit2 to get a value expressed in Unit1
%

:- begin_tests(imperial_part3).

  test(scale_factor) :- scale_factor(inch, inch, 1.0).
  test(scale_factor) :- scale_factor(inch, foot, 12.0).
  test(scale_factor) :- scale_factor(inch, mile, 63360.0).
  test(scale_factor) :- scale_factor(mile, furlong, 0.125).
  test(scale_factor) :-
     scale_factor(mile, inch, F),
     F > 1.5782e-5,
     F < 1.5783e-5.

:- end_tests(imperial_part3).


%%
% Finally, write a predicate
%
%     convert(Unit1, Quantity1, Unit2, Quantity2)
%
% that asserts Quantity1 Unit1s is thew same length as
% Quantity2 Unit2s
%


:- begin_tests(imperial_part4).

  test(convert) :- convert(foot, 2,  inch,  24.0).
  test(convert) :- convert(foot, 6,  yard,   2.0).
  test(convert) :- convert(chain, 2, foot, 132.0).

:- end_tests(imperial_part4).
