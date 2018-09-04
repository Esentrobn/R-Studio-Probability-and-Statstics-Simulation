install.packages(stat)

values<-c() # this resets 'values ' vector   as empty

for(n in 20:5000)
{
  
  counter=0
  for( i in 1:n)
  {
     x=rbeta(1,3,1)
     y=rbeta(1,3,1)
     if(y-x>.5)
     {
       counter=counter+1
     }
     
}
probability=counter/n
probability
n=n+1
values<-append(values,probability)
}
write (values, " XYpairSimResult.txt " , ncolumns = 1)
min(values)
max(values)
plot(values)  
