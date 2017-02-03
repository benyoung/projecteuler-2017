#Problem 21

#for a in range (2, 10000):
#	pda=sum(divisors(a))-a
#	pdb=sum(divisors(pda))-pda
#	if pda!=a and pdb==a:
#		s=s+a

#ans=s
#print ans


#-------------------------------
#Problem 23 ...wrong :(

#def ab(n):
#	if sum(divisors(n))-n > n:
#		return True
#		
#l=[]
#for i in range (1, 28123):
#	if ab(i)==True:
#		l.append(i)	

#s=0	
#M=[]	
#for i in range(0, len(l)-1):
#	for j in range(i, len(l)-1):
#		if l[i]+l[j] <28123:
#			M.append(l[i]+l[j])

#X=list(set(M))
#s=sum(X)
		
#print s
	
	
#def sumofab(n):
#	P=Partitions(n, length=2).list()
#	for i in range (0, len(P)):
#		if ab(P[i][0]) and ab(P[i][1]):
#			return True

#s=0
#for i in range(1, 50):
#	if sumofab(i)==True:
#		print i
#		s=s+i

#print s




#-------------------------------
#Problem 27 ...taking too long :(...try to check without storing

#def quadprime(a, b, n):
#	if n^2+a*n+b in Primes():
#		return True

#l=[]	
#for a in range(0, 1000):
#	for b in range(0, 1000):
#		i=0
#		while quadprime(a, b, i):
#			i=i+1
#		l.append(i)
#		if i==max(l):
#			maxa=a
#			maxb=b
#print maxa, maxb


#-----------------------------------
#Problem 28

##Top right corner will be 1001*1001.. 
	##diagonal right from sum will be 1+3*3+5*5+... +1001*1001
	
	
#-----------------------------------
#Problem 29
#l=[]
#for a in range(2,101):
#	for b in range(2, 101):
#		if a^b not in l:
#			l.append(a^b)
#x=len(l)
#print x


#----------------------------------
#Problem 35

#l=[int(d) for d in str(123)]
#x=int(''.join(str(i) for i in l))

#print x



#----------------------------------
#Problem 41

def pprimeslen(n):
	X=range(1, n+1)
	L=Arrangements(X, n).list()
	p=0
	for j in range (0, len(L)):
		x=int("".join(map(str, L[j])))
		if ((x%2==1) and (x in Primes()) and (x>p)):
			p=x
	return p

y=pprimeslen(7)
print y


