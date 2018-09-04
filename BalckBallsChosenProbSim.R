
#this simulates drawing 3 balls 10 times for  that randomly choosing are of black .

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 10
counter = 0
for ( i in 1:n){
  x = sample(population, 3)
  if (x[1]==x[2] && x[1]==x[3]){counter = counter + 1}
}
prob = counter/n
prob


#this simulates drawing 3 balls 100 times for that randomly choosing are of black

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 100
counter = 0
for ( i in 1:n){
  x = sample(population, 3)
  if (x[1]==x[2] && x[1]==x[3]){counter = counter + 1}
}
prob = counter/n
prob


#this simulates drawing 3 balls 1000 times for that randomly choosing are of black

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 1000
counter = 0
for ( i in 1:n){
  x = sample(population, 3)
  if (x[1]==x[2] && x[1]==x[3]){counter = counter + 1}
}
prob = counter/n
prob
