/*
(1) Write predicates male/1 and female/1 to record the gender of each member.

Test your predicates by querying Prolog with: 

male(X)
female(X)
(2) Write predicates married/2 to describe whom is/was married. You may want to decide on a convention such as keeping the male as the first parameter or the female as the first parameter. The main thing is to capture the information.

Test your predicates by querying Prolog with:

married(X,Y) - to get a list of all couples
married(X,anne) - to see who anne is married to (swap parameters if you have decided to place the female as the first parameter)
(3) Write predicates mother/2 and father/2 to describe who is a mother/father of whom. You should have the parent as the first parameter and the child as the second parameter.

Test your predicates by querying Prolog with:

mother(anne,X) - to see who Anne is mother to
mother(X,harry) - to see who is Harry's mother
(4) Difficult: Write a single predicate (a rule) for grandfather/2 and grandmother/2 that uses the pre-existing father/2 mother/2 facts.  

Test your predicates by querying Prolog with:

grandfather(philip,X) - to see who Philip is a grandfather to.
grandfather(X,charlotte) - to see who Charlotte's grandfather is.
grandmother(elizabeth,X) - to see who Elizabeth is a grandmother to.
grandmother(X,george) - to see who George's grandmother is.
*/
male(philip).
male(charles).
male(andrew).
male(william).
male(harry).
male(mark).
male(timothy).
male(edward).
male(peter).
male(mike).
male(james).

female(elizabeth).
female(diana).
female(camilla).
female(kate).
female(sarah).
female(eugenie).
female(beatrice).
female(anne).
female(sophie).
female(autumn).
female(zara).
female(louise).

married(elizabeth,philip).
married(diana,charles).
married(camilla,charles).
married(sarah,andrew).
married(sophie,edward).
married(anne,mark).
married(zara,mike).
married(autumn,peter).
married(kate,william).
married(anne,timothy).
