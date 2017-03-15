#!usr/bin/python

#D40 = DihedralGroup(20)
#Dcomm = D40.commutator()
#Quo = D40.quotient(Dcomm)
#print Quo.is_abelian()
#print Quo.cayley_table()
#print Quo.is_isomorphic(KleinFourGroup())


# 2

#A5 = AlternatingGroup(5)

#def all_sylow(G,p):
#	#Form the set of all distinct Sylow p-subgroups
#	scriptP = []
#	P = G.sylow_subgroup(p)
#	for x in G:
#		H = P.conjugate(x)
#		if not(H in scriptP):
#			scriptP.append(H)
#	return scriptP
#distinctElements = set()
#AllSylows= []
#for x in divisors(order(A5)):
#	if x.is_prime():
#		AllSylows.append(all_sylow(A5,x))
#		print x, len(all_sylow(A5,x))
#		for subgroup in all_sylow(A5,x):
#			for a in subgroup.list():
#				distinctElements.add(A5(a))
#print distinctElements
#print len(distinctElements)

#4 


#G = DihedralGroup(18)
#H = G.sylow_subgroup(3)
#a = G( " (1 ,7 ,13) (2 ,8 ,14) (3 ,9 ,15) (4 ,10 ,16) (5 ,11 ,17) (6 ,12 ,18) " )
#b = G( " (1 ,5) (2 ,4) (6 ,18) (7 ,17) (8 ,16) (9 ,15) (10 ,14) (11 ,13) " )
#K = G.subgroup([a,b])
		
#print K

#conjugates = []
#for x in H:
#	A = K.conjugate(x)
#	if not(A in conjugates):
#		conjugates.append(A)

#print len(list(conjugates))
#print order(H)/order(G.normalizer(K).intersection(H))


#16.7 program chinese remainder theorem addition, multiplication

#17.5

F.<a> = FiniteField(5^3)
Z5= Integers(5)
M = matrix(Z5,3,3,[1,1,1,0,1,1,0,0,0])

V = F.vector_space()
print V.basis()
x = V.random_element()
y = V.random_element()
z = vector(Z5,[1,2,3])

print V(y)
print x 
print M*V(y)
print F(M*x), M*x
print M


# (a)

R = matrix(Z5,3,3,[1,0,0,0,1,0,0,0,0])
#check homomorphism
print R*(3*x+y) == 3*R*x+R*y
