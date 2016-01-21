Domains
List=integer*

Predicates
partition(integer,list,list,list)
quicksort(list,list,list)

Clauses
partition(_, [ ], [ ], [ ]).

partition(X, [Y | Tail], [Y | Small], Large) :- 
		X > Y, 
		!, 
		partition(X, Tail, Small, Large).

partition(X, [Y | Tail], Small, [Y | Large]) :- 
		partition(X, Tail, Small, Large).

quicksort([X | L], Aux, Outlist):- 
	partition(X, L, Small, Large), 
	quicksort(Large, Aux, Local),

quicksort(Small, [X | Local], Outlist).

quicksort([ ], Any, Any).
