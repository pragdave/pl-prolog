:- use_module(library(clpfd)).


age(tom, 30).
age(dick, 50).
age(harry, 70).

age_name(Age, young)   :- Age #< 45.
age_name(Age, midlife) :- Age in 45..55.
age_name(Age, older)   :- Age #> 55.

car(young,   mustang).
car(midlife, corvette).
car(older,   volvo).

person_buys_car(Person, Car) :-
  age(Person, Age),
  age_name(Age, AgeName),
  car(AgeName, Car).