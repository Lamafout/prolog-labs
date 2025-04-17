my_append([], X, X) :- !.
my_append([Head|Tail], X, [Head|Tail1]) :-
    my_append(Tail, X, Tail1).