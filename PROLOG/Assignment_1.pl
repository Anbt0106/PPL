female(sophia).
female(sandra).
female(mia).
female(lisa).
male(peter).
male(alex).
male(dick).
male(bob).
male(andrew).

parent(bob, lisa).
parent(bob, alex).
parent(bob, sophia).
parent(mia, lisa).
parent(mia, alex).
parent(mia, sophia).
parent(peter, andrew).
parent(lisa, andrew).
parent(sophia, dick).
parent(sophia, sandra).

% Rule to define father relationship
father(F, C) :- 
    male(F), 
    parent(F, C).

% Rule to define sister relationship
sister(S, X) :- 
    female(S),
    parent(P, S),
    parent(X, S),
    S \= X.

% Rule to define grandmother relationship
grandmother(GM, C) :- 
    female(GM),
    parent(GM, P),
    parent(P, C).


% Rule to define wife-husband relationship
wife_husband(W, H) :-
    female(W),
    male(H),
    parent(H, C),
    parent(W, C).

% Rule to define cousin relationship
cousin(A, B) :-
    parent(P1 , A),
    parent(P2 , B),
    P1 \= P2,
    parent(GM, P1),
    parent(GM, P2),
    A \=B.


