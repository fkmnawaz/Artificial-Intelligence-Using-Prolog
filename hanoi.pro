domains

predicates
hanoi(integer)
dohanoi(integer,symbol,symbol,symbol)
move(symbol,symbol)
clauses
hanoi(N):-N<0,
write("undefined"),fail.

hanoi(N):-
N>0,
dohanoi(N,source,temporary,destination).

dohanoi(0,_,_,_):-!.

dohanoi(N,Source,Temp,Dest):-

Decrease = N-1,

dohanoi(Decrease,Source,Dest,Temp),

move(Source,Dest),

dohanoi(Decrease,Temp,Source,Dest).

move(S,D):-

write("move top disk from ",S," to ",D),nl.
