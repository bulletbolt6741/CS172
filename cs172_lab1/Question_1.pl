/*
Represent the following in Prolog:
Butch is a killer.
Mia and Marsellus are married.
Zed is dead.
Marsellus kills everyone who gives Mia a footmassage.
Mia loves everyone who is a good dancer.
Jules eats anything that is nutritious or tasty.
*/
killer(butch).
married(mia,marsellus).
married(marsellus,mia).
dead(zed).
gives_Mia_footmassage(jules,mia).
tasty(burger).
nutritious(orange).
kills(marsellus,X):-gives_Mia_footmassage(X,mia).
loves(mia,Y):-good_dancer(Y).
eats(jules,Z):- tasty(Z);nutritious(Z).
