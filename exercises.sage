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
