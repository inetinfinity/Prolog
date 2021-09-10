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
rev(Xs,Ys) :- rev(Xs,Ys,Xs,Ys,[],[]).
rev(Xs,Ys,[],[],Ys,Xs).
rev(Xs,Ys,[X1|X2],[Y1|Y2],X,Y) :- rev(Xs,Ys,X2,Y2,[X1|X],[Y1|Y]).

% Suwaroj-Assignment2: 2.2
lastmem([],_).
lastmem([X|Y],X1) :- Y = [],!,X1 = X.
lastmem([_|Y],X) :- lastmem(Y,X).