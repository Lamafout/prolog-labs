generate_edges(P, Edges) :-
    findall([U, V], (between(1, P, U), between(1, P, V), U < V), Edges).

subsets([], []).
subsets([H|T], [H|Sub]) :- subsets(T, Sub).
subsets([_|T], Sub) :- subsets(T, Sub).

marked_graphs(P, Graph) :-
    P > 0,
    generate_edges(P, AllEdges),
    subsets(AllEdges, Graph).
