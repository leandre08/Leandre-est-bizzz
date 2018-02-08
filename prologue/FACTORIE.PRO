trace
domains
 	nb = real
predicates
	facts(nb,nb)
clauses
	facts(0,1):-!.
	facts(N,F):-
		N1 = N-1,
		facts(N1,F1),
		F = N*F1.