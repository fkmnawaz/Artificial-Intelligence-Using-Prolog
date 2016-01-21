domains
list=integer*
predicates
add(integer,list,list)
perm(list,list)
clauses
add(X,L,[X|L]).
add(X,[Y|L],[Y|Z]):-
add(X,L,Z).

perm([X|L],P):-
perm(L,M),
add(X,M,P).
perm([],[]).
