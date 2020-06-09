male(bill).
male(fred).
male(cecil).
male(daniel).

female(mary).
female(ethyl).
female(elvira).
female(jane).

child_parent(bill, fred).
child_parent(bill, mary).

child_parent(jane, fred).
child_parent(jane, mary).

child_parent(fred, ethyl).
child_parent(fred, cecil).

child_parent(mary, elvira).
child_parent(mary, daniel).

ancestor_of(Person, Ancestor) :- child_parent(Person, Ancestor).
ancestor_of(Person, Ancestor) :- child_parent(Person, Parent), ancestor_of(Parent, Ancestor).

daughter_of(Daughter, Parent) :- child_parent(Daughter, Parent), female(Daughter).
