min_index([Head|Tail], Result) :-
    min_index(Tail, Head, 0, 0, Result).

min_index([], _, _,  MinIndex, MinIndex) :- !.

min_index([Head|Tail], Acc, Index, _, Result) :-
    Head < Acc,
    NewAcc is Head,
    NewIndex is Index + 1,
    NewMinIndex is NewIndex,
    min_index(Tail, NewAcc, NewIndex, NewMinIndex, Result).

min_index([Head|Tail], Acc, Index, MinIndex, Result) :-
    Head >= Acc,
    NewIndex is Index + 1,
    min_index(Tail, Acc, NewIndex, MinIndex, Result).



count_in_range(List, A, B, Result) :-
    count_in_range(List, A, B, 0, Result).

count_in_range([], _, _, Acc, Acc) :- !.

count_in_range([Head|Tail], A, B, Acc, Result) :-
    Head >= A, 
    Head =< B,
    NewAcc is Acc + 1,
    count_in_range(Tail, A, B, NewAcc, Result).

count_in_range([Head|Tail], A, B, Acc, Result) :-
    (Head < A; Head > B), 
    count_in_range(Tail, A, B, Acc, Result).