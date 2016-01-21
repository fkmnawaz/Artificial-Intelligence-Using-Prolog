domains

predicates
power(real,real,real)
clauses
power(_,0,1):-!.

power(Number,Index,Answer):-

Index>0,

DecreasedIndex = Index - 1,

power(Number,DecreasedIndex,PrevAnswer),

Answer = Number * PrevAnswer.


power(Number,Index,Answer):-
Index<0,
NewIndex=Index * -1,
power(Number,NewIndex,NegAnswer),
Answer = (1 / NegAnswer).
