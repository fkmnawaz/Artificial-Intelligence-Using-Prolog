domains

list=integer*

predicates

search(integer,list,integer)
clauses

search(First,[First|_],Index):-

I = Index+1,
write("Found at index",I).

search(_,[],_):-

write("Not found").

search(First,[_|List],Index):-

Newindex=Index+1,

search(First,List,NewIndex).
