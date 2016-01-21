domains

list=integer*

predicates

count(list,integer)
clauses

count([First|Rest],Answer):-

count(Rest,Temp),

Answer=Temp+1.
