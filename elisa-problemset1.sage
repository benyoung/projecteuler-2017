#Problem 9
for i in range(1, 500):
	for j in range(i, 500):
		for k in range (j, 500):
			if i^2+j^2==k^2 and i+j+k==1000:
				print i, j, k
				break
			else: 
				continue
			break
		else:
			continue
		break

#Problem 10
s=0
for i in range(1, 2000000):
	if i in Primes():
		s=s+i
print s



#Problem 11

f = open('pr1.txt', 'r')
lines = f.read().split("\n")

list_of_lists=[]
for line in lines:
	innerlist=line.split(" ")
	list_of_lists.append(innerlist)

print list_of_lists


#Problem 12
#def triangle(n):
#	return sum([i for i in range(1, n+1)])

#for i in range(1, 1000000):
#	l=len(divisors(triangle(i)))
#	if l>500:
#		x=triangle(i)
#		print x
#		break


#Problem 14

#def lenseq(s):
#	n=s
#	for i in range (1,100000):
#		if n==1:
#			break		else:
#			if n%2==0:
#				n=n/2
#			else:
#				n=3*n+1
#	return i
	
#s=0
#for i in range (1, 100000):
	#if lenseq(i)>s:
	#	s=i
#print s
#taking too long :(

#Problem 15
def numroutes(n, m):
	x=binomial(n+m, m)
	return x

y=numroutes(20, 20)
print y

#Problem 16
def sumdigits(n):
	l=[int(d) for d in str(n)]
	x=sum(l)
	return x

y= sumdigits(2^1000)
print y

#Problem 20
n=factorial(100)
l=[int(d) for d in str(n)]	
y=sum(l)
print y




