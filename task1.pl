:- consult('knowledge_base.pl').

men :-
    man(X),
    write(X),
    nl.

women :-
    woman(X),
    write(X),
    nl.    

children(X) :-
    dite(Y, X),
    write(Y),
    nl.

mother(X, Y) :-
    dite(Y, X),
    woman(X).

mother(X) :-
    dite(X, Y),
    woman(Y),
    write(Y),
    nl.

brother(X, Y) :-
    dite(X, Z),
    dite(Y, Z),
    man(Y).

brothers(X) :-
    dite(X, Z),
    dite(Y, Z),
    man(Z),
    man(Y),
    not(X = Y),
    write(Y),
    nl.

b_s(X, Y) :-
    dite(X, Z),
    dite(Y, Z).

b_s(X) :-
    dite(X, Z),
    dite(Y, Z),
    man(Z),
    not(X = Y),
    write(Y),
    nl.