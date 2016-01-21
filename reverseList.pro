domains

list=integer*

predicates

rev(list,list)
reverse(list,list,list)

insend(integer,list,list)

clauses

insend(L,[],[L]).

insend(Element,[First|Rest],[First|Answer]):-

insend(Element,Rest,Answer).

rev([X],[X]).

rev([First|Rest],Answer):-

rev(Rest,Restrev),

insend(First,Restrev,Answer).


/*Another Method*/

reverse([],X,X).

reverse([X|L],L1,L2):-

reverse(L,[X|L1],L2).
