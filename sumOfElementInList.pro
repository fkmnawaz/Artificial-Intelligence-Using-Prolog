domains

list=integer*

predicates

sum(list,integer)
clauses

sum([X],X).

sum([First|Rest],Answer):-

sum(Rest,Temp),

Answer=Temp+First.
