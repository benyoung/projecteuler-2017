#!usr/bin/python
import cProfile
import re

# Completed problems: 34,35,47,37,69,78
# Completed set 2: 52, 55, 65, 64, 1, 76, 53, 57

# interesting problems: 84?, poker hands 54

# Problem 45 (not working) working on Helen's ... alternative on Elisa's

def T(n):
	return n*(n+1)/2
	
def P(n):
	return n*(3*n-1)/2

def H(n):
	return n*(2*n-1)

#for k in range(100,1000):
#	for j in range(k, 2*k):
#		for i in range(j,3*j):
#			#print i,j,k
#			pj = P(j)
#			if (pj == H(k)) and (pj == T(i)): print i,j,k,pj

# Problem 34 ... pretty slow, 4000000 is way bigger than necessary, try < 100000

#fsum = 0
#for i in range(3, 4000000):
#	x = str(i)
#	xsum = 0
#	for j in range(0, len(x)):
#		xsum = xsum+ factorial(int(x[j]))
#	if (xsum == i): 
#		print xsum, i
#		fsum = fsum+xsum
#print fsum
		
# Problem 35

#def circularp(n):
#	x = str(n)
#	for i in range(0,len(x)):
#		this_perm = ""
#		for j in range(i, i+len(x)):
#			this_perm = this_perm+x[j%len(x)]
#		if int(this_perm) in Primes(): continue
#		else: return False
#	return True

#print circularp(197), circularp(13), circularp(247)

#count = 0
#for i in range(1,1000000):
#	if circularp(i): count = count+1
#print count 

# Problem 47

#def primeD(n):
#	count = 0
#	for i in divisors(n):
#		if i in Primes(): count = count + 1
#	return(count)
	

#f = 4
#solution = False
#n = 1
#while not solution:
#	if (primeD(n) == f): 
#		if (primeD(n+1) == f):
#			if (primeD(n+2) == f):
#				if (primeD(n+3)==f):
#					solution = True
#					print n
#				else: n = n+4
#			else: n = n+3
#		else: n = n+2
#	else: n=n+1

# Problem 37

#def RTruncatable(n):
#	x = str(n)
#	for i in range(0, len(x)-1):
#		x = x[:-1]
#		if int(x) in Primes(): continue
#		else: return False
#	return True
	
#def LTruncatable(n):
#	x = str(n)
#	for i in range(0, len(x)-1):
#		x = x[1:]
#		if int(x) in Primes(): continue
#		else: return False
#	return True
	
#print LTruncatable(3797), LTruncatable(315), LTruncatable(23)

#P = Primes()
#count = 0
#n=5
#psum = 0
#while (count < 11):
#	m = P.unrank(n)
#	if (RTruncatable(m) and LTruncatable(m)): 
#		print m
#		count = count + 1
#		psum = psum + m
#	n = n+1
#print psum

# Problem 75 Use dictionary of lengths?
# way too slow ... haven't gotten an answer
# need totally different method I think
#d = {}
#count = 0

#for a in range(1,100):
#	for b in range(a+1,100):
#		c2 = a^2+b^2
#		if c2.is_square:
#			s= a+b+sqrt(c2)
#			if s in d.keys(): d[s] = d[s]+1
#			else: d[s] = 1
#for i in range(1,10000):
#	if ((i in d.keys()) and (d[i] == 1)): count = count+1
#print count, d[120]

# Problem 69 euler_phi(n)

#maxnt = 0
#maxn = 0

#for n in range(4,1000001):
#	nt = n/euler_phi(n)
#	if nt > maxnt: 
#		maxnt = nt
#		maxn = n
#print maxnt, maxn 

# Problem 78 ... a bit slow 

#pn = 0
#solution = False
#n = 5
#while not (Partitions(n).cardinality()%1000000 == 0): n = n+1
#print n
	

# Problem 43 on Helen's List

# Problem 52

#def checkMult(x):
#	s1 = sorted(list(str(x)))
#	for i in range(2,7):
#		si = sorted(list(str(i*x)))
#		if not s1 == si: return False
#	return True

#solution = False
#n=2
#x = 0
#while not solution:
#	minb = 10^n
#	maxb = 10^(n+1)/3
#	for i in range(minb,maxb+1):
#		if checkMult(i): 
#			solution = True
#			x = i
#			break
#	n = n+1
#print x

# Problem 55

#def reverse(n):
#	orig = n
#	rev = 0
#	last = 0
#	while orig > 0:
#		last = orig % 10
#		rev = rev*10 + last
#		orig = orig//10
#	return rev
	
#def palindrome(n):
#	s = str(n)
#	for i in range(0,len(s)/2):
#		if not s[i] == s[len(s)-i-1]: return False
#	return True

##print palindrome(212), palindrome(3443), palindrome(167)
	
##print reverse(94571)

#def lychrel(n):
#	current = n
#	new = 0
#	for i in range(1,51):
#		new = current +reverse(current)
#		if palindrome(new): return False
#		current = new
#	return true
##print lychrel(4994)
#count = 0
#for i in range(1,10000):
#	if lychrel(i): count = count + 1
#print count
		
# Problem 65

#n = continued_fraction(e).numerator(99)
##print n
#s = str(n)
#dsum = 0
#for i in range(len(s)):
#	dsum = dsum + int(s[i])
#print dsum

# Problem 64
# better way to do this?

#def period(n):
#	if n.is_square(): return 0
#	s = QuadraticField(n).gen()
#	c = continued_fraction(s)
#	return len(c.period())
	
##print period(2), period(13)
	
#count = 0
#for i in xsrange(1, 10001):
#	if period(i)%2 == 1: count = count+1
#print count
	
# Problem 1

#nsum = 0
#for i in range(1,1000): 
#	if ((i% 5 == 0) or (i%3 ==0)): 
#		nsum = nsum+i
#print nsum

# Problem 76

#print Partitions(100).cardinality()-1
	
# Problem 53

#def choice(n,k):
#	return factorial(n)/(factorial(k)*factorial(n-k))

#count = 0
#for n in range(1, 100+1):
#	for k in range(0,n+1):
#		if choice(n,k)>1000000: count = count + 1
#print count

# Problem 57
#count = 0
#c = continued_fraction(sqrt(2))
#for i in range(1, 1000):
#	if len(str(c.numerator(i))) > len(str(c.denominator(i))): count = count + 1
#print count
	
# Problem 66

#maxD = 0
#maxx = 0
#solution = False
#for D in xsrange(2, 1000):
#	solution = false
#	if not D.is_square():
#		a= continued_fraction(sqrt(D))
#		#print a
#		n=0
#		h = a.numerator(n)
#		k = a.denominator(n)
#		while h^2-D*k^2 != 1:
#			n = n+1
#			h = a.numerator(n)
#			k = a.denominator(n)
#		if h > maxx: 
#			maxx= h
#			maxD = D
		
		
#print maxD, maxx


