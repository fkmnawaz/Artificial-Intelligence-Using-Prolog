domains
list=integer*
predicates
add(integer,list,list)
perm(list,list)
safe(list)
sol(list)
noattack(integer,list,integer)
clauses
add(X,L,[X|L]).
add(X,[Y|L],[Y|Z]):-
add(X,L,Z).

perm([X|L],P):-

perm(L,M),
add(X,M,P).
perm([],[]).

sol(P):-
perm([1,2,3,4,5,6,7,8],P),
safe(P).
safe([]):-!.

safe([X|Y]):-

noattack(X,Y,1),

safe(Y).

noattack(_,[],_):-!.

noattack(X,[Y|L],D):-

X<>Y,
X-Y<>D,
Y-X<>D,
M=D+1,
noattack(X,L,M).

