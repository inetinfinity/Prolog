man(marcus).
man(Y1) :- \+(ruler(Y1)).
pompeian(marcus).
pompeian(X1) :- roman(X1).
ruler(ceasar).
roman(X2) :- loyalto(X2,ceasar),!.
roman(X2) :- hate(X2,ceasar).
hate(X3,ceasar) :- \+(loyalto(X3,ceasar)).
loyalto(X4) :- \+(man(X4)),!.
loyalto(Y1) :- \+(ruler(Y1)),!.
loyalto(X4,Y1) :- \+(tryassassinate(X4,Y1)).
tryassassinate(marcus,ceasar).