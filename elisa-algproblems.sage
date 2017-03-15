#-----15.7----------

#Pr 1
D20=DihedralGroup(20)
G=D20.commutator()
H=D20.quotient(G)
print H.is_abelian()
print H.cayley_table()
print KleinFourGroup().is_isomorphic(H)

#Pr 2
def all_sylow(G, p):
	scriptP=[]
	P= G.sylow_subgroup(p)
	for x in G:
		H=P.conjugate(x)
		if not(H in scriptP):
			scriptP.append(H)
	return scriptP
	
#def prime_divisors(n):
#	L=divisors(n)
#	P=[]
#	for d in L:
#		if d.is_prime():
#			P.append(d)
#	return P
	
#G=AlternatingGroup(5)
#P=prime_divisors(order(G))
#A=[]
#L1=[]
#for p in P:
#	S=all_sylow(G, p)
#	A.append(S)
#	print p, len(S)
#	for a in all_sylow(G, p):
#		for i in a:
#			L1.append(G(i))
#
#print len(L1)
#print len(Set(L1))
#print Set(L1)
		
#Pr4
G=DihedralGroup(18)
H=G.sylow_subgroup(3)
a = G ( " (1 ,7 ,13) (2 ,8 ,14) (3 ,9 ,15) (4 ,10 ,16) (5 ,11 ,17) (6 ,12 ,18) " )
b = G ( " (1 ,5) (2 ,4) (6 ,18) (7 ,17) (8 ,16) (9 ,15) (10 ,14) (11 ,13) " )
K=G.subgroup([a, b])

L=[]
for x in H:
	A=K.conjugate(x)
	if not(A in L):
		L.append(A)

print L
M=list(set(L))
print len(M)

print H.order()/order(G.normalizer(K).intersection(H))


#Pr6

#X=all_sylow(AlternatingGroup(5), 5)

#LL=[]
#for P in X:
#	L=[]
#	for a in AlternatingGroup(5).list():
#		Q=P.conjugate(a)
#		L.append(X.index(Q))
#	LL.append([tuple(L)])

#print LL[0]

#print LL[1]
#G= PermutationGroup([L])
#print G.order()


#MM=[]
#for a in AlternatingGroup(5).sylow_subgroup(5).list():
#	M=[]
#	for P in S5:
#		R=P.conjugate(a)
#		M.append(X.index(R))
#	MM.append([tuple(M)])
	
#H= PermutationGroup([L for L in LL])
#print H.order()
	


#-----20.7----------


#Pr 3
def testOrdGL(n, p, k):
	F=GF(p^k, a)
	G=GL(n, F)
	return G.order()

def OrdGL(n, p, k):
	prod=1
	for i in range(1, n+1):
		prod=prod*((p^k)^n - (p^k)^(i-1))
	return prod 
	
#print OrdGL(2, 3, 2)
#print testOrdGL(2, 3, 2) #getting error "variable name '(1" is not alphanumeric????
	



#Pr 4
#M=ZZ^3
#u=M([1, 0, 0])
#v=M([2, 2, 0])
#w=M([0, 0, 4])
#N=M.submodule([u, v, w])
#print N.basis()
#print N.rank()
#print M==N

##Pr 5
#F=GF(5^3, 'a')
F.<a>=FiniteField(5^3)
K=Integers(5)
V=F.vector_space()

#(a)
R=matrix(K, 3, 3, [1, 1, 1, 0, 1, 1, 0, 0, 0])
print R
w= V.random_element()
z=V.random_element()
u= vector(K, [1, 2, 3])
v= vector(K, [3, 4, 5])
a=Integers(5).random_element()
b=Integers(5).random_element()
print F(V(u))
print R*(2*u+v) == 2*(R*u)+(R*v)
print R*(a*w+b*z) == a*(R*w)+b*(R*z)












		
