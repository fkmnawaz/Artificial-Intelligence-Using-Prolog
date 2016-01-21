domains
list=integer*
predicates

gcd(integer,integer,integer)
gcdlist(list,integer)

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

gcdlist([First|Rest],Answer):-

gcdlist(Rest,Temp),

gcd(First,Temp,Answer).

gcdlist([X],X).
