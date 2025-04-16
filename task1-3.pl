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
    man(X).

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

son(X, Y) :-
    dite(X, Y),
    man(X).

son(X) :-
    dite(Y, X),
    man(Y),
    write(Y),
    nl.

sister(X, Y) :-
    dite(X, Z),
    dite(Y, Z),
    woman(X).

sisters(X) :-
    dite(X, Z),
    dite(Y, Z),
    man(Z),
    woman(Y),
    not(X = Y),
    write(Y),
    nl.

grand_ma(X, Y) :-
    dite(Z, X),
    dite(Y, Z),
    woman(X).

grand_mas(X) :-
    dite(X, Y),
    dite(Y, Z),
    woman(Z),
    write(Z),
    nl.

grnd_p_s(X, Y) :-
    dite(Z, X),
    dite(Y, Z),
    man(X),
    man(Y).

grnd_s_p(X, Y) :-
    dite(Z, Y),
    dite(X, Z),
    man(X),
    man(Y).

grand_pa_and_son(X, Y)
    grnd_p_s(X, Y);
    grnd_s_p(X, Y).

uncle(X, Y) :-
    dite(X, Z),
    brother(Y, Z).

uncles(X) :-
    dite(X, Y),
    brother(Z, Y),
    write(Z),
    nl.