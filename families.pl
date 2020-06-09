mother_of(Child, Mother) :-
  parents_of(Child, _, Mother).

father_of(Child, Father) :-
  parents_of(Child, Father, _).

sibling_of(Child, Sibling) :-
  parents_of(Child, M, F),
  parents_of(Sibling, M, F),
  Child \= Sibling.

parent_of(Child, Parent) :-
  mother_of(Child, Parent).

parent_of(Child, Parent) :-
  father_of(Child, Parent).

ancestor_of(Child, Ancestor) :-
  parent_of(Child, Ancestor).

ancestor_of(Child, Ancestor) :-
  parent_of(Child, Parent), ancestor_of(Parent, Ancestor).
