/*print the fibonacci series*/
domains

predicates

fibo(integer)
cal(integer,integer,integer)
clauses
fibo(N):-
N<0,
write("undefined"),fail.

fibo(N):-
N>=0,
write("0"),nl,
cal(X,Y,N).

fibo(-1):-!.

cal(0,1,1):-!.

cal(Prev,Next,Answer):-

Decrease = Answer - 1,

cal(NewPrev,NewNext,Decrease),

Next=NewNext + NewPrev,

Prev=NewNext,

write(NewNext),nl.

