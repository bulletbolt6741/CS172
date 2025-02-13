/*
Define a recursive predicate factorial/2 , that returns the factorial of (small) integers

factorial(X,3) 
should return X=6 (i.e. the first parameter is the factorial and the second is the integer)

factorial(6,3) 
should return true

factorial(6,X) 
should return X=3 (this may or may not work depending on the design of your code). You don't need to ensure this.

Discussion: You will need a base case (a non recusive version of factorial/2). It is:
factorial(1,1).
The rest of the code required is what to do when the second argument is >1. It is only one line of code.
*/
factorial(1,1).
factorial(N,F):-
    F>1,
    F1 is F-1,
    factorial(N1,F1),
    N is F*N1.
