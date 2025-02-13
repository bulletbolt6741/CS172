/*Suppose we are working with the following knowledge base:
   wizard(ron). 
   hasWand(harry). 
   quidditchPlayer(harry). 
   wizard(X):- hasBroom(X), hasWand(X). 
   hasBroom(X):- quidditchPlayer(X).
How does Prolog respond to the following queries?
wizard(ron).
witch(ron).
wizard(hermione).
witch(hermione).
wizard(harry).
wizard(Y).
witch(Y).
*/
wizard(ron).
wizard(X):- hasBroom(X), hasWand(X).
hasWand(harry).
quidditchPlayer(harry).

hasBroom(X):- quidditchPlayer(X).
