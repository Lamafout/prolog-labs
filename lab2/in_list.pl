in_list([], _) :- false.
in_list([Head|Tail], Head) :- true,!.
in_list([Head|Tail], X) :-
    in_list(Tail, X).