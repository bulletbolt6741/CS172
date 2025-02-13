/*
Generate a list
Write a Prolog function, createList/3 which creates a list of integers in a contiguous inclusive range.
For example:
createList(2,5,Answer)
will give the answer:
[2,3,4,5]

createList(7,7,Answer)
will give the answer:
[7]

Note: The lower bound is always the first argument, the upper bound the second argument. 
If the upper bound provided is lower than the lower bound provided, then an empty list should be returned. 

e.g.:
createList(5,2,Answer)
will give the answer:
[]
*/
createList(Lower,Upper,[]) :-
    Lower>Upper.

createList(Lower,Lower,[Lower]).

createList(Lower,Upper,[Lower|Rest]) :-
    Lower < Upper,
    Next is Lower + 1,
    createList(Next,Upper,Rest).
