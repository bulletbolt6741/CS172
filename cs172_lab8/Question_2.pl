/*
Run Length Decoding
In question 1, you wrote a predicate called myencode/2 which performs Run Length Enconding (RLE). Your task is to now write a mydecode/2 predicate which decodes compressed lists. 

For example, the list:
[('a',3),('b',2),('c',1),('a',2)]
will get decoded to:
['a','a','a','b','b','c','a','a']

Write a predicate mydecode/2 that takes the compressed list as a first parameter and returns the uncompressed list as shown as the second parameter. 

For example:
mydecode([],X) should yield X = [].
mydecode([(a,1), (b,2), (c,3), (d,2)],X) should yield X = ['a','b','b','c','c','c','d','d'] .
mydecode([(a,1), (p,2), (l,1), (e,1)],X) should yield X =  ['a','p','p','l','e'].
*/
mydecode([], []).
mydecode([(Char, Count)|T], DecodedList) :-
    expand(Char, Count, ExpandedCharList),
    mydecode(T, DecodedRest),
    append(ExpandedCharList, DecodedRest, DecodedList).

expand(_, 0, []).
expand(Char, Count, [Char|Rest]) :-
    Count > 0,
    NewCount is Count - 1,
    expand(Char, NewCount, Rest).
