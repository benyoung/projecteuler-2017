#!usr/bin/python

# finished 70, 36, 49, 71, 72, 73

# not done 77, 87, 74


import cProfile
import re
#cProfile.run('find_n(10000000)') example of how this works


# Problem 70 
# Really slow

#def euler_permutation(n):
#	sn = sorted(str(n))
#	en = sorted(str(euler_phi(n)))
#	if sn == en: return True
#	else: return False
#	
#def ep_minimum(m):
#	minn = m
#	minratio = m
#	#print minratio
#	for i in range(2, m):
#		if  euler_permutation(i): 
#			ratio = i / euler_phi(i)
#			#print ratio < minratio, minratio
#			if ratio < minratio:
#				print minratio, ratio
#				minratio = ratio
#				minn = i
#	return minn
#print euler_permutation(87109)
#print ep_minimum(10000000)


# Problem 36

def palindrome(s):
	for i in range(0,len(s)/2):
		if not s[i] == s[len(s)-i-1]: return False
	return True

#dbpsum = 0
#for i in range(1, 1000000):
#	if palindrome(str(i)) and palindrome(Integer(i).binary()): dbpsum = dbpsum+i
	
#print dbpsum


#print palindrome(str(45674))


# Problem 49

#for i in range(1001,9999):
#	if i in Primes():
#		for j in range(1,(9999-i)/2):
#			if i+j in Primes():
#				if sorted(str(i)) == sorted(str(i+j)):
#					if i+j+j in Primes():
#						if sorted(str(i+j+j)) == sorted(str(i)):
#							print i, i+j, i+j+j		
		
# Problem 77
# Need a better way to do this

#def prime_partitions(n):
#	p = Partitions(n).list()
#	#print p
#	for i in reversed(range(0, len(p))):
#		for j in p[i]:
#			if not j in Primes(): 
#				p.pop(i)
#				break
#	return len(p)
	
#print prime_partitions(125)

#total = 0
#n = 10
#while total < 5001:
#	total = prime_partitions(n)
#	n = n+1
				
#print n-1

# Problem 71

#l = []
#maxd = 1000000
#f = 1
#for q in range(1, maxd+1):
#	for p in range(3*q/7-1,3*q/7+2):
#		l.append(QQ(p)/QQ(q))
#l = sorted((l))
##print l
## find 3/7

#for i in range(0,len(l)):
#	if l[i] == QQ(3/7): 
#		print l[i-1]
#		break
	
# Problem 72
#l=[]
#count = 0
#maxd = 1000000

#for i in range(2, maxd+1):
#	count = count + euler_phi(i)
#print count
#for q in range(1,maxd+1):
#	for p in range(1,q/2+1):
#		if gcd(p,q)==1:
#			count = count +1
#			#l.append(QQ(p)/QQ(q))
#print 2*count-1

# Problem 73

#count = 0
#maxd = 12000
#for q in range(1, maxd+1):
#	for p in range(q/3, q/2+1):
#		if gcd(p,q) == 1 and QQ(p)/QQ(q) < 1/2 and QQ(p)/QQ(q) > 1/3:
#			count = count+1
#print count
	
# Problem 87 not correct :(


#P = Primes()

#def run_5(sq,cu):
#	count = 0
#	i=0
#	maxsum = 0
#	maxbound = 50000000
#	while maxsum < maxbound:
#		this_sum = sq^2+cu^3+P.unrank(i)^4
#		#print this_sum
#		if this_sum < maxbound: count = count + 1
#		i = i+1
#		maxsum = this_sum
#	return count		

#def run_3(sq):
#	count = 0 
#	i = 0
#	cu = P.unrank(i)
#	#maxsum = 0
#	maxbound = 50000000
#	while sq^2+cu^3 + 2^4 < maxbound:
#		count = count + run_5(sq,cu)
#		i = i+1
#		cu = P.unrank(i)
#	return count

#count = 0 
#i = 0
#sq = P.unrank(i)
##maxsum = 0
#maxbound = 50000000
#while sq^2+2^3 + 2^4 < maxbound:
#	count = count + run_3(sq)
#	i=i+1
#	sq = P.unrank(i)
#

#print count

# Problem 74

#def factorial_chain(n):
#	count = 0
	
#	loop = False
#	current = str(n)
#	d = {}
#	nex = 0
#	while not d.has_key(nex):
#		for i in range(0,len(list(current))):
#			nex = nex + factorial(int(current[i]))
#		count = count + 1
#		d[current] = True
#		current = nex
#	return count
#print factorial_chain(145)



