/*
Repeated list removal
Write a Prolog function, removeEvery/3 which removes every nth item from a list. 
For example:
removeEvery(['a','b','c','d','e','f','g','h'],2,Answer)
will give the answer:
['a','c','e','g']

Note: removeEvery(List,1,Answer) should return an empty list as the answer always. 
You might find it useful to add an auxilliary function which keeps a counter which can be increased as you move through the list. 
When the counter hits the nth item, you can drop that item. 

Something like:
removeEvery(List,Cycle,Answer):-removeEveryAux(List,Cycle,1,Answer). 

Here is the base case for such an approach:
removeEveryAux([],_,_,[]). 
*/
removeEveryAux([], _, _, []).

removeEveryAux([_X|Y],Cycle,Counter,Result) :-
    Counter =:= Cycle,
    NewCounter is 1,  
    removeEveryAux(Y,Cycle,NewCounter,Result).


removeEveryAux([X|Y],Cycle,Counter,[X|Result]) :-
    Counter \= Cycle,
    NewCounter is Counter+1,  
    removeEveryAux(Y,Cycle,NewCounter,Result).


removeEvery(List,Cycle,Answer) :-
    Cycle>1,  
    removeEveryAux(List,Cycle,1,Answer).

removeEvery(_,1,[]). 
