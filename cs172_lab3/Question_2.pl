/*
Write a Prolog program with a predicates pal/3, pal/4, and pal/5, which test words with 3,4, and 5 letters respectively to see if they are palindromes. The program should respond to the following queries as indicated:
pal(b,o,b).
  true.
pal(b,o,o).
  false.
pal(n,o,o,n).
  true.
pal(s,o,o,n).
  false.
pal(n,a,v,a,n).
  true.
pal(c,l,a,r,e).
  false.
IMPORTANT: your program does not have to respond to queries where any of the letters are unknown (e.g. pal(X,o,b)). Your program does have to deal with all palindromes of length 3,4,5 though, so don't hardcode them. You will get very few marks for a program that only deals with the above queries.
Hints:
a 3 letter palindrome is any word where the first and third letters are the same. How might you express this in Prolog? It's just one line.
if you are writing the predicates correctly, you might encounter a singleton error. Remember to use an underscore (_) for variables you don't really care about.
*/
pal(X,_,X).
pal(X,Y,Y,X).
pal(X,Z,_,Z,X).
