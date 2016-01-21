domains

list=integer*

predicates
reverse(list,list,list)
palin(list)

clauses

reverse([],X,X).

reverse([X|L],L1,L2):-

reverse(L,[X|L1],L2).
palin(L):-
reverse(L,[],L1),
L=L1.
