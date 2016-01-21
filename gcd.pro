domains

predicates

gcd(integer,integer,integer)

clauses

gcd(Same,Same,Same).

gcd(Big,Small,Answer):-

Big>Small,
	
Temp = Big - Small,

gcd(Temp,Small,Answer).

gcd(Small,Big,Answer):-
	
Big>Small,

Temp = Big - Small,

gcd(Temp,Small,Answer).


