domains
	nville = symbol
predicates
	ville(nville)
	afftopville
clauses
	ville(abidjan).
	ville(bouake).
	ville(yamoussoukro).
	ville(daloa).
	ville(korhogo).
	ville(san_pedro).
	ville(gagnoa).
	ville(bassam).
afftopville:-   ville(V),
		write(V),nl,
		V = daloa,!,
		write("faire la suite"),nl.