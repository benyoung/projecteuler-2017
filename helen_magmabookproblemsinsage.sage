#!/usr/bin/python

#Exercise 3.6 

#print len(list(graphs(4)))
#print len(list(graphs(7)))

#G = graphs.BuckyBall()
#plot(G).save('buckyball.png')


#Exercise 3.7

#count = 0
#for i in range(1000):
#	G = graphs.RandomGNP(5, 0.6)
#	if G.is_connected():
#		count = count + 1

#print count

#Exercise 4.6

#R.<x,y> = LaurentPolynomialRing(QQ, 2)

#m = matrix(R, [[x, x + x^(-1), y + x*y + y^(-1)], [1, x*y^2 - y*x^2, x*y^(-1)], [x^2 + x^(-2), 1/2, y^(-1)*x^(-1)-y^2] ]);



#Exercise 5.1
#Don't have GAP's “Table of Marks” library
#A = AlternatingGroup(7)

#S = SymmetricGroup(7)
#sglst = []

#for H in S.subgroups():
#	if H.order() % 14 == 0 and H.is_subgroup(A):
#		if H.is_isomorphic(A):
#			print "True"
#		elif H.is_isomorphic(PSL(2, 7)):
#			print "True"
#		else:
#			print "False"
#print "done"

#Exercise 5.2

#S = SymmetricGroup(6)

#count = 0
#for H in S.conjugacy_classes_subgroups():
#	if H.is_nilpotent():
#		count = count + 1
	
#print count

#Exercise 5.3

#Q = QuaternionGroup()
#Z = Q.center()
#K1 = direct_product_permgroups([Z,Z])
#DP1 = direct_product_permgroups([Q, Q]).quotient(K1)

#D = DihedralGroup(4)
#W = D.center()
#K2 = direct_product_permgroups([W,W])
#DP2 = direct_product_permgroups([D,D]).quotient(K2)

#print DP1.is_isomorphic(DP2)

#Exercise 5.4

#G = PSL(2, 11)
#S2 = G.sylow_subgroup(2)
#L = []
#for g in list(S2):
#	print g
#	print G.conjugacy_class(g)
#	L.append(G.conjugacy_class(g))

#print L[0] == L[1]
#print L[1] == L[2]
#print L[2] == L[3]

#Exercise 5.5

#F.<a, b> = FreeGroup()
#G = F/[a^4, a^2*b^-2, b^-1*a*b*a]
#G1 = G.as_permutation_group()
#print G1.is_isomorphic(Q)
