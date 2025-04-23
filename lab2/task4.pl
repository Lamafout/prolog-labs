in_list([Element|_], Element).
in_list([_|Tail], Element) :- in_list(Tail, Element).

all_different([]).
all_different([Head|Tail]) :- \+ in_list(Tail, Head), all_different(Tail).

solve_girls :-
    Colors = [white, green, blue],
    
    Girls = [[anya, AnyaDress, AnyaShoes],
             [valya, ValyaDress, ValyaShoes],
             [natasha, NatashaDress, NatashaShoes]],
    
    Dresses = [AnyaDress, ValyaDress, NatashaDress],
    Shoes = [AnyaShoes, ValyaShoes, NatashaShoes],
    
    in_list(Colors, AnyaDress), in_list(Colors, ValyaDress), in_list(Colors, NatashaDress),
    in_list(Colors, AnyaShoes), in_list(Colors, ValyaShoes), in_list(Colors, NatashaShoes),
    
    all_different(Dresses),
    all_different(Shoes),
    
    AnyaDress = AnyaShoes,
    
    ValyaDress \= white,
    ValyaShoes \= white,
    
    NatashaShoes = green,
    
    ValyaDress \= ValyaShoes,
    NatashaDress \= NatashaShoes,
    
    write('Solution:'), nl,
    write_girl(anya, AnyaDress, AnyaShoes),
    write_girl(valya, ValyaDress, ValyaShoes),
    write_girl(natasha, NatashaDress, NatashaShoes).

write_girl(Name, Dress, Shoes) :-
    write(Name), write(': dress = '), write(Dress), write(', shoes = '), write(Shoes), nl.