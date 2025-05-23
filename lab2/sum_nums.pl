sum_numbers(X, Answer) :-
    sum_numbers(X, 0, Answer).

sum_numbers(0, Acc, Acc) :- !.

sum_numbers(X, Acc, Answer) :-
    X1 is X // 10,
    Acc1 is Acc + X mod 10,
    sum_numbers(X1, Acc1, Answer).
