Domains
slist = symbol*
clist = char*
ilist = integer*
rlist = real*
Predicates
merge(slist,slist,slist)
merge(clist,clist,clist)
merge(ilist,ilist,ilist)
merge(rlist,rlist,rlist)
Clauses
merge([],[],[]).
merge(L,[],L).
merge([],L,L).
merge([H1|T1],[H2|T2],[H1|T]):-H1<=H2,
merge(T1,[H2|T2],T).
merge([H1|T1],[H2|T2],[H2|T]):-H1>H2,
merge([H1|T1],T2,T).
