/*
We are working with the following knowledge base:
*/
  wizard(_):-false.
  house_elf(dobby). 
  witch(hermione). 
  witch('McGonagall'). 
  witch(rita_skeeter). 
  magic(X):-  house_elf(X). 
  magic(X):-  wizard(X). 
  magic(X):-  witch(X).
/*
Which of the following queries are satisfied? Where relevant, give all the variable instantiations that lead to success.
?-  magic(house_elf).
?-  wizard(harry).
?-  magic(wizard).
?-  magic('McGonagall').
?-  magic(Hermione).
*/
/*
% 1: this is true
% 2: this is not true
% 3: this is not true
% 4: this is true
% 5: this is not true
*/
