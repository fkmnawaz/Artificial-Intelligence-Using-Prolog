domains

predicates
Armstrong(integer)
Arm(integer,integer,integer)
Armst(integer,integer)
Armstr(integer,integer,integer,integer)


clauses

Armstrong(0).
Armstrong(1).
Armstrong(X):-X>0,
     R=X mod 10,
     Armst(X,R).
Armst(X,R):- R>=5,
           S=R*R*R,
     Y=X/10,
     Y =Y-1,
     Arm(Y,X,S).
Armst(X,R):- R<5,
 S=R*R*R,
 Y= X/10,
 Arm(Y,X,S).
Arm(Z,X,S):-Z>0,
   R= Z mod 10,
   Armstr(Z,X,S,R).
Arm(Z,X,S):-Z=0,
X=S.
Armstr(Z,X,S,R):-R>=5,
T=R*R*R,
Y= Z/10,
P=Y-1,
M = S+T,
Arm(P,X,M).
Armstr(Z,X,S,R):-R<5,
T=R*R*R,
Y = Z/10,
M = S + T,
Arm(Y,X,M).
