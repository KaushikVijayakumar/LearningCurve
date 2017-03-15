###########################################################################################
                      ########### HELLO WORLD - ###########
                ################ R PROGRAMMING #################
###########################################################################################

Print("hello world")

a = 'hello'
b = 'world'
cat(a,b)

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
