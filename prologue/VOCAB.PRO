domains
	mot = symbol
predicates
	syno(mot,mot)
	anto(mot,mot)
	affsyn(mot)
	affant(mot)
	synanto
goal
	synanto.
clauses
	syno(courage,bravoure).
	syno(courage,perseverant).
	syno(intelligent,malin).
	syno(intelligent,rus‚).
	syno(intelligent,brillant).
	syno(petit,court).
	syno(petit,minuscule).
	syno(petit,minime).
	syno(petit,bas).
	syno(joli,beau).
	syno(joli,mignon).
	syno(joli,magnifique).
	anto(courage,peur).
	anto(courage,lƒchet‚).
	anto(intelligent,bˆte).
	anto(intelligent,sot).
	anto(intelligent,idiot).
	anto(petit,grand).
	anto(petit,long).
	anto(petit,geant).
	anto(petit,gros).
	anto(joli,laid).
	anto(joli,vilain).
	anto(joli,hideux).
	anto(joli,moche).
	affsyn(M):-syno(M,S),
		write(S),nl,fail.
	affsyn(M):-write("fin de l'affichage des synonymes de  ",M),nl.
		
	affant(M):-anto(M,A),
		write(A),nl,fail.
	affant(M):-write("fin de l'affichage des antonymes de ",M),nl.

	synanto:-makewindow(1,3,3,"VOCABULAIRE",0,0,25,80),
		 clearwindow,
		 write("Votre mot: "), readln(M),
		affsyn(M),nl,
		affant(M),nl,
		readln(_).