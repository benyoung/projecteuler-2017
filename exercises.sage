#!/usr/bin/python

#Problem 2

sum = 0	
fp = 0
fc = 1
for n in range(1, 3000):
	fn = fp + fc
	fp = fc
	fc = fn
	if fn < 4000000 and fn %2 ==0:
		sum = sum + fn
	
print sum	
	
	
#Problem 3

d = 1 
for i in range(1, int(sqrt(600851475143))):
	if 600851475143 % i == 0 and i in Primes():
		d = i

print d

#Problem 4

def is_palindrome(n):
	#s = str(n)
	l = [int(d) for d in str(n)]
	n = len(l)
	for i in range(len(l)):
		if l[i] != l[ len(l)-i-1]:
			return False
	return True

p=0
for i in reversed(range(900,1000)):
	for j in reversed(range(900,1000)):
		if is_palindrome(i*j) and i*j >p:
			p = i*j
			print i, j

print p
