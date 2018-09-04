
#this simulates drawing 2 balls 10 times for chosen randomly are of the same color.

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 10
counter = 0
for ( i in 1:n){
  x = sample(population, 2)
  if (x[1]==x[2]){counter = counter + 1}
}
prob = counter/n
prob


#this simulates drawing 2 balls 100 times for chosen randomly are of the same color.

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 100
counter = 0
for ( i in 1:n){
  x = sample(population, 2)
  if (x[1]==x[2]){counter = counter + 1}
}
prob = counter/n
prob


#this simulates drawing 2 balls 1000 times for chosen randomly are of the same color.

population = c(1,1, 0,0,0,0) # 1 = white ball, 0 = black ball
n = 1000
counter = 0
for ( i in 1:n){
  x = sample(population, 2)
  if (x[1]==x[2]){counter = counter + 1}
}
prob = counter/n
prob
