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
