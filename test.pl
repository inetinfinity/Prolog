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



% rev([a,b,c],Ys).
rev(Xs,Ys) :- rev(Xs,Ys,[]).
rev([],Ys,Ys).
rev([R1|R2],Ys,Zs) :- rev(R2,Ys,[R1|Zs]).



%rev([Y1|Y],Y1) :- rev(Y,Z).



insert(X,[],[X]).
insert(X,[Y|Ys],[Y|Zs]) :- X > Y,!,insert(X,Ys,Zs).
insert(X,[Y|Ys],[X,Y|Zs]) :- X =< Y.