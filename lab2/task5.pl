:-consult('task2.pl').

nod(A, B, Result) :- 
    A >= 0, 
    B >= 0, 
    nod(A, B, Result).

nod(A, 0, Acc) :- 
    Acc is A, 
    !.

nod(A, B, Result) :-
    B > 0,
    R is A mod B,
    nod(B, R, Result).


digits(N, Digits) :-
    N > 0,
    digits(N, [], Digits).

digits(0, Acc, Acc) :- !.

digits(N, Acc, Digits) :-
    N > 0,
    Digit is N mod 10,
    NewN is N // 10,
    digits(NewN, [Digit|Acc], Digits).



count_coprime(N, Count) :-
    N > 0,
    count_coprime(N, 1, 0, Count).

count_coprime(N, K, Acc, Count) :-
    K >= N, !,
    Count is Acc.

count_coprime(N, K, Acc, Count) :-
    K < N,
    gcd(K, N, GCD),
    (   GCD =:= 1 -> NewAcc is Acc + 1 ; NewAcc is Acc ),
    NewK is K + 1,
    count_coprime(N, NewK, NewAcc, Count).