desktop(android, 0).
desktop(ios, 0).
desktop(fuchsia, 1).
desktop(osx, 1).
desktop(windows, 1).
desktop(ubuntu, 1).
desktop(arch, 1).
desktop(fedora, 1).
desktop(chromeos, 1).
desktop(debian, 1).

mobile(android, 2).
mobile(ios, 2).
mobile(fuchsia, 2).
mobile(osx, 0).
mobile(windows, 0).
mobile(ubuntu, 1).
mobile(arch, 1).
mobile(fedora, 1).
mobile(chromeos, 0).
mobile(debian, 1). 

games(android, 2).
games(ios, 2).
games(fuchsia, 0).
games(osx, 1).
games(windows, 2).
games(ubuntu, 1).
games(arch, 1).
games(fedora, 1).
games(chromeos, 1).
games(debian, 1).

userfriendly(android, 1).
userfriendly(ios, 2).
userfriendly(fuchsia, 1).
userfriendly(osx, 2).
userfriendly(windows, 2).
userfriendly(ubuntu, 1).
userfriendly(arch, 0).
userfriendly(fedora, 1).
userfriendly(chromeos, 2).
userfriendly(debian, 1).


shit(android, 0).
shit(ios, 1).
shit(fuchsia, 1).
shit(osx, 0).
shit(windows, 1).
shit(ubuntu, 0).
shit(arch, 0).
shit(fedora, 0).
shit(chromeos, 1).
shit(debian, 0).

server(android, 0).
server(ios, 0).
server(fuchsia, 0).
server(osx, 0).
server(windows, 1).
server(ubuntu, 2).
server(arch, 2).
server(fedora, 1).
server(chrome, 0).
server(debian, 2).

unstable(android, 1).
unstable(ios, 0).
unstable(fuchsia, 2).
unstable(osx, 0).
unstable(windows, 0).
unstable(ubuntu, 1).
unstable(arch, 2).
unstable(fedora, 0).
unstable(chrome, 0).
unstable(debian, 0).

question1(X) :-
    write("Does your system works on desktop?"), nl,
    write("1 - yes"), nl,
    write("0 - no"), nl,
    read(X).

question2(X) :-
    write("Does your system works on mobile?"), nl,
    write("2 - yes"), nl,
    write("1 - with compromisses"), nl,
    write("0 - no"), nl,
    read(X).

question3(X) :-
    write("Does your system supports games?"), nl,
    write("2 - yes"), nl,
    write("1 - with compromisses"), nl,
    write("0 - no"), nl,
    read(X).

question4(X) :-
    write("Is your systen userfriendly?"), nl,
    write("2 - yes"), nl,
    write("1 - so so"), nl,
    write("0 - no"), nl,
    read(X).

question5(X) :-
    write("Is your system a piece of shit?"), nl,
    write("1 - yes"), nl,
    write("0 - no"), nl,
    read(X).

question6(X) :-
    write("Is your system good as server OS?"), nl,
    write("2 - yes"), nl,
    write("1 - so so"), nl,
    write("0 - no"), nl,
    read(X).

question7(X) :-
    write("Is your system is unstable?"), nl,
    write("2 - yes"), nl,
    write("1 - so so"), nl,
    write("0 - no"), nl,
    read(X).

pr :-	question1(X1),question2(X2),question3(X3),question4(X4),
        question5(X5), question6(X5), question7(X7),
        desktop(X, X1), 
        mobile(X, X2), 
        games(X, X3), 
        userfriendly(X, X4), 
        shit(X, X5), 
        server(X6), 
        unstable(X7),
		write(X).