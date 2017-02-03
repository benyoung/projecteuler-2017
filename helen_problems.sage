#!/usr/bin/python

<<<<<<< HEAD
import cProfile
import re

#Problems 9, 10, 12, 15-17, 21, 23, 24, 35, 37, 42, 43, 45-48, 65, 69, 70, 74, 76, 92

#Problem 9 

#def is_triplet(a, b, c):
#	if a^2 + b^2 == c^2:
#		return True
#	else:
#		return False

#for i in range(1,333):
#	for j in range(i+1,1000-2*i):
#		k = 1000 - i - j
#		if is_triplet(i, j, k):
#			print i, j, k
#			print i*j*k
=======
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
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56


#Problem 10

<<<<<<< HEAD
#total = 0 

#for i in range(1, 2000000):
#	if i in Primes():
#		total = total + i

#print total 
=======
total = 0 

for i in range(1, 2000000):
	if i in Primes():
		total = total + i

print total 
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56


#Problem 12

<<<<<<< HEAD
#def triangle(n):
#	return n*(n+1)/2

#n = 1
#while number_of_divisors(triangle(n)) < 500:
#	n = n+1

#print triangle(n)
=======
def triangle(n):
	return n*(n+1)/2

n = 1
while number_of_divisors(triangle(n)) < 500:
	n = n+1

print triangle(n)
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56


#Problem 15
#To count the number of lattice paths:
#From the set of n + n steps, choose any n to go down. 

<<<<<<< HEAD
#def lattice(n):
#	return binomial(n+n, n)

#print lattice(20)
=======
def lattice(n):
	return binomial(n+n, n)

print lattice(20)
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56


#Problem 16

<<<<<<< HEAD
#def sum_digits(n):
#	l = [int(d) for d in str(n)]
#	return sum(l)

#print sum_digits(2^1000)
=======
def sum_digits(n):
	l = [int(d) for d in str(n)]
	return sum(l)

print sum_digits(2^1000)
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56

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

<<<<<<< HEAD
#print count_letters(1000)



#Problem 21

def is_amicable(a):
	b = sum(divisors(a)) - a
	if a == sum(divisors(b)) - b and a!= b: 
		return True
	else:
		return False

#total = 0
#for i in range(2,10000):
#	if is_amicable(i):
#		total = total + i
#	i = i+1

#print total

#Problem 23
#This took about six minutes :(

#divisors(n) gives all divisors including n
def is_abundant(n):
	if sum(divisors(n)) - n > n:
		return True
	else:
		return False

def is_two_abundant(n):
	for i in range(11,ceil((n+1)/2)):
		if is_abundant(i):
			if is_abundant(n-i):
				return True
	else:
		return False

#total = 0
#for i in range(1,28124):
#	if not is_two_abundant(i):
#		total = total + i
#	i = i+1

#print total


#Problem 24

#import sage.combinat.permutation as permutation

#Finds the millionth permutation of the integers 1 through 10
#p = permutation.from_rank(10,999999)
#So we need to decrease each element of the permutation by 1
#q = [elem - 1 for elem in p]
#print q



#Problem 35

def is_circular(n):
	l = [int(m) for m in str(n)]
	for i in range(1,len(l)):
		r = []
		for j in range(len(l)-i):
			r.append(l[j + i])
		for k in range(i):
			r.append(l[k])
		s = ''.join(str(x) for x in r)
		if int(s) not in Primes():
			return False
	return True

count = 0
for i in range(1000000):
	if i in Primes():
		if is_circular(i):
			count = count + 1

print count
=======
print count_letters(1000)
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56


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
<<<<<<< HEAD
#while count < 11:
#	if n in Primes():
#		if is_left_truncatable(n) and is_right_truncatable(n):
#			total = total + n
#			count = count + 1
#	n = n+1
	
#print total


#Problem 42

#text = open('p042_words.txt', 'r')

#list of triangle numbers
#triangle = []
#for i in range(1,30):
#	triangle.append(i*(i+1)/2)

#list of words in the text file
#words = []
#words = [word for line in open('p042_words.txt', 'r') for word in line.split('","')]

#Delete quotation marks from first word and last word (there must be a better way to do this)
#words[0] = words[0][1:]
#words[len(words)-1] = words[len(words)-1][:-1]

#find word value:
#def word_value(word):
#	l = list(word)
#	value = 0
#	for i in range(len(l)):
#		value = value + ord(l[i]) - 64
#	return value

#count = 0
#for i in range(len(words)):
#	if word_value(words[i]) in triangle:
#		count = count + 1

#print count


#Problem 43
#Pretty slow

#P = Permutations(10).list()

#sum = 0
#for p in P:
#	q = [elem - 1 for elem in p]
#	s = ''.join(str(x) for x in q)
#	if int(s[1:4]) %2 == 0:
#		if int(s[2:5]) %3 == 0:
#			if int(s[3:6]) %5 == 0:
#				if int(s[4:7]) %7 == 0:
#					if int(s[5:8]) %11 == 0:
#						if int(s[6:9]) %13 == 0:
#							if int(s[7:10]) %17 == 0:
#								sum = sum + int(s)

#print sum


#X = range(10)
#A = Arrangements(X,3).list()

#l = []
#l4 = []
#l5 = []
#l6 = []
#l7 = []
#l8 = []
#l9 = []
#for a in A:
#	s = ''.join(str(x) for x in a)
#	if int(s) % 17 == 0:
#		l.append(a)


