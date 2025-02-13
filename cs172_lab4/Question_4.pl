/*
Write a Prolog database to represent a family tree 
Write a predicate maternalAncestor(X,Y) which returns true if X is a maternal ancestor of Y along the maternal line. Use this predicate to list the ancestors of Kate.

The order of the parameters to maternalAncestor/2 matters. For example, the predicate should behave as follows:
maternalAncestor(mary,dana).
True

maternalAncestor(dana,mary).
False. (because dana is not an ancestor of mary).

Note: use lowercase letters for people's names. Names beginning with uppercase are treated as variables in Prolog and will cause issues.
Hint: before writing a (recursive) maternalAncestor predicate, you should write a mother/2 facts to record who is a mother of whom (such as mother(mary,dana)).
Hint: the maternal ancestor along the maternal line means that all male ancestors can be ignored..
*/
mother(mary,jim).
mother(mary,alice).
mother(mary,dana).
mother(jane,karen).
mother(dana,rita).
mother(dana,jack).
mother(rita,kate).



maternalAncestor(X,Y):-mother(X,Y).
maternalAncestor(X,Y):-mother(X,Z),maternalAncestor(Z,Y).

listAncestorsOfKate():-maternalAncestor(_,kate).


