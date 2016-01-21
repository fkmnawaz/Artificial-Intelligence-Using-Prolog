Domains
ilist=integer*
Predicates
union(ilist,ilist,ilist)
member(integer,ilist)
Clauses
union([],Set,Set).
union([X|L],Set,Z):-
member(X,Set),!,
union(L,Set,Z).
union([X|L],Set,[X|Z]):-
not(member(X,Set)),!,
union(L,Set,Z).
member(Element,[Element|_]):-!.
member(Element,[_|Tail]):-
		member(Element,Tail).

