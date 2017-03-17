#!/usr/bin/python

import cProfile
import re


#Problem 67 and 18

text = open('p18.txt', 'r')
#text = open('p067_triangle.txt', 'r')
lines = text.read().split("\n")
data = []
for line in lines:
	inside_list = line.split(" ")
	data.append(inside_list)


A = []
for r in range(15):
	A.append([])
	for c in range(r+1):
		A[r].append(0)

for i in range(15):
	for j in range(i+1):
		if i == 0 and j == 0:
			A[i][j] = int(data[i][j])
		if i > 0 and j == 0:
			A[i][j] = int(data[i][j]) + A[i-1][j]
		if i > 0 and j == i:
			A[i][j] = int(data[i][j]) + A[i-1][j-1]
		if i > 0 and 0 < j < i:
			A[i][j] = int(data[i][j]) + max(A[i-1][j], A[i-1][j-1])

maxpathsum = 0
for i in range(15):
	if A[14][i] > maxpathsum:
		maxpathsum = A[14][i]

#print maxpathsum

#Problem 78

#n = 55375
#a = Partitions(n).cardinality()
#while a % 1000000 != 0:
#	a = Partitions(n).cardinality()
#	n = n+1
	
#print n


#Problem 79
text = open('p079_keylog.txt', 'r')
login_list = text.read().split("\n")
print login_list

#Problem 81 

text = open('p081_matrix.txt', 'r')
lines = text.read().split("\n")
data = []
for line in lines:
	inside_list = line.split(",")
	data.append(inside_list)

S = []


for r in range(80):
	S.append([])
	for c in range(80):
		S[r].append(0)


for i in range(80):
	for j in range(80):
		if i == 0 and j == 0:
			S[i][j] = int(data[i][j])
		if i > 0 and j == 0:
			S[i][j] = int(data[i][j]) + S[i-1][j]
		if j > 0 and i == 0:
			S[i][j] = int(data[i][j]) + S[i][j-1]
		if i > 0 and j > 0: 
			S[i][j] = int(data[i][j]) + min(S[i-1][j],S[i][j-1])
		

#print S[79][79]
