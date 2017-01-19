#!usr/bin/python

l=2
for i in range(2, 21):
	l=lcm(l, i)
print l	

s=0
for i in range(1, 101):
	s=i^2+s

y=((100)*(101)/2)^2-s

print y


