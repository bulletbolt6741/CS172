/*
n the sample code for this question, you can see a Fibonacci predicate fibSimple/2 which calculates the Fibonacci of X, a natural number. 
The problem with the naive recursive solution, is that you end up recalculating the same recursive case several times.

For example, working out the fib(5) involves working out the solution for fib(2) three separate times. 
A Dynamic Programming approach can solve this problem. Essentially, it boils down to starting with fib(2), then calculating fib(3), then fib(4) etc.... until you reach fib(X). 
You can store these answers in a list, with fib(X) ending up as the first item in the list.

Your base cases would look like the following:

fib(0,[0]).
fib(1,[1,0]).
Note the way that fib(1) is defined as [1,0]. fib(1) is really 1 but we are keeping a list of previous answers.
Why do we do this? Because to calculate fib(X), we just have to calculate fib(X-1) and add the first two elements together and insert them at the front of the list. 
For example, from the above, it is easy to calculate fib(2,Ans). fib(2) in this case would be [1,1,0]. Then fib(3) would be [2,1,1,0], fib(4) would be [3,2,1,1,0] etc....

Complete the fib/2 predicate as outlined above - the base cases are shown above. You need to figure out the one line that goes after the base cases to handle the recursion.
*/

fibSimple(0,0). % fib of 0 is 0
fibSimple(1,1). % fib of 1 is 1
fibSimple(N,X):- N>1, fibSimple(N-1,A), fibSimple(N-2,B), X is A+B.

fib(0,[0]).
fib(1,[1,0]).
fib(N,FibList):- N>1,PrevIndex is N-1,fib(PrevIndex,PrevFibList),[First,Second|Rest]=PrevFibList,CurrentFib is First+Second,FibList=[CurrentFib,First,Second|Rest].
