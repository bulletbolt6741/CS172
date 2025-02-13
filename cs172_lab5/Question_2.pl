/*
Define a recursive predicate fib/2 , that returns the fibonacci number of (small) integers

fib(X,6) 
should return X=8 (i.e. the first parameter is the fibonacci and the second is the integer)

fib(8,6) 
should return true

fib(8,X) 
should return X=6 (this may or may not work depending on the design of your code). You don't need to do this.

Discussion: You will need base case(s). As fibonacci of a number is defined recursively on the basis of the previous 2 fibonacci numbers, we will need 2 base cases. Here they are:

fib(0,0).
fib(1,1).
The rest of the code is just one line (the recursive version of fibonacci/2 - what to do when the 2nd parameter > 1).
*/
fib(0,0).
fib(1,1).
fib(N,Result):-
    Result>1,
    Result1 is Result-1,
    Result2 is Result-2,
    fib(Fib1,Result1),
    fib(Fib2,Result2),
    N is Fib1+Fib2.
