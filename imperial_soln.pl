
factor_in_inches(inch, 1.0).

factor_in_inches(Unit1, FScale) :-
  scale(Unit1, Scale, inch),
  FScale is float(Scale),
  !.

factor_in_inches(Unit1, Scale) :-
  scale(Unit1, Scale1, Other),
  factor_in_inches(Other, Scale2),
  Scale is Scale1 * Scale2,
  !.

scale_factor(Unit1, Unit2, Scale) :-
  factor_in_inches(Unit1, Scale1),
  factor_in_inches(Unit2, Scale2),
  Scale is Scale2 / Scale1.

convert(Unit1, Quantity1, Unit2, Quantity2) :-
  scale_factor(Unit2, Unit1, Scale),
  Quantity2 is Quantity1 * Scale,
  !.
