% Authors: Richard Grand'Maison, Pargol Poshtareh
% Date: 3/30/2020

parent(tom,peter).
parent(tom,helen).
parent(tom,daphne).
parent(sandra,peter).
parent(sandra,helen).
parent(sandra,daphne).
parent(joanne,ron).
parent(joanne,isabelle).
parent(peter,ron).
parent(peter,isabelle).
parent(helen,charles).
parent(helen,michael).
parent(mike,charles).
parent(mike,michael).
parent(mark,adam).
parent(mark,vanessa).
parent(daphne,adam).
parent(daphne,vanessa).

man(tom).
man(peter).
man(mike).
man(ron).
man(charles).
man(michael).
man(mark).
man(adam).

woman(sandra).
woman(joanne).
woman(helen).
woman(isabelle).
woman(daphne).
woman(vanessa).

sibling(X,Y):-parent(Z,X),parent(Z,Y),not(X = Y).
cousin(X,Y):-parent(P,X),parent(Q,Y),sibling(P,Q),not(P = Q).
male_cousin(X,Y):-man(X),cousin(X,Y).

spouse(X,Y):-parent(X,A),parent(Y,A).
in_law(X,Y):-spouse(Y,A),parent(X,A),not(Y = A).
mother_in_law(X,Y):-woman(X),in_law(X,Y).