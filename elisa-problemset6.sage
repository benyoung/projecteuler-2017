#----Problem 82-----

text=open('p081_matrix.txt', 'r')
lines=text.read().split("\n")
data=[]
for line in lines:
	inside_list=line.split(",")
	data.append(inside_list)

S=[[0 for x in range(0, 80)] for y in range(0, 80)]

for i in range(0, 80):
	for j in range(0, 80):
		if i==0 and j==0:
			S[i][j]=int(data[0][0])
		if j>0 and i==0:
			S[i][j]=int(data[i][j])+S[i][j-1]
		elif i>0 and j==0:
			S[i][j]= int(data[i][j])+S[i-1][j]
		elif i>0 and j>0:
			S[i][j]=int(data[i][j])+min(S[i][j-1], S[i-1][j])
			
print S[79][79]
		
	
	
