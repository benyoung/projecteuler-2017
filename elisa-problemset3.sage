#Problem 45 both versions taking too long :(

#)m=10000
#M=50000

#T=[n*(n+1)/2 for n in range(m, M)]
#P=[n*(3*n-1)/2 for n in range(m, M)]
#H=[n*(2*n-1) for n in range(m, M)]

#l=M-m
#S=[]
#for i in range(0, l):
#	if H[i] in P:
#		S.append(H[i])
#print S

#for k in range(0, l):
#	if H[k] in S:
#		print H[k]


#def tr(n):
#	for i in range(int(sqrt(n)), ceil(sqrt(2*n))):
#		if n==i*(i+1)/2:
#			return True 
#	return False

#def pen(n):
#	for i in range(ceil(sqrt(2*n/3)), int(sqrt(n))):
#		if n==i*(3*i-1)/2:
#			return True
#	return False
#	
#def hexag(n):
#	for i in range(int(sqrt(n/2)), ceil(sqrt(n))):
#		if n==i*(2*i-1):
#			return True
#	return False
		

for i in range(100000, 1000000):
	if hexag(i)==True and pen(i)==True and tr(i)==True:
		print i
		break 
		



#-----------------
#Problem 47

#def prfacs(n):
#	L=list(factor(n))
#	P=[L[i][0] for i in range(0, len(L))]
#	return P
	
#for i in range(500, 10000000):
#	if len(prfacs(i))>=4 and len(prfacs(i+1))>=4 and len(prfacs(i+2))>=4 and len(prfacs(i+3))>=4:
#		print i
#		break
	
#-----------------
#Problem 48

#s=0
#for i in range(1, 1001):
#	s=i^i +s
	
	
#l=[int(d) for d in str(s)]
#x=l[len(l)-10:]
#print x

#-------------------
#Problem 53
#count=0
#for n in range(1, 101):
#	for r in range(1, n):
#		if binomial(n, r)>1000000:
#			count=count+1
#print count
	
#-------------------
#Problem 56
#m=0
#for a in range(1, 100):
#	for b in range(1, 100):
#		l=[int(d) for d in str(a^b)]
#		if sum(l)>m:
#			m=sum(l)

#print m


#-------------------
#Problem 69
#m=1
#for i in range(1, 1000000):
#	if i/euler_phi(i)>m/euler_phi(m):
#		m=i

#print m

#---------------------
#Problem 76
#n=100
#x=Partitions(n).cardinality()
#y=x-1
#print y

#---------------------
#Problem 78
#for i in range(1, 10000000):
#	if Partitions(i).cardinality() %1000000 ==0:
#		print i
#		break
		
#---------------------
#Problem 43
