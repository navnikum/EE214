# -*- coding: utf-8 -*-
 
def tobinary(n,width):
    s=" "
    for i in range(width):
        s=s+str(n%2)
        n=n/2
    s=s[::-1]
    return s
 
 
f=open("trace_counter.txt","w")
f.seek(0)
f.truncate()
for i in range(256):
	a=int(0);
	x=tobinary(i,8)
	if x[7]=="1":
		a= a+1;
	if x[6]=="1":
		a= a+1;
	if x[5]=="1":
		a= a+1;
	if x[4]=="1":
		a= a+1;
	if x[3]=="1":
		a= a+1;
	if x[2]=="1":
		a= a+1;
	if x[1]=="1":
		a= a+1;
	if x[0]=="1":
		a= a+1;
	m=tobinary(a,4)
	f.write(x + " "  + m + "1111" + " " + "\n")
 
f.close()
