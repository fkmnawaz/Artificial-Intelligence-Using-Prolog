domains

list=integer*

predicates

insend(integer,list,list)

clauses

insend(L,[],[L]).

insend(Element,[First|Rest],[First|Answer]):-

insend(Element,Rest,Answer).
