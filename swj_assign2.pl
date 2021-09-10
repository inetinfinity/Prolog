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

% Suwaroj-Assignment2: 3.1
natural_number(0).
natural_number(s(X)) :- natural_number(X).
minus(X,0,X) :- natural_number(X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

% Suwaroj-Assignment2: 3.2
pl(0,X,X) :- natural_number(X).
pl(s(X),Y,s(Z)) :- pl(X,Y,Z).
times(0,X,0) :- natural_number(X).
times(s(X),Y,Z) :- times(X,Y,W), pl(W,Y,Z).
power(0,s(X),0) :- natural_number(X).
power(s(X),0,s(0)) :- natural_number(X).
power(X,s(W),Y) :- power(X,W,Z), times(Z,X,Y).