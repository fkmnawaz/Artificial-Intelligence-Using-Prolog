domains
list=integer*

predicates
max(integer,integer,integer)
maxlist(list,integer)
min(integer,integer,integer)

clauses

max(X,Y,X):-X>Y,!.
max(X,Y,Y):-Y>X.

min(X,Y,X):-X<Y,!.
min(X,Y,Y):-Y<X.

maxlist([X],X).
maxlist([First|Rest],Answer):-

maxlist(Rest,Temp),

max(First,Temp,Answer).
