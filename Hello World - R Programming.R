
############## Misplaced diamonds dataset - Data inference - START ###############

#Misplaced diamonds dataset - drawing some fascinating inferences from the data and learn on the way!

#choosing the file on the go - Am using the first time :)
diamond_data = read.csv(file.choose())

#building a scatter plot after loading the relevant library 
library(ggplot2)

# first build a simple plot 
ggplot(data = diamond_data, aes (x=carat, y = price))+
  geom_point() 
  
# Upgraded plot
# Make some cosmetic changes for a good view! Looks better  
# alpha changes the size of the points in scatter plot
ggplot(data = diamond_data [diamond_data$carat<2.5,], aes (x=carat, y = price, col = clarity))+
  geom_point(alpha = .1) +
  geom_smooth(alpha = .1) #+
  # geom_line() # bad view as there is too much of intereferences!


# Inference: 
# There are some intewining of the lines which means that the pricing is definitely
# misplaced. Althought it seems like a clear procing between .7-.7carot range

############## Misplaced diamonds dataset - Data inference - END ###############



############### Play with Logical operators - START #######################
a = 4
b = 5
c = test1
d = test2

a>b

!a>b

c==d

!isTRUE(
a==b | c==d
)

!isTRUE(
  a==b & c==d
)

############### Play with Logical operators - END #######################

####################### Conditional Statements - START ###############
## IF, ELSE and ELSE IF
# Generate a random number and see which range if falls under 

target = rnorm(1)  
target

rm(answer)
if(target < 0)
{
  answer = "number is negaive"
}else if (target > 0 & target < 1)
{
  answer = "Number is between 0 and 1"
}else
{
  answer = "Number is greater than 1"
}
answer


####################### Conditional Statements - END ###############

################### LOOPING - START ###################

#### 1. WHILE

counter = 1
limit = 10


# looping happens until this expressing is false
while (counter<=limit)
{
  cat("Iteration number:", counter, "\n")
  counter = counter+1
}

#### 2. FOR 
counter = 1
limit = 10

# sort of array of numbers; similiar to foreach in c#
for(index in counter:limit)
{
  index
  cat("Iteration number:", index, "\n")
}
 
## Example - A real one!

# check how many randomly generated normalized values are between -1 and 1
# expected is 68.2 as it is a normal distribution
N = 100000
normdist = rnorm(N, mean=0, sd =1)
counter = 1
for(i in normdist)
{
  if(i<=1 & i>=-1)
  {
    counter=counter+1
  }
}
answer = counter/N
answer

################### LOOPING - END ###################















##################### Rough area #############################
?rnorm
norm = rnorm (100)
norm
typeof(norm)
ggplot(data = norm, aes(x = norm)) +
  geom_histogram(binwidth = 1)






