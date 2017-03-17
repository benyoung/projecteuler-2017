#!/usr/bin/python

import time

#3.8 Exercises

#1
#C = CyclicPermutationGroup(8)
#D = DihedralGroup(4)

#2
#print C.order()
#print D.order()
#print C.is_abelian()
#print D.is_abelian()

#3
#print C.cayley_table()
#print D.cayley_table()

#5 
#L = C.subgroups()
#for H in L:
#	if H.order() == 4:
#		SG = H

#print SG.cayley_table()

#M = D.subgroups()
#sglist = []
#for H in M:
#	if H.order() == 4:
#		sglist.append(H)

#for i in range(len(sglist)):
#	print sglist[i].cayley_table()

#sglist[0] has a different structure than the four element sg of C

#6
#elementlist = list(C)
#H = C.subgroup([elementlist[2]])
#print H == SG

#elementlistD = list(D)
#print elementlistD
#J = D.subgroup([elementlistD[2]])
#print J == sglist[1]
#K = D.subgroup([elementlistD[4], elementlistD[5]])
#print K == sglist[0]
#N = D.subgroup([elementlistD[1], elementlistD[7]])
#print N == sglist[2]

#15.7

#1
#D = DihedralGroup(20)
#K = D.commutator()
#H = D.quotient(K)
#H.is_abelian()
#H.order()
#H.cayley_table()
#H.is_isomorphic(KleinFourGroup())

#2 

#A = AlternatingGroup(5)
#L = []
#for d in divisors(60):
#	if d in Primes():
#		L.append(d)

def all_sylow(G,p):
	scriptP = []
	P = G.sylow_subgroup(p)
	for x in G:
		H = P.conjugate(x)
		if not (H in scriptP):
			scriptP.append(H)
	return scriptP

#distinctelts = set()

#for i in L:
#	for G in all_sylow(A,i):
#		for elt in list(G):
#			distinctelts.add(A(elt))

#print len(distinctelts)

#for i in L:
#	print "prime: %d" %i
#	print "number of sylow subgroups:"
#	print len(all_sylow(A, i))


	
#S2 = A.sylow_subgroup(2)
#S3 = A.sylow_subgroup(3)


#4

#D = DihedralGroup(18)
#H = D.sylow_subgroup(3)
#a = D("(1,7,13)(2,8,14)(3,9,15)(4,10,16)(5,11,17)(6,12,18)")
#b = D("(1,5)(2,4)(6,18)(7,17)(8,16)(9,15)(10,14)(11,13)")
#K = D.subgroup([a, b])

#distinctconj = []
#for g in H:
#	J = K.conjugate(g)
#	if not (J in distinctconj):
#		distinctconj.append(J)
#print len(set(distinctconj))

#N = D.normalizer(K)
#Int = N.intersection(H)

#print H.order()/Int.order()


#16.7

#Multiply two integers using chinese remainder theorem

def fast_mult(a, b):
	x1 = (a % 95) *(b % 95)
	x2 = (a % 97) *(b % 97)
	x3 = (a % 98) *(b % 98)
	x4 = (a % 99) *(b % 99)
	return crt([x1, x2, x3, x4], [95, 97,98,99])

#start_time = time.time()

print fast_mult(2134, 1531)

#print "It took", time.time() - start_time, "to use the fast multiplication function"

#next_time = time.time()

print 2134*1531

#print "It took", time.time() - next_time, "to multiply the numbers"


def gen_fast_mult(a, b, n):
	res = []
	mod = []
	mod.append(95)
	for i in range(n-1):
		m = mod[i]
		mnew = mod[i] +1
		y = False
		while y == False:
			y = True
			for j in range(len(mod)):
				if gcd(mnew, mod[j]) != 1:
					y = False
			if y == True:
				mod.append(mnew)
			if y == False:
				mnew = mnew + 1
	for i in range(len(mod)):
		res.append((a % mod[i]) * (b % mod[i]) )
	return crt(res, mod)

#print gen_fast_mult(2134, 1531, 4)

#16.10

#1

#R = Integers(11)
#S = Integers(12)
#print R.is_finite()
#print R.is_commutative()
#print R.is_integral_domain()
#print R.is_field()
#print S.is_finite()
#print S.is_commutative()
#print S.is_integral_domain()
#print S.is_field()
#print R.order()
#print R.list()
#print R.one()
#print S.order()
#print S.list()
#print S.one()
				
#2

#R = Integers()

#print R.ideal(3, 5)
#print R.ideal(4, 6)
#print R.ideal(5, 10)

#def test_obs(a, b):
#	if R.ideal(a, b) == R.ideal(gcd(a,b)):
#		return True
#	else:
#		return False

#for i in range(100):
#	a = ZZ.random_element()
#	b = ZZ.random_element()
#	print test_obs(a, b)
	

#3

#F.<t>= FiniteField(3^4)
#print F.list()
#print F.gens()
#u = F.0
#for i in range(80):
#	print u^i
#print F.modulus()
#u^4 = t^3 + 1, which makes sense because in F, t^4 = -2t^3 -2 = t^3 + 1 (mod 3)

#4

#P.<z> = Integers(7)[]
#K = P.ideal(z^2 + z + 3)
#H = P.quotient(K)
#print H.is_field()
#print H.gens()
#u = H.0
#print u^2

#17.7

#R.<x> = Integers(5)[]
#p= x^3 - 3*x + 4
#print p.is_irreducible()
#F.<a> = FiniteField(5^3)
#S.<y> = F[]
#q = y^3 - 3*y + 4
#print q.factor()
#V.<t> = QQ[]
#r = t^3 - 3*t + 4
#print r.is_irreducible()
#L.<s> = RR[]
#m = s^3 - 3*s + 4
#print m.factor()
#W.<z> = CC[]
#f = z^3 - 3*z + 4
#print f.factor()


#20.3

F.<a> = FiniteField(5^3)
m = matrix(Integers(5), 3,3, [2, 4, 6, 9, 1, 2, 5, 3, 9] )
print m
V = F.vector_space()
print V.basis()
x = V.random_element()
#x = vector(Integers(5),[1, 2, 3])
print "This is the random element: %r" %x
print m*x
print F(m*x)


#part (a)
R = matrix(Integers(5), 3,3, [2, 4, 6, 9, 1, 2, 0,0,0] )

x = V.random_element()
y = V.random_element()
print R*(x+y) == R*x + R*y
c = Integers(5).random_element()
print R*(c*x) == c*R*x
