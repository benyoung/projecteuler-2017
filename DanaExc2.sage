#!usr/bin/python

# completed 19, 21, 31, 23, 27, 30, 29, 38, 22
# read in 18
# unsuccessful attempt at  104


#problem 24 sage permutations in lexicographic order (on helen_problems)

# Problem 19

sundays = 0

day = 1
weekday = 1
year = 0
leap = 0

for month in range(1,12*101):
	if ((month%12 == 2) and (leap%4 ==0) and (year ==0)):
		while day < 28:
			day = day + 1
			weekday = weekday+1
		#month = month + 1
		day = 1
		weekday= weekday+1
#		print "end Feb"
#		print day,weekday,month,year
				
			
	elif ((month%12 == 2) and (leap%4 ==0)):
		while day < 29:
			if ((day == 1) and (weekday%7== 0)and (year > 0)): 
				sundays = sundays+1
				day = day + 1
				weekday = weekday+1
			else :
				day = day + 1
				weekday = weekday+1
		#month = month + 1
		day = 1
		weekday=weekday+1
	
	elif (month%12 == 2):
		while day < 28:
			if ((day == 1) and (weekday%7== 0) and (year > 0)): 
				sundays = sundays+1
				day = day + 1
				weekday = weekday+1
			else :
				day = day + 1
				weekday = weekday+1
		#month = month + 1
		day = 1
		weekday=weekday+1
		
	elif ((month%12 ==4) or (month%12 ==6) or (month%12 ==9) or (month%12 ==11)):
		while day < 30:
			if ((day == 1) and (weekday%7== 0) and (year > 0)): 
				sundays = sundays+1
				day = day + 1
				weekday = weekday+1
			else :
				day = day + 1
				weekday = weekday+1
		#month = month + 1
		day = 1
		weekday=weekday+1
#		print "end 30 day"
	elif (month%12 == 0):
		while day < 31:
			if ((day == 1) and (weekday%7== 0)and (year > 0)): 
				sundays = sundays+1
				day = day + 1
				weekday = weekday+1
			else :
				day = day + 1
				weekday = weekday+1
		#month = month + 1
		day = 1
		weekday=weekday+1
		year = year + 1
		leap = leap+1
		
	else: 
		while day < 31:
			if ((day == 1) and (weekday%7== 0)and (year > 0)): 
				sundays = sundays+1
				day = day + 1
				weekday = weekday+1
			else :
				day = day + 1
				weekday = weekday+1
		
		#month = month + 1
		weekday=weekday+1
		day = 1
#		print "end 31 day"
#		print day, weekday, month, year

print sundays
	
# Problem 18

text = open('problem18.txt', 'r')
lines = text.read().split("\n")
data = []
#print lines
for line in lines:
	inside_list = line.split(" ")
	data.append(inside_list)
#print data

# Problem 22
names = open('p022_names.txt','r')
l = names.read().split("\",\"")
#print l
l[-1]= l[-1][:6]
l = sorted(l)

#print l
totalscore = 0
totals = []
for i in range(len(l)):
	score = 0
	# iterate through ith name
	for j in range(len(l[i])):
		score = score + (ord(l[i][j])-64)
		#print score
		#print ord(l[i][j])
	score = score*(i+1)
	totalscore = totalscore+score
	totals.append(score)
	#if score > maxScore: maxScore = score
	#if score > 600000: print l[i], score
	#if i == 937: print score 
print totalscore
print sum(totals)
print totals[937]
#print l[937]
#score = 0
#for j in range(len(l[937])):
#	score = score + (ord(l[937][j])-64)
	#print score
	#print ord(l[i][j])
#print score
#score = score*(938)
#print score


# Problem 47




# Problem #21

def d(n):
	d = 0
	for i in range(1,n/2+1):
		if (n%i == 0): d = d+i
	return d
#amicable = 0
#for i in range(1,10000):
#	da = d(i)
#	db = d(da)
#	if ((i==db)& (i != da)): 
#		print i, da, db
#		amicable = amicable + i
#print amicable

# Problem 31

# one = a, two = b, five = c, ten = d, twenty = e
# fifty = f, 1 pound = g, 2 pounds = h
#ways = 0
#maxa=0
#maxb=0
#maxc=0
#maxd=0
#maxe=0
#maxf=0
#for g in range(0,3):
#	maxf = (200-100*g)/50
#	for f in range(0,maxf+1):
#		maxe = (200-100*g-50*f)/20
#		for e in range(0,maxe+1):
#			maxd = (200-100*g-50*f-20*e)/10
#			for d in range(0,maxd+1):
#				maxc = (200-100*g-50*f-20*e-10*d)/5
#				for c in range(0,maxc+1):
#					maxb = (200-100*g-50*f-20*e-10*d-5*c)/2
#					for b in range(0,maxb+1):
#						maxa = (200-100*g-50*f-20*e-10*d-5*c-2*b)
#						for a in range(0,maxa+1):
#							value = a+b*2+c*5+d*10+e*20+f*50+g*100
#							if (value == 200):
#								ways = ways+1
#print (ways + 1)


