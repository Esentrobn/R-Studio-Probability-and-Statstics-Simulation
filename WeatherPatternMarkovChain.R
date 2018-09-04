 sample(5,3,prob = c(0.1,0.05,0.21,0.11,0.53))
[1] 5 3 2
 
 p = matrix(c(0.7,0.3,0.2,0.2,0.5,0.6,0.1,0.2,0.2),3)
 x = c("S","C","R")
 n = 500000
 
 states = character(n)
 
 states[1] = "C"
 
 for (i in 2:(n))
 {
   if(states[i-1] == "S") {cond.prob = p[1,]}
   else if(states[i-1] == "C") {cond.prob = p[2,]}
   else {cond.prob = p[3,]}
   states[i] = sample(x, 1, prob = cond.prob )
 }
 
 #print(states[1:100])
 #states = states[-(1:100)]
 #length(states)
 #head(states)
 #tail(states)
 #states[1:200]

 
 # what is the probability of a sunny day being followed by two cloudy days?

     counter_sxx = 0
     counter_scc = 0
 	for (a in 1:(length(states)-2))
          {
 	if (states[a] == "S" & states[a+1] == "C" && states[a+2]== "C")
          {
     counter_scc = counter_scc +1 
     a+1
    }
     else {a+1}
    }
 
 	for (b in 1:(length(states)-2))
          {
	   if (states[b]=="S")
             {
     counter_sxx = counter_sxx +1
      b+1
    }
   else {b+1}
 }
 
     counter_scc
[1] 23887
 counter_sxx
[1] 237590
 probability_a = counter_scc / counter_sxx
 probability_a
[1] 0.1005387


 #  given that today is rainy, what is the probabilty that the sun will shine the day after tomorrow? 
 	counter_rxs = 0
 	counter_rxx = 0
 
 	# to count R_S
	 for (c in 1:(length(states)-2))
           {
   		if (states[c] == "R" && states[c+2]== "S")
                  {
     			counter_rxs = counter_rxs +1 
     			c+1
   		  }
		   else {c+1}
            }
 
            #count rXX
	 
	for (d in 1:(length(states)-2))
         {
   		if (states[d] == "R")
        	   {
         counter_rxx = counter_rxx +1 
               d+1
      }
	   else {d+1}
	 }
 
      counter_rxs
[1] 27245
      counter_rxx 
[1] 75960

 probability_bn = counter_rxs / counter_rxx

 probability_bn
[1] 0.3586756
