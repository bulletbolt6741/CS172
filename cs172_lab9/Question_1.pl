/*
List removal
Write a Prolog function called removeAt/3 to remove the nth item from a list. It should work as follows:
removeAt(['a','b','c','d','e','f','g'],3,Answer)
will give the answer:
Answer=['a','b','d','e','f','g']
Note:
Items in the list are numbered from 1, not 0.
*/
removeAt([_X|Y],1,Y).

removeAt([X|Y],Index,[X|Result]) :-
    Index > 1,
    NewIndex is Index - 1,
    removeAt(Y,NewIndex,Result).
