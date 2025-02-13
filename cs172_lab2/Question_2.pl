/*
Which of the following pairs of terms unify? Where relevant, give the variable instantiations that lead to successful unification.

bread  =  bread
'Bread'  =  bread
'bread'  =  bread
Bread  =  bread
bread  =  sausage
food(bread)  =  bread
food(bread)  =  X
food(X)  =  food(bread)
food(bread,X)  =  food(Y,sausage)
food(bread,X,beer)  =  food(Y,sausage,X)
food(bread,X,beer)  =  food(Y,kahuna_burger)
food(X)  =  X
meal(food(bread),drink(beer))  =  meal(X,Y)
meal(food(bread),X)  =  meal(X,drink(beer))
*/
/*
1: bread=bread. True both sides are the same
2:'Bread'=bread. False ,case sensitive
3:'bread'=bread. True both sides are the same
4:Bread=bread. True if Bread is a variable, undefined
5:bread=sausage. false, both sides are different
6:food(bread)=bread. False, both sides are different
7:food(bread)=X. false, different structures
8:food(X)=food(bread).true, it will be unified
9:food(bread,X)=food(Y,sausage).true , it will be unified
10:food(bread,X,beer)=food(Y,sausage,X).true, it will be unified
11:food(bread,X,beer)=food(Y,kahuna_burger).false, different structures
12:food(X)=X. true recursion,will be unified
13:meal(food(bread),drink(beer))=meal(X,Y).true, it will be unified
14:meal(food(bread),X)=meal(X,drink(beer)).true, it will be unified
*/

