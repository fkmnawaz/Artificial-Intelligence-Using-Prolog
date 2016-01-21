domains

predicates

fact(integer,integer)

clauses

fact(X,_):-
             X<0,
write(undefined),
fail.
fact(0,1).

fact(Number,Answer):-

             Number>0,

Decreased = Number -1,

fact(Decreased,Prevfact),

Answer=Prevfact*Number
