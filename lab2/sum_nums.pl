sum_numbers(X, Answer) :-
    sum_numbers_tailed(X, 0, Answer).

sum_numbers_tailed(0, Acc, Acc) :- !.

sum_numbers_tailed(X, Acc, Answer) :-
    X1 is X // 10,
    Acc1 is Acc + X mod 10,
    sum_numbers_tailed(X1, Acc1, Answer).
