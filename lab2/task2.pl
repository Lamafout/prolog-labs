:- consult('max.pl').

max_digit(N, Result) :-
    max_digit(N, 0, Result).

max_digit(0, Acc, Acc) :- !.

max_digit(N, Acc, Result) :-
    NewNumber is N mod 10,
    N1 is N // 10,
    max(NewNumber, Acc, NewAcc),
    max_digit(N1, NewAcc, Result).



sum_mod_three(N, Result) :-
    sum_mod_three(N, 0, Result).

sum_mod_three(0, Acc, Acc) :- !.

sum_mod_three(N, Acc, Result) :-
    Digit is N mod 10,
    Digit mod 3 =:= 0,
    NewAcc is Acc + Digit,
    NewNumber is N // 10,
    sum_mod_three(NewNumber, NewAcc, Result).

sum_mod_three(N, Acc, Result) :-
    Digit is N mod 10,
    Digit mod 3 =\= 0,
    NewNumber is N // 10,
    sum_mod_three(NewNumber, Acc, Result).




divisors(Number, List) :-
    Number > 0,
    divisors(Number, 1, [], List).

divisors(Number, Iter, Acc, Acc) :-
    Iter > Number, !.

divisors(Number, Iter, Acc, List) :-
    Number mod Iter =:= 0,
    NewIter is Iter + 1,
    divisors(Number, NewIter, [Iter|Acc], List).

divisors(Number, Iter, Acc, List) :-
    Number mod Iter =\= 0,
    NewIter is Iter + 1,
    divisors(Number, NewIter, Acc, List).