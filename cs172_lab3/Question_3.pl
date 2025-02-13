/*
Write a series of predicates parentOf/2 that records if a node is a parent of another (parentOf is shown as an outgoing arrow where the parent node is the source and the child node is the destination). The first two predicates are:
parentOf(a,h)
parentOf(a,b)
Ensure you use lowercase letters to represent the nodes. There should be 8 parentOf lines in your program.
Now write a predicate ancestorOf/2 using recursion which checks if the first parameter is an ancestor of the second. You must use recursion for this predicate. Example output is:
ancestorOf(a,d).
  true.
ancestorOf(h,i).
  true.
ancestorOf(h,e).
  true.
ancestorOf(g,f).
  false.
Note: you must use recursion to write the ancestorOf predicate.
*/
parentOf(a,h).
parentOf(a,b).
parentOf(h,i).
parentOf(h,g).
parentOf(i,f).
parentOf(i,e).
parentOf(b,c).
parentOf(c,d).

ancestorOf(X,Y):-parentOf(X,Y).
ancestorOf(X,Y):-parentOf(X,Z),ancestorOf(Z,Y).
