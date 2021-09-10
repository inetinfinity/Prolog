% Suwaroj-Assignment2: 1
man(marcus).
man(Y1) :- \+(ruler(Y1)),!.
man(X4) :- \+(tryassassinate(X4,ceasar)),!.
man(X4) :- \+(loyalto(X4,ceasar)).
pompeian(marcus).
pompeian(X1) :- roman(X1).
ruler(ceasar).
tryassassinate(marcus,ceasar).
roman(X2) :- loyalto(X2,ceasar),!.
roman(X2) :- hate(X2,ceasar).
hate(X3,ceasar) :- \+(loyalto(X3,ceasar)).
loyalto(X4) :- \+(man(X4)),!.
loyalto(Y1) :- \+(ruler(Y1)),!.
loyalto(X4,Y1) :- \+(tryassassinate(X4,Y1)).

% Suwaroj-Assignment2: 2.1
rev(Xs,Ys) :- rev(Xs,Ys,[]).
rev([],Ys,Ys).
rev([R1|R2],Ys,Zs) :- rev(R2,Ys,[R1|Zs]).

% Suwaroj-Assignment2: 2.2
lastmem([],_).
lastmem([X|Y],X1) :- Y = [],!,X1 = X.
lastmem([_|Y],X) :- lastmem(Y,X).