/*
Write and test a predicate sumList/2 which takes in a list of integers as the first parameter and returns the sum as the second parameter.

For example:
sumList([2,3,4],X) returns X=9
sumList([2],X) returns X=2
sumList([5,6],11) returns yes (or true).

Note that the base case should be a list of one element. i.e. sumList([],X) should not result in X=0.
*/
sumList([X],X).
sumList([T|F],Sum):-
    sumList(F,FSum),
    Sum is T + FSum.
