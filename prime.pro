Domains

Predicates

divisible(integer,integer)
isprime(integer)

clauses

divisible(X, Y):-
N = Y*Y,
N <= X,
X mod Y = 0.

divisible(X, Y):-
Y < X,
Y1 = Y + 1,
divisible(X, Y1).

isprime(X):-
Y = 2, X > 1 ,
not(divisible(X, Y)).
