```
% Union
union([], L, L).
union([H | T], L, U) :-
    member(H, L),
    union(T, L, U).
union([H | T], L, [H | U]) :-
    \+ member(H, L),
    union(T, L, U).

% Intersection
intersection([], _, []).
intersection([H | T], L, [H | I]) :-
    member(H, L),
    intersection(T, L, I).
intersection([H | T], L, I) :-
    \+ member(H, L),
    intersection(T, L, I).

% Queries
?- union([1, 2, 3], [2, 3, 4], U).
?- intersection([1, 2, 3], [2, 3, 4], I).
```
