#!usr/bin/python
# This conains problems 9, 10, 12, 14, 20, 25


# Problem 9

c= 0				
solution = false
for a in range(1,999):
	for b in range(1,1000-a):
		c=1000-a-b
		if a^2+b^2==c^2:
			solution = true
			print a*b*c
			print a, b, c
		if solution: break
	if solution: break 

# Problem 10

#sum = 0
#for i in range(1,2000000):
#	if i in Primes(): sum = sum + i
#print sum

# Problem 12
sol = false
t=0
i = 1
while not sol:
#for i in range(1,1000000):
	t = t+i
	if len(t.divisors()) > 499:
		sol = true
		break
	i = i+1
print t

# Problem 14
# takes forever to run :(

#def next(n):
#	if n%2 == 0: return (n/2)
#	else: return (3*n+1)


#maxL = 351
#maxi = 77031
#for i in range(77032,1000001):
#	L=1
#	n=i
#	while n != 1: 
#		n = next(n)
#		L = L+1
#	if L > maxL: 
#		maxL = L
#		maxi = i
#print maxL, maxi


# Problem 20

f = 1
for i in range(1,101): f=f*i
# factorial function in sage: factorial()
l = [int(d) for d in str(f)]
s = 0
for i in range(0,len(str(f))):
	s=s+l[i]
print s
	
	
# Problem 25
	
fp = 0
fc = 1
fn= 1
n=1
while len(str(fn)) <1000:
	fn = fp + fc
	fp = fc
	fc = fn
	n=n+1
print n

# Problem 50

M = 0
n=2


def psum(n):
	s = n
	psum = 0
	while s < 1000:
		n = next_prime(n)
		s = s + n
		#i = i+1
		if s in Primes(): psum = s
	return psum

print psum(2), psum(3), psum(5), psum(7), psum(11), psum(13)
#while M < 1000:
#	s = psum(n)
#	if s>M & s<1000: M =s
#	n = next_prime(n)

print M