# Problem 27

#maxp = 0
#amax = 1
#bmax = 1
#for a in range(-999,1000):
#	for b in range(-1000,1001):
#		composite = false
#		c=0
#		pseq = 0
#		while (not composite):
#			if ((c^2+a*c+b) in Primes()):
#				c = c+1
#				pseq = pseq+1
#			else: composite = true
#		if pseq > maxp:
#			maxp = pseq
#			amax = a
#			bmax = b
#print amax,bmax,amax*bmax, maxp

# Problem 23

#def abundant(n):
#	if n < d(n): return true
#	else: return false
#nasum = 0
#maxj = 0

##abundantN = {}
##for i in range(1,28123):
##	abundantN[i] = abundant(i)
##print "done"
#print abundantN[12],abundantN[13]

#for k in range(1,28123):
#	abund = false
#	for i in range(1,k):
#		if (abundantN[i] and abundantN[k-i]):
#			#print k, i, k-i
#			abund = true
#			break
#	if (not abund): nasum = nasum+k

#print nasum

# Problem 30

# Any better idea on where to stop? Just guessing at 1000000
#def dig5power(n):
#	x= str(n)
#	dp = 0
#	for i in range(0,len(x)):
#		dp = dp+int(x[i])^5
#	return dp
#fpsum = 0
#for i in range(10,400000):
#	#print dig5power(i)
#	if (dig5power(i) == i): 
#		print i
#		fpsum= fpsum+i
#print fpsum

#Problem 29

combinations = []
for a in range(2,101):
	for b in range(2,101):
		combinations.append(a^b)
combinations = sorted(combinations)
for i in reversed(range(1,len(combinations))):
	if combinations[i] == combinations[i-1]: combinations.pop(i)
print len(combinations)

# Problem 38

#def conprod(i,n):
#	ints = []
#	for k in range(1,n+1): ints.append(k)
#	cp = ""
#	for k in range(0,n): cp = cp + str(i*ints[k])
#	return cp
#print conprod(192,3)

#maxcp = 0
## for n = 2
#for i in range(5000,50001):
#	cp = conprod(i,2)
#	scp = sorted(cp)
#	distinct = true
#	if (len(cp) == 9):
#		#print cp
#		for i in range(9): 
#			if ((i+1) != int(scp[i])): distinct = false
#		if (distinct and (int(cp) >maxcp)): maxcp = int(cp)
#print maxcp
## for n = 3,4,5
#for n in range(3,6):
#	for i in range(10,1000):
#		cp = conprod(i,n)
#		scp = sorted(cp)
#		distinct = true
#		if (len(cp) == 9):
#			#print cp
#			for i in range(9): 
#				if ((i+1) != int(scp[i])): distinct = false
#			if (distinct and (int(cp) >maxcp)): maxcp = int(cp)
#print maxcp
			
# Problem 104
#solution = false
#fp = 0
#fc = 1
#fn= 1
#fns = str(fn)
#n=1
##fibN = {}
#while (not solution) and (n < 100001):
#		#print first_nine
#		last_nine = sorted(fns[-9:])
#		for i in range(9): 
#				if ((i+1) != int(first_nine[i])): 
#					#print "got here", first_nine
#					distinct = false
#					break
#				#if distinct: print first_nine, n
#				if ((i+1) != int(last_nine[i])): 
#					distinct = false
#					break
#		if distinct: 
#			solution = true
#			print n	
#	fp = fc
#	fc = fn
#	n=n+1
#print fp, fc, n

# Problem 60

def concatPrime(m,n):
	c = str(m)+str(n)
	d = str(n)+str(m)
	if ((int(c) in Primes()) and (int(d) in Primes())): return True
	else: return False

print concatPrime(7,15)
P = Primes()
for i in range(1,10):
	a = P.unrank(i-1)
	for j in range(i+1,1200):
		b = P.unrank(j-1)
		if concatPrime(a,b):
			for k in range(j+1,1200):
				c = P.unrank(k-1)
				if (concatPrime(a,c) and concatPrime(b,c)):
					for l in range(k+1,1200):
						d = P.unrank(l-1)
						if (concatPrime(a,d) and concatPrime(b,d) and concatPrime(c,d)):
							#print a, b, c, d
							for m in range(l+1,1200):
								e = P.unrank(m-1)
								if (concatPrime(a,e) and concatPrime(b,e) and concatPrime(c,e) and concatPrime(d,e)):
									print a, b, c, d, e, a+b+c+d+e
	

	
	
