% Define a Kripke model with worlds, relations, and valuations.
world(1).
world(2).
world(3).

accessibility(1, 2).
accessibility(1, 3).
accessibility(2, 3).
accessibility(3, 1).

valuation(1, p).
valuation(2, p).
valuation(2, q).
valuation(3, q).
% Base case for propositional variables
eval(World, Var) :-
    valuation(World, Var).

% Negation
eval(World, not(Formula)) :-
    \+ eval(World, Formula).

% Conjunction
eval(World, and(Formula1, Formula2)) :-
    eval(World, Formula1),
    eval(World, Formula2).

% Disjunction
eval(World, or(Formula1, Formula2)) :-
    eval(World, Formula1);
    eval(World, Formula2).

% Implication
eval(World, implies(Formula1, Formula2)) :-
    \+ eval(World, Formula1);
    eval(World, Formula2).

% Necessity (Box)
eval(World, box(Formula)) :-
    \+ (accessibility(World, NextWorld),
        \+ eval(NextWorld, Formula)).

% Possibility (Diamond)
eval(World, diamond(Formula)) :-
    accessibility(World, NextWorld),
    eval(NextWorld, Formula).
