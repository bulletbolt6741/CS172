/*
Run Length Encoding
Run Length Enconding (RLE) is a compression technique used in areas such as image compression (e.g. GIFs). 
It compresses runs of identical pieces of information (in this case single-character atoms) and records how many times they appear in a list in a consecutive run. 
For example, the list:

['a','a','a','b','b','c','a','a']
will get encoded to:
[('a',3),('b',2),('c',1),('a',2)]

Write a predicate myencode/2 that takes the uncompressed list as a first parameter and returns the compressed list as shown as the second parameter. 
For example:

myencode([],X) should yield X = [].
myencode(['a','b','b','c','c','c','d','d'],X) should yield X = [ (a, 1), (b, 2), (c, 3), (d, 2)] .
myencode(['a','p','p','l','e'],X) should yield X = [ (a, 1), (p, 2), (l, 1), (e, 1)] .

Hint:
You may find it useful to write a tempencode/2 function that translates a list like
['a','a','a','b','b','c','a','a']
into
[('a',1),('a',1),('a',1),('b',1),('b',1),('c',1),('a',1),('a',1)]
*/
tempencode([], []).
tempencode([H|T], [(H, 1)|Rest]) :-
    tempencode(T, Rest).

myencode(List, Compressed) :-
    tempencode(List, TempEncoded),
    runlength(TempEncoded, Compressed).

runlength([], []).
runlength([H], [H]).
runlength([(CurrentChar, CurrentCount), (NextChar, NextCount)|T], Result) :-
    CurrentChar = NextChar,
    UpdatedCount is CurrentCount + NextCount,
    runlength([(CurrentChar, UpdatedCount)|T], Result).
runlength([(CurrentChar, CurrentCount), (NextChar, NextCount)|T], [(CurrentChar, CurrentCount)|Result]) :-
    CurrentChar \= NextChar,
    runlength([(NextChar, NextCount)|T], Result).
