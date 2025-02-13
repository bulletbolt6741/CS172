/*
Last element of a list
Write and test a recursive predicate lastList/2 which takes in a list as the first parameter and returns the last element in the list as the second parameter.

For example:
lastList([2,3,4],X) returns X=4
lastList([2],X) returns X=2
lastList([],X) is not defined.
*/
lastList([X],X).
lastList([_|F],Last):-
    lastList(F,Last).
