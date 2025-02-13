/*
Create a Prolog database to represent the connections between the graph. The connections are bi-directional.

Write a rule path/3 which accepts a starting node X, an ending node Y, and a List representing all nodes on the path(s) from X to Y, including X and Y.

path(X,Y,List)
The rule should behave as follows:
path(a,f,List) should yield: List = [a,b, c, e,f]...
path(f,a,List) should yield: List = [f,g, h, b,a]...

Hint: not(memberchk(Z,T)) ensures that Z is not in the list called T.
Hint: consider using an accumulator variable approach 
Hint: keep track of nodes you have visited before. If you are trying to find a path from A to B, set the initial list of visited nodes to [B].
...Then try find a nodes connected to the node at the start of the visited list.
...If the new node is not in the visited list, add it to the head of the visited list.
...At any point, if the head of the visited list starts with A, then that is a path from A to B.
*/

edge(a,b).
edge(a,c).
edge(a,d).
edge(b,h).
edge(b,c).
edge(c,e).
edge(c,g).
edge(d,e).
edge(e,f).
edge(f,g).
edge(g,h).
connected(X,Y):-edge(X,Y);edge(Y,X).

path(X,Y,Path):-
    path_helper(X,Y,[X],Path).

path_helper(X,X,_,[X]).
path_helper(X,Y,T,[X|Path]):-
    connected(X,Z),
    not(memberchk(Z,T)),
    path_helper(Z,Y,[Z|T],Path).
