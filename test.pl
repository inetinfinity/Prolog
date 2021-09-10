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

mem(X,[X|_]).
mem(X,[_|Y]) :- mem(X,Y).

app([],L,L).
app([A|L1],L2,[A|L3]) :- app(L1,L2,L3).

like(mary,X) :- snake(X),!,fail.
like(mary,X) :- animal(X).
snake(small_snake).
snake(big_snake).

count(_, [], 0).
count(X, [X|T], N) :- !, count(X, T, N1),N is N1 + 1.
count(X, [_|T], N) :- count(X, T, N).

% ok ver.1
%lastmem([X|_],X).
%lastmem([_|Y],X) :- lastmem(Y,X).
%lastmem([X|Y],Z) :- Y = [],!,Z is X.

% ok ver.2
%lastmem([X|_],X).
%lastmem([_|Y],X) :- lastmem(Y,X).

lastmem([],_).
lastmem([X|Y],X1) :- Y = [],!,X1 = X.
lastmem([_|Y],X) :- lastmem(Y,X).



% rev([a,b,c],Ys). ok ver.1
%rev(Xs,Ys) :- rev(Xs,Ys,[]).
%rev([],Ys,Ys).
%rev([R1|R2],Ys,Zs) :- rev(R2,Ys,[R1|Zs]).

% rev([a,b,c],Ys). ok ver.2
rev(Xs,Ys) :- rev(Xs,Ys,Xs,Ys,[],[]).
rev(Xs,Ys,[],[],Ys,Xs).
rev(Xs,Ys,[X1|X2],[Y1|Y2],X,Y) :- rev(Xs,Ys,X2,Y2,[X1|X],[Y1|Y]).


insert(X,[],[X]).
insert(X,[Y|Ys],[Y|Zs]) :- X > Y,!,insert(X,Ys,Zs).
insert(X,[Y|Ys],[X,Y|Zs]) :- X =< Y.

natural_number(0).
natural_number(s(X)) :- natural_number(X).

pl(0,X,X) :- natural_number(X).
pl(s(X),Y,s(Z)) :- pl(X,Y,Z).

%minus(X,Y,Z).
minus(X,0,X) :- natural_number(X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

times(0,X,0).
times(s(X),Y,Z) :- times(X,Y,W), pl(W,Y,Z).

% power ok ver.1
%power(s(X),0,0).
%power(0,s(X),s(0)).
%power(s(N),X,Y) :- power(N,X,Z),times(Z,X,Y).

power(0,s(X),0).
power(s(X),0,s(0)).
power(X,s(W),Y) :- power(X,W,Z),times(Z,X,Y).