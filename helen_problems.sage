#!/usr/bin/python

#Problems 9, 10, 12, 15, 16, 17, 37

#Problem 9 

def is_triplet(a, b, c):
	if a^2 + b^2 == c^2:
		return True
	else:
		return False

for i in range(1,333):
	for j in range(i+1,1000-2*i):
		k = 1000 - i - j
		if is_triplet(i, j, k):
			print i, j, k
			print i*j*k


#Problem 10

total = 0 

for i in range(1, 2000000):
	if i in Primes():
		total = total + i

print total 


#Problem 12

def triangle(n):
	return n*(n+1)/2

n = 1
while number_of_divisors(triangle(n)) < 500:
	n = n+1

print triangle(n)


#Problem 15
#To count the number of lattice paths:
#From the set of n + n steps, choose any n to go down. 

def lattice(n):
	return binomial(n+n, n)

print lattice(20)


#Problem 16

def sum_digits(n):
	l = [int(d) for d in str(n)]
	return sum(l)

print sum_digits(2^1000)

#Problem 17
words = {}
words[1] = "one"
words[2] = "two"
words[3] = "three"
words[4] = "four"
words[5] = "five"
words[6] = "six"
words[7] = "seven"
words[8] = "eight"
words[9] = "nine"
words[10] = "ten"
words[11] = "eleven"
words[12] = "twelve"
words[13] = "thirteen"
words[14] = "fourteen"
words[15] = "fifteen"
words[18] = "eighteen"

words[20] = "twenty"
words[30] = "thirty"
words[40] = "forty"
words[50] = "fifty"
words[60] = "sixty"
words[70] = "seventy"
words[80] = "eighty"
words[90] = "ninety"
words[1000] = "onethousand"

for i in range(16,20):
	if i != 18:
		j = str(i)
		words[i] = words[int(j[1:2])] + "teen"

for i in range(21,100):
	j = str(i)
	k = j[:1] + '0'
	if int(j[1:2]) !=0:
		words[i] = words[ int(k) ] + words[int(j[1:2])]
		
for i in range(100,1000):
	j = str(i)
	k = j[1:2] + '0'
	if int(j[1:2]) !=0:
		if int(j[2:3]) !=0:
			if int(j[1:2]) !=1:
				words[i] = words[ int(j[:1]) ] + "hundred" + "and" + words[ int(k) ] + words[ int(j[2:3]) ] 
			if int(j[1:2]) ==1:
				words[i] = words[ int(j[:1]) ] + "hundred" + "and" + words[ int(j[1:3]) ] 
		if int(j[2:3]) == 0:
			words[i] = words[ int(j[:1]) ] + "hundred" + "and" + words[ int(k) ]
	if int(j[1:2]) == 0:
		if int(j[2:3]) == 0:
			words[i] = words[ int(j[:1]) ] + "hundred"
		if int(j[2:3]) !=0:
			words[i] = words[ int(j[:1]) ] + "hundred" + "and" + words[int(j[2:3])]
			

def count_letters(n):
	total = 0
	for i in range(1,n+1):
		total = total + len(words[i])
	return total

print count_letters(1000)


#Problem 37

def is_right_truncatable(n):
	a = str(n)
	while int(a) in Primes() and len(a) > 1:
		a = a[:-1]
	if len(a) == 1 and int(a) in Primes():
		return True
	else:
		return False
		
def is_left_truncatable(n):
	a = str(n)
	while int(a) in Primes() and len(a) > 1:
		a = a[1:]
	if len(a) == 1 and int(a) in Primes():
		return True
	else: 
		return False

count = 0 
total = 0
n = 20
while count < 11:
	if n in Primes():
		if is_left_truncatable(n) and is_right_truncatable(n):
			total = total + n
			count = count + 1
	n = n+1
	
print total
