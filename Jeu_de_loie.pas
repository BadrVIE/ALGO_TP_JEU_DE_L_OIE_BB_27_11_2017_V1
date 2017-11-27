ALGORITHME: Jeu_de_l'oie
//BUT: le jeu de l'oie 
//Entree: la validation pour continuer
//Sorties: Le jeu sous forme d'entier

CONST : 

départ <- 0:ENTIER
fin <- 66:ENTIER
double <- 9:ENTIER
pas de double <- 63:ENTIER
mort <- 58:ENTIER
min <- 2:ENTIER
max <- 12:ENTIER

VAR : dés, place :ENTIER

DEBUT 
	Ecrire "Appuyez sur ENTRER pour commencer le jeu de l'oie"
	Lire
	dés <- 0
	place <- 0

	Ecrire "Vous commencez à la case départ",place 
	REPETER
	Ecrire "ENTRER pour continuer"
	Lire
	Ecrire "lance les deux dés"
	dés <- aleatoire (min,max)
	Ecrire dés "obtenu"
	place <- (dés+place)
	Ecrire "Vous allez à la case", place

	SI(place=mort) et (place <> pas double)ALORS 
	place <- 0
	Ecrire "Votre jet est doublé, vous allez donc à la case", place

	FINSI 

	SI (place=mort)ALORS 
	place <- 0
	Ecrire "Vous etes sur la case tete de mort"
	Ecrire "Retour à la case depart"

	FINSI 

	SI (place>fin)ALORS
	place <-(place-(place-fin))
		Ecrire "Vous allez à la case",place 
	FINSI

	SI (place Mod double=0) et (place <> pas double)ALORS 
		place <- dos+place
		Ecrire "Votre jet est doublé, donc vous allez à la case",place 
	FINSI

	SI (place=mort) ALORS
	place <- 0 
	Ecrire "Vous etes sur la case tete de mort"
	Ecrire "retour à la case départ"
	FINSI

	SI (place>fin) ALORS
	place <- (place-(place-fin))
	Ecrire "Vous allez à la case",place 
	FINSI
	Jusqu'à (place=fin)
	Ecrire "Vous avez gagné"

FIN 