#def make_list(l, p):
#	l2 = []
#	for item in l:
#		for i in range(0, 10):
#			if i not in item:
#				s = str(i) + str(item[0]) + str(item[1])
#				if int(s) % p == 0:
#					l2.append([i] + list(item))
#	return l2

#l4 = make_list(l, 13)
#l5 = make_list(l4, 11)
#l6 = make_list(l5, 7)
#l7 = make_list(l6, 5)
#l8 = make_list(l7, 3)
#l9 = make_list(l8, 2)
#l10 = make_list(l9, 1)

#print l10

#total = 0
#for item in l10:
#	s = ''.join(str(x) for x in item)
#	total = total + int(s)
	
#print total


#Problem 45
#for m in range(20000,30000):
#	a = m*(2*m-1) #start with hexagonal numbers
#	for n in range(int(sqrt(a)), ceil(sqrt(2*a))+1):
#		if a == n*(n+1)/2: #check if triangular
#			for i in range(int(sqrt(2*a/3)), ceil(sqrt(a)) + 1):
#				if a == i*(3*i-1)/2:
#					print a

#Problem 46

def can_write(n):
	for i in range(n-1):
		if i in Primes():
			k = n-i
			if k % 2 == 0:
				if is_square(k/2):
					return True
	else:
		return False

#i = 33
#while i in Primes() or can_write(i):
#	i = i+2

#print i 

#Problem 47


def four_distinct(n):
	d = []
	d = divisors(n)[:-1]
	count = 0
	for i in range(len(d)):
		if d[i] in Primes():
			count = count + 1
	if count == 4:
		return True
	else:
		return False
		
#tally = 0 
#n = 2*3*5*7
#while tally < 4:
#	if n in Primes():
#		n = n+1
#		tally = 0
#	elif four_distinct(n):
#		tally = tally + 1
#		n = n+1
#	else:
#		tally = 0
#		n = n+1

#print n-4, n-3, n-2, n-1

#Problem 48

#total = 0

#for n in range(1,1001):
#	total = total + n^n
	
#print total
#s = str(total)
#print s[len(s)-10:len(s)]

#Problem 65

#cf = continued_fraction(e)
#s = cf.numerator(99)
#print sum(int(x) for x in str(s))

#Problem 69

#largest = 0
#n = 0

#for i in range(1,1000001):
#	if i/euler_phi(i) > largest:
#		largest = i/euler_phi(i)
#		n = i
		
#print largest, n

#Problem 70
#Takes 71 seconds


def find_n(r):
	smallest = 10000
	n = 0
	for i in range (2, r):
		if i/euler_phi(i) < smallest:
			num = [int(m) for m in str(i)]
			phi = [int(m) for m in str(euler_phi(i))]
			if len(num) == len(phi):
				if sorted(num) == sorted(phi):
					smallest = i/euler_phi(i)
					n = i
	return n

#print find_n(10000000)

#cProfile.run('find_n(10000000)')

#Problem 71
#This is not working!!

#from fractions import Fraction

#l = []

#for d in range(2,9):
#	for n in range(1, d):
#		if gcd(n, d) ==1 :
#			l.append(Fraction(n,d))

#l2 = sorted(l)
#a = l2.index(Fraction(3,7))


#Problem 74
#Adding a dictionary made it much faster, but it still takes 70 seconds

#d = {}
#def find_next(n):
#	l = [int(m) for m in str(n)]
#	s = 0
#	for i in range(len(l)):
#		s = s + factorial(l[i])
#	d[n] = s
#	return s

#def chain_length(n):
#	lst = [n]
#	a = find_next(n)
#	while a not in lst:
#		lst.append(a)
#		if a in d:
#			a = d[a]
#		else:
#			a = find_next(a)
#	return len(lst)

#def find_count(r):
#	count = 0
#	for i in range(r):
#		if chain_length(i) == 60:
#			count = count + 1
#	print count
#	return count

#cProfile.run('find_count(1000000)')
	

#Problem 76

#print Partitions(100).cardinality()

#Problem 77

#This is not going to work
#def write_as_sum(n):
#	count = 0
#	for i in range(1,n):
#		if i in Primes() and n-i in Primes():
#			print i, n-i
#			count = count + 1
#			for j in range(i, n):
#				if j in Primes():
#					if n - i - j in Primes():
#						print i, j, n-i-j
#						count = count + 1
#	return count

#print write_as_sum(10)


#Problem 92
#Slow, took 126 seconds
d = {}

def find_next(n):
	l = [int(m) for m in str(n)]
	s = 0
	for i in range(len(l)):
		s = s + (l[i])^2
	d[n] = s
	return s


def end_of_chain(n):
	while n != 89 and n !=1:
		if n in d:
			n = d[n]
		else:
			n = find_next(n)
	return n


def find_count(r):
	count = 0
	for i in range(1,r):
		if end_of_chain(i) == 89:
			count = count + 1
	print count
	return count

#cProfile.run('find_count(10000000)')
=======
while count < 11:
	if n in Primes():
		if is_left_truncatable(n) and is_right_truncatable(n):
			total = total + n
			count = count + 1
	n = n+1
	
print total
>>>>>>> 5abc324c0c87adc56157d5b95bff7fc6a225cf56
