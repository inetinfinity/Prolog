parent(christopher,arthur).
parent(christopher,victoria).
parent(penelope,arthur).
parent(penelope,victoria).
parent(victoria,colin).
parent(victoria,chalotte).
parent(james,colin).
parent(james,chalotte).
parent(andrew,james).
parent(christine,james).
parent(andrew,jannifer).
parent(christine,jannifer).

parent(roberto,emilio).
parent(maria,emilio).
parent(roberto,lucia).
parent(maria,lucia).
parent(pierro,macro).
parent(francesca,macro).
parent(pierro,angela).
parent(francesca,angela).
parent(lucia,alfonso).
parent(macro,alfonso).
parent(lucia,sophia).
parent(macro,sophia).


male(christopher).
male(james).
male(colin).
male(arthur).
male(andrew).
male(charles).
male(roberto).
male(pierro).
male(emilio).
male(macro).
male(tomaso).
male(alfonso).

female(penelope).
female(margaret).
female(victoria).
female(charlotte).
female(christine).
female(jannifer).
female(maria).
female(francesca).
female(gina).
female(lucia).
female(angela).
female(sophia).

grandparent(X1,Y) :- parent(X1,Z),parent(Z,Y).
