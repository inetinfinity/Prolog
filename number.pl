natural_number(0).
natural_number(s(X)) :- natural_number(X).

pl(0,X,X) :- natural_number(X).
pl(s(X),Y,s(Z)) :- pl(X,Y,Z).

times(0,X,0).
times(s(X),Y,Z) :- times(X,Y,W), pl(W,Y,Z).

power(0,s(X),0).
power(s(X),0,s(0)).
power(X,s(W),Y) :- power(X,W,Z),times(Z,X,Y).

factorial(0,s(0)).
factorial(s(X),Z) :- factorial(X,Z1),times(s(X),Z1,Z).

% Z is the remainder of the integer divison of X by Y (number not s(0))
mod(X,Y,X) :- X < Y.
mod(X,Y,Z) :- pl(X1,Y,X),mod(X1,Y,Z).