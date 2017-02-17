#------Problem 80--------
#def sumsr(a):
#	n=numerical_approx(sqrt(a), prec=500)
#	x=str(n)
#	y=int(x.replace('.', ''))
#	l=[int(j) for j in str(y)]
#	l1=l[0:100]
#	y=sum(l1)
#	return y

	
	
#s=0
#for i in range (1, 101):
#	if sqrt(i) not in QQ:
#		s=s+sumsr(i)
		
#print s


#------Problem 85--------
#def numrecs(m, n):
#	return m*(m+1)*n*(n+1)/4
	

#l=[]
#M=[]
#for m in range(1, 100):
#	for n in range(1, 100):
#		if numrecs(m, n)<2000000:
#			l.append(numrecs(m, n))
#			M.append((m, n))

#print max(l)
#i=l.index(max(l))
#print M[i]



#------Problem 91--------
#...


#------Problem 92--------
#def sumsqdig(a):
#	l=[int(i) for i in str(a)]
#	s=sum(i*i for i in l)
#	return s

#def numchain(n):
#	l1=[]
#	while n not in l1:
#		l1.append(n)
#		n=sumsqdig(n)
#	return l1

#count=0
#for i in range(1, 10000000):
#	if 1 in numchain(i):
#		count=count+1
#		print numchain(i)
#print count

#ans: 1418853




#------Problem 97--------
#x= 28433*2^(7830457)+1
#l=[int(i) for i in str(x)]
#print l[-10:]



#------Problem 104--------
#def fib(n):
#	fo=1
#	fn=1
#	for i in range(1, n-1):
#		fc=fo+fn
#		fo=fn
#		fn=fc
#	return fc

#def fibpan(n):
#	S=set(range(1, 10))
#	l=[int(i) for i in str(fib(n))]
#	if set(l[-9:])==S and len(set(l[:9]))==S:
#		print l[-9:]
#		return True
#	else:
#		return False
	

#i=10000
#while fibpan(i)==False:
#	print i
#	i=i+1

#print i


#------Problem 40--------
#L=range(1, 1000000)
#st=''.join(str(e) for e in L)
#l=[int(i) for i in st]
#prod=1
#for i in range(0, 7):
#	prod=prod*l[10^i-1]

#print prod
		


#------Problem 46--------

def isgolb(n):
	for i in range(1, ceil(sqrt(n/2))):
		if n-2*i^2 in Primes():
			return True
			break
		else: continue 
	return False


L=[a for a in range(2, 10000) if a not in Primes() and a%2==1]
for i in range(1, len(L)):
	n=L[i]
	if isgolb(n)==False:
		print n
		break

#or n in range(1, 100):
	#for a in range(1, ceil(sqrt(n/2))):
#		if n-2*a^2 not in Primes():
#			print n
#			break






