Define a recursive predicate mul/3 , that multiplies 2 integers using recursion


mul(X,6,2) 
should return X=12 (i.e. the first parameter is the result of multiplication)

mul(12,6,2) 
should return true

Hints:
If the first number is less than the second, you might want to swap them Something like:
mul(X,Y,Z):- Y<Z, mul(X,Z,Y).
Now you can always assume the first number is greater than or equal to the second
Recursively find Z times the sum of Y
If either Y or Z are 0, return 0
An alternative approach is to supply 2 base cases:

mul(X,X,1).
mul(X,1,X).

In this case, the rest of the code is just one line of code (what to do when either the 2nd or 3rd parameters are >1).
*/
mul(X,X,1).
mul(X,1,X).
mul(X,Y,Z):-
    Y<Z,
    mul(X,Z,Y).
    mul(X,A,B):-X is A*B.
