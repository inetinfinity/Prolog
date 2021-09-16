% Suwaroj-Assignment2: 1
man(marcus).
pompeian(marcus).
roman(X) :- pompeian(X).
ruler(caesar).
loyalto(X,caesar) :- roman(X).
hate(X,caesar) :- roman(X).
not(loyalto(X,Y)) :- man(X),ruler(Y),tryassassinate(X,Y).
tryassassinate(marcus,caesar).

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
