domains
list=integer*

predicates
isort(list,list)
insert(integer,list,list)

clauses
isort([ ],[ ]).
isort([X|UnSorted],AllSorted) :- isort(UnSorted,Sorted),
                                 insert(X,Sorted,AllSorted).

insert(X,[ ],[X]).
insert(X,[Y|L],[X,Y|L]) :- X <= Y.
insert(X,[Y|L],[Y|IL]) :-  X > Y, insert(X,L,IL).
