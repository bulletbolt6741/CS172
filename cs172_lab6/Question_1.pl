/*
Write and test a predicate second(X,List) which checks whether X is the second element of List.
Example session:

?- second(3,[2,3,1]).
true.

?- second(3,[2,2,1]).
false.

?- second(X,[a,b,c]).
X = b.
*/
second(X, [_,X|_]).
