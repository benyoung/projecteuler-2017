#!usr/bin/python

#Includes problems 15, 16, 20, 11 and notes on 9,10,12,14,17,25,37

# Problem 9, 10, 12 Done.

# Problem 14

#def next(n):
#	if n%2 == 0: return (n/2)
#	else: return (3*n+1)
	
#maxL = 1
#maxi = 1
#dict = {}
#for i in range(1,10001):
#	L=1
#	n=i
	
#	while n != 1:
#		if n in dict.keys():
			#print "I hit if"
			#print n
#			L = L+dict[n]-1 
			#print L
#			n=1
#		else:
			#print "I hit else"
			#print n
#			n = next(n)
#			L = L+1
#	dict[i]=L
	#print i, dict[i]
#	if L > maxL: 
#		maxL = L
#		maxi = i
#print maxL, maxi

# Problem 15

def lattice(n): return binomial(n+n,n)

print lattice(20)

# Problem 16

def digit_sum(n):
	l = [int(d) for d in str(n)]
	return sum(l)
	
print digit_sum(2^1000)

# Problem 17 helen_problems

# Problem 20

f = factorial(100)
l = [int(d) for d in str(f)]
print sum(l)

# Problem 25 DanaExc1

# Problem 37 helen_problems

# Problem 11

text = open('problem11.txt', 'r')
lines = text.read().split("\n")
data = []
#print lines
for line in lines:
	inside_list = line.split(" ")
	data.append(inside_list)
#print data
#print data[2][3]

def horProd(M):
	maxProd = 1
	for i in range(0, 20):
		for j in range(0,20-3):
			prod = 1
			for k in range(0,4):
				prod = prod*int(M[i][j+k])
			if prod > maxProd: 
				maxProd = prod
	return maxProd
print horProd(data)

def verProd(M):
	maxProd = 1
	for i in range(0, 20):
		for j in range(0,20-3):
			prod = 1
			for k in range(0,4):
				prod = prod*int(M[j+k][i])
			if prod > maxProd: 
				maxProd = prod
	return maxProd
print verProd(data)

def rDiag(M):
	maxProd = 1
	for i in range(0, 20-3):
		for j in range(0,20-3):
			prod = 1
			for k in range(0,4):
				prod = prod*int(M[i+k][j+k])
			if prod > maxProd: 
				maxProd = prod
	return maxProd
print rDiag(data)

def lDiag(M):
	maxProd = 1
	for i in range(0, 20-3):
		for j in range(3,20):
			prod = 1
			for k in range(0,4):
				prod = prod*int(M[i+k][j-k])
			if prod > maxProd: 
				maxProd = prod
	return maxProd
print lDiag(data)

print max(horProd(data),verProd(data),rDiag(data),lDiag(data))




