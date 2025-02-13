/*
In Prolog, a tic-tac-toe board state can be represented in a linearised form from left to right and then top to bottom using the symbols x to represent player X, y to represent player Y, and b to represent a blank.

This board would be represented by a board state of [o,x,x,b,o,o,x,o,b]

For such a board representation, define a predicate, won(A,Boardstate), which holds iff player A has won.
For example won(x,Boardstate) would hold if player x occupied a horizontal line, a vertical line, or either diagonal. Hint: remember b is not a player. 
It merely represents a blank cell. Therefore won(b) should never be true.

Eg: won(x,[x,x,x,b,o,o,x,o,b]) is true.

Hint: Try to use as much symmetry as you can.
*/
won(x,Boardstate):-
    horizontal_win(x,Boardstate);
    vertical_win(x,Boardstate);
    diagonal_win(x,Boardstate).

horizontal_win(x,Boardstate):-
    (Boardstate=[x,x,x,_,_,_,_,_,_];
    Boardstate=[_,_,_,x,x,x,_,_,_];
    Boardstate=[_,_,_,_,_,_,x,x,x]).
     

vertical_win(x,Boardstate):-
    (Boardstate=[x,_,_,x,_,_,x,_,_];
    Boardstate=[_,x,_,_,x,_,_,x,_];
    Boardstate=[_,_,x,_,_,x,_,_,x]).

diagonal_win(x,Boardstate):-
    (Boardstate=[x,_,_,_,x,_,_,_,x];
    Boardstate=[_,_,x,_,x,_,x,_,_]).
