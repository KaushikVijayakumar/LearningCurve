############################ Normal and Binomial Destributions ###################################
# When to use what?
# If we want percentile use pnorm 
# If we want quantity use qnorm
# If we want the random distribution use rnorm


###### Case 1: 
#Normal distribution baggage weights - mean 45 pounds- sd 3.2 pounds - how many > 50 points

# Get the percentile below the specified value 50
pnorm(50, 45, 3.2)

# take compliment to get values above 50
1 - pnorm(50, 45, 3.2)
###### Case 1: Answer 5.9 percentile


##

###### Case 2:
# In SAT mean 1500 and sd 300. that is the percentile of student who scored 1800
pnorm(1800, 1500, 300) 
###### Case 2: 84.13 percentile


#IMPORTANT! Inverse of pnorm is qnorm
###### Case 3:
#How cold are the coldeset 20% says in LA. Mean 77 and sd = 5
qnorm(.2, 77,5)

###### Case 3: Answer 72.79

############ Binomail distributions - Bernouilli Radom Variables as there are 2 outcomes only
# Shock therapy 35% refuse to give shock - Success and 65% gives shock - failure

# Simple examples
# How many scenarios yeild exactly 1 success in 4 trials
# Comninations of 4C1
choose(4,1) # Answer is 4

# How many scenarios yeild exactly 2 success in 9 trials
# Comninations of 9C3
choose(9,2) # Answer is 36

######## Case 4: 
# Gallop Poll - 13% employees only engage in work
#  what is probability that exactly 8 employees out if 10 engage in work!
dbinom(8, size = 10, p= .13)



# Gallop Poll - 56% of uninsured people plan to take govt insurance
#  what is probability that exactly 6 employees out of 10 take govt insurance
dbinom(2, size = 10, p= .56)

dbinom(6, size = 10, p= .56)
dbinom(60, size = 100, p= .56)
dbinom(600, size = 1000, p= .56)
 

# Find probability that atleast 60 of100 will take insurace
# Given that the prob of insurace is .56
# IMPORTANT: When keywords like atleast and atmost use SUM of all individual instances
dbinom(60, size = 100, p= .56)
sum(dbinom(60:100, size = 100, p= .56))
  

## Heights of 10 year-olds, regardless of gender, closely follow a normal distribution 
# with mean 55 inches and standard deviation 6 inches. Which of the following is true?
pnorm(20, 55, 6)


# While it is often assumed that the probabilities of having a boy or a girl are the same, 
# the actual probability of having a boy is slightly higher at 0.51. 
# Suppose a couple plans to have 3 children. 
# What is the probability that exactly 2 of them will be boys?
dbinom(2, size = 3, p = .51)


# create one column of data
weight = c(60, 72, 57, 90, 95, 72)

#Now hypothisise that the average weight is 80
# the probability is .4094 and hence it cannot be ignored
t.test(weight, mu = 80)


# Notes: Central limit theorem 
# a.	The distribution of sample means is nearly normally distributed. Mean of sampling is approximately 
#     equal to the population. The standard error is approximately equal to the SD of 
#     population (if not population then the sampling) divided by the square root of sample size. 
# b.	More the skew the more the sample that is required for central limit theorem to kick in. 
#     because more samples will be needed to make the distribution look normal
# c.	Immaterial of whether the population is skewed or normal, the sample means can be approximately normal
#     if sufficient sample size is taken into consideration

# IMPORTANT: pnorm takes the z score as an input and gives the value BELOW that value in the normal distribution

# Below is the % of values betten the z scopes in a norma distribution
# In these cases the assmtion is the standarn normal dist of mean 0 and sd 1
pnorm(1)  - pnorm(-1)  # 68.2
pnorm(2)  - pnorm(-2)  # 95.4
pnorm(3)  - pnorm(-3)  # 99.7



