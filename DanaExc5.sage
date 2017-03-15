#!usr/bin/python


# Problem 81

#text = open('p081_matrix.txt', 'r')
#lines = text.read().split("\n")
#data = []
##print lines
#for line in lines:
#	inside_list = line.split(",")
#	data.append(inside_list)

#print data

#S = []
#for r in range(80):
#	S.append([])
#	for c in range(80):
#		S[r].append(0)
#print S

#for i in range(80):
#	for j in range(80):
#		if i>0 and j > 0:
#			S[i][j] = int(data[i][j]) + min(S[i-1][j], S[i][j-1]) 
#		elif j > 0 and i == 0:
#			S[i][j] = int(data[i][j]) + S[i][j-1]
#		elif i > 0 and j == 0:
#			S[i][j] = int(data[i][j]) + S[i-1][j]
#		else: S[i][j] = int(data[i][j])
#print S


# Problem 82


