/*
An n-bit Gray code is a sequence of n-bit strings where each binary string only differs from the previous by one bit. For example:

Gray(1) = ['0','1'].
Gray(2) = ['00','01','11','10'].
Gray(3) = ['000','001','011','010','110','111','101','100'].

Figure out the rules to build the Gray code list and write a Prolog function called gray(N,X) where N if the number of bits and X is the set of strings.

For example:
gray(1,X) should yield X = ['0', '1']
gray(2,X) should yield X = ['00', '01', '11', '10']
gray(3,X) should yield X = ['000', '001', '011', '010', '110', '111', '101', '100']
gray(4,X) should yield X = ['0000','0001','0011','0010','0110','0111','0101','0100','1100','1101','1111','1110','1010','1011','1001','1000']
...
Hints:
(1) You may find the following function useful. It prefixes a list of atoms with a single character.

prefixList(_,[],[]).

prefixList(C,[H|T],[CH|Result2]):-prefixList(C,T,Result2),concat(C,H,CH).

Example usage:
prefixList('0',['00', '01', '11', '10'],X) should yield X=['000', '001', '011', '010']

(2) You may find the built-in reverse function useful too. For example:
reverse(['00', '01', '11', '10'],X) should yield X=['10', '11', '01', '00']

(3) Here is the base case:
gray(1,['0','1']).

*/
prefixList(_,[],[]).
prefixList(C,[H|T],[CH|Result2]):-prefixList(C,T,Result2),concat(C,H,CH).

gray(1,['0','1']).
gray(N,X):-
     N1 is N - 1,
    gray(N1, PreviousGrayCode),
    prefixList('0', PreviousGrayCode, PrefixedWith0),
    prefixList('1', PreviousGrayCode, PrefixedWith1),
    reverse(PrefixedWith1, ReversedWith1),
    append(PrefixedWith0, ReversedWith1, X).


