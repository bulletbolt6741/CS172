/*
Create a Prolog database to represent the connections between the graph. Then write a prolog program to test if a path is a valid path in the graph. The predicate should be called

path
and should behave as follows:
path([]).
False

path([a]).
False (actually any list with less than 2 elements should return false).

path([a,b]).
True

path([b,a]).
True

path([b,d]).
False (because there is no way to go from b to d)

path([d,e,c]).
True

path([c,e,g,h]).
False  (because there is no 'hop' from e to g).
Hint: you need to process the list recursively, peeling two elements off at a time from the front of the list. 
If those items are connected, you can proceed with recursion further down the list. You can stop when the list length is 2 items and they are marked as connected in your graph.
*/
connected(a,b).
connected(b,a).
connected(a,c).
connected(c,a).
connected(a,d).
connected(d,a).
connected(b,c).
connected(c,b).
connected(b,h).
connected(h,b).
connected(c,e).
connected(e,c).
connected(c,g).
connected(g,c).
connected(d,e).
connected(e,d).
connected(e,f).
connected(f,e).
connected(f,g).
connected(g,f).
connected(g,h).
connected(h,g).

path([X,Y]):-connected(X,Y).
path([X,Y| Rest]):-connected(X,Y),path([Y|Rest]).



*/
