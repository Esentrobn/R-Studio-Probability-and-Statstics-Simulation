# Assuming that the store opens for 5 hrs
close.time = 18000       # 5 hours expressed in minutes
customer_num = 1

arv.time = rexp(1, rate=(1/120))
wt.time = 0
st.time = arv.time
sp.time = rexp(1, rate=(1/180))
l.time= st.time+sp.time

customer = data.frame (customer_num, arv.time, wt.time, st.time, sp.time, l.time)


continue = TRUE     
count= 1
sum= sp.time

while (continue ==TRUE)
{
  
  arv.time= arv.time + rexp (1,rate= (1/120))
  
  if (arv.time > close.time)
  {
  continue = FALSE
  count= count+1
  }
 
 else if (arv.time > l.time) 
 {
    wt.time = 0
    st.time = arv.time
    sp.time = rexp(1, rate=(1/180))
    l.time= st.time+sp.time
    count= count+1
   sum = sum + sp.time
  }

  else
  {
 
    wt.time = l.time - arv.time
    st.time = arv.time + wt.time
    sp.time = rexp(1, rate=(1/180))
    l.time= st.time+sp.time
    count= count+1
    sum = sum + sp.time
  }
  
   customer_num= count
   customer= rbind(customer,c(customer_num, arv.time, wt.time, st.time, sp.time, l.time))
   print(customer)
} 

print (sum)
print (customer_num)
mean= sum/customer_num
print(mean)

write.table(customer," CustomerWaitingTime.txt " )
write( mean," MeanWaitingTime.txt ")
