#!usr/bin/python

# Graph Theory

L=graphs.CycleGraph(5)
for edge in L.edges():
	u = edge[0]
	v = edge[1]
	L.set_edge_label(u,v,u*v)
#plot(L,edge_labels=True).save("labeledGraph.png")

# Magma 3.6
	
#iso classes of graphs on 4 vert
#print len(list(graphs(4)))
#iso classes of graphs on 7 vert
#print len(list(graphs(7)))

# Magma 3.7
n=1000
count=0
for i in range(1,n):
	G=graphs.RandomGNP(5,.6)
	if G.is_connected():
		count = count+1
print count

# Partitions 
P = Partition([4,3,1,1])
print P.pp()

# 4.7
#R.<x,y> = LaurentPolynomialRing(QQ,2)
#M = matrix(R,3,3,[x, x+x^(-1),y+x*y+y^(-1),1,x*y^2-y*x^2,x*y^(-1),x^2+x^(-2),1/2,(x*y)^(-1)-y^2])
#print M
#print det(M)


# 5.1

#A7 = AlternatingGroup(7)
#L = A7.conjugacy_classes_subgroups()
#candidates=[]

#for group in L:
#	#print group.order()
#	if group.order() % 14 == 0:
#		candidates.append(group)
#print candidates
#for group in candidates:
#	if group.is_isomorphic(A7) or group.is_isomorphic(PSL(2,7)):
#		print "true"
	#print group
	#print group.is_isomorphic(A7)
	#print group.is_isomorphic(PSL(2,7))


# 5.2 

# How many nilpotent subgroups of S6?

S6 = SymmetricGroup(6)
L = S6.conjugacy_classes_subgroups()
nilpotent = []
for group in L:
	if group.is_nilpotent(): nilpotent.append(group)
print len(nilpotent)

# got 25 as answer again

#5.3 Construct quaternion group, prove central products D8*d8 and Q8*Q8 iso

Q8 = groups.presentation.Quaternion
D8 = groups.presentation.Dihedral
