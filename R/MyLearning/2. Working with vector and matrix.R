#####################################################################################
############################## Working in R #########################################
########### REFERENCES: www.superdatascience.com ;  #################################
########################## www.udemy.com - Course 4 #################################
#####################################################################################
####################### # Working with vectors - Start ##############################

#Creating a vector - Few methods

#Method0 - Ofcourse hardcoding all values
c(1,2,3,4)

# Method1
c(1:6)


# Method2 - replicate with times or each function. both not necessary
rep(c(1,2),times = 100, each = 2)


#Method3 - create a sequence with seed specified
vector3 = seq(1,100,2)
vector3


# accessing the elements of a vector
w = c(a,b,c,d,e)
w
w[1]
w[-1]
w[2:4]
w[-2:-4]
w[c(2,4,5)]
w[c(-2,-4,-5)]


## Arithmetic operators in the vectors

a = c(20,30)
b = c(40,70,50)
c = c(100,200,10,400)
a+b
# R replicates the smaller vectors when comparing; 
# biggervector must be a multiple of smaller vector; 
# if not a multiple it will still replicate but with a warning
a>c



# Vecotrized operations (operations with vectors) are faster than 
# devectorized operations(looping through elements)!!!

randnum = rnorm(5)
randnum
j=1
for(i in randnum)
{
  cat ("This is from i:",i, "\n")
  # cat("This is from vector with i:", randnum[i], "\n") # this wont work as i is the value and not index
  cat("This is from vector with j:", randnum[j], "\n")
  j=j+1
}


######### Financial Analysis - START

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution 
profit = round((revenue - expenses),2)
Profit_aftertax = round((profit*.7),2)
profit_margin = round(((revenue/Profit_aftertax)*100),2)
profit_mean = round((mean(Profit_aftertax)),2)
good_months = Profit_aftertax > profit_mean
bad_months = Profit_aftertax < profit_mean
best_month = Profit_aftertax == max(Profit_aftertax)
worst_month = Profit_aftertax == min(Profit_aftertax)

# Create a matric of these values
finacialdata = 
  rbind(
    profit,
    Profit_aftertax,
    profit_margin,
    profit_mean,
    good_months,
    bad_months,
    best_month,
    worst_month
  )

finacialdata
######### Financial Analysis - END

####################### # Working with vectors - End ##############################



###################### Working with Matrices - Start ##############################

#Creating a simple matrix
#IMPORTANT! By default the values are arranged by column!
matrix(1:6, nrow =2, ncol=3, byrow = T)

vectormat = rep(c(1,2),times = 10)
matrix(vectormat,2)
## creating a simple matrix
# create an integer vector
vector1 = c(1,2,3,4,5,6)
typeof(vector1)

# create an character vector
# IMPORTANT! The quotes are mandatory
vector2 = c('a','b','c','d','e','f')
typeof(vector2)

# create a vector of smaller dimension
vector3 = c(7,8,9)
typeof(vector3)

# create a matrix by row binding
# while bining the dimenstion of the vector must be preferably the same
# IMPORTANT! if not same it needs to be a factor and that vector will be replicated
matrix1 = rbind(vector1,vector2,vector3)
matrix1

# Transponse of the matrix
t(matrix)


#check the type of the matrix
# Obviously a character matrix due to type casting limitaitons/rules
typeof(matrix1)


# create a matrix by column binding
# similiar observation as that of rowbind
matrix2 = cbind(vector1,vector2,vector3)
matrix2

# check the names
# There is not name, yet!
names(matrix1)

###### Lets name the matrix columns - START
# IMPORTANT! Note that a value is assigned to a function!!!
# OPTION 1: Name the vectors first and then bind it
names(vector1)
names(vector1) = c('col1','col2','col3','col4','col5', 'col6')
matrix3 = rbind(vector1,vector2,vector3)
matrix3

# OPTION 1:
matrix4 = rbind(vector1,vector2,vector3)
rownames(matrix4)
colnames(matrix4)
matrix4

# the row names are ofcourse the vector names 
rownames(matrix4)
# column name is null
colnames(matrix4)
colnames(matrix4) =  c('col1','col2','col3','col4','col5', 'col6')
matrix4

# Reading the values using the names
# the result is all matrix
matrix4
matrix4[,1:2]
matrix4[,c("col5","col6")]
matrix4[1:2,]
matrix4[c("vector3","vector1"),]
matrix4[c("vector3","vector1"), c("col5","col6")]

# IMPORTANT: In below case the retirn is not a matrix but a vector because R guesses that we look for vector
matrix4[1,]
is.matrix(matrix4[1,])

# Below code will convert the vector to matirx to get a consistant behavior of matrix
# IMPORTANT: Using a drop to maintain consistancy of using the [] brackets
matrix4[1,,drop=F]

# to remove the names just set them to NULL 
rownames(matrix4) = NULL
colnames(matrix4) = NULL

matrix4

###### Lets name the matrix columns - END

######################### Matrix operations - START

######################## DATASET PREPERATION - START
#Seasons
Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")

#Players
Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")

#Salaries
KobeBryant_Salary <- c(15946875,17718750,19490625,21262500,23034375,24806250,25244493,27849149,30453805,23500000)
JoeJohnson_Salary <- c(12000000,12744189,13488377,14232567,14976754,16324500,18038573,19752645,21466718,23180790)
LeBronJames_Salary <- c(4621800,5828090,13041250,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
CarmeloAnthony_Salary <- c(3713640,4694041,13041250,14410581,15779912,17149243,18518574,19450000,22407474,22458000)
DwightHoward_Salary <- c(4493160,4806720,6061274,13758000,15202590,16647180,18091770,19536360,20513178,21436271)
ChrisBosh_Salary <- c(3348000,4235220,12455000,14410581,15779912,14500000,16022500,17545000,19067500,20644400)
ChrisPaul_Salary <- c(3144240,3380160,3615960,4574189,13520500,14940153,16359805,17779458,18668431,20068563)
KevinDurant_Salary <- c(0,0,4171200,4484040,4796880,6053663,15506632,16669630,17832627,18995624)
DerrickRose_Salary <- c(0,0,0,4822800,5184480,5546160,6993708,16402500,17632688,18862875)
DwayneWade_Salary <- c(3031920,3841443,13041250,14410581,15779912,14200000,15691000,17182000,18673000,15000000)

#Matrix
Salary <- rbind(KobeBryant_Salary, JoeJohnson_Salary, LeBronJames_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, ChrisPaul_Salary, KevinDurant_Salary, DerrickRose_Salary, DwayneWade_Salary)
rm(KobeBryant_Salary, JoeJohnson_Salary, CarmeloAnthony_Salary, DwightHoward_Salary, ChrisBosh_Salary, LeBronJames_Salary, ChrisPaul_Salary, DerrickRose_Salary, DwayneWade_Salary, KevinDurant_Salary)
colnames(Salary) <- Seasons
rownames(Salary) <- Players

#Games 
KobeBryant_G <- c(80,77,82,82,73,82,58,78,6,35)
JoeJohnson_G <- c(82,57,82,79,76,72,60,72,79,80)
LeBronJames_G <- c(79,78,75,81,76,79,62,76,77,69)
CarmeloAnthony_G <- c(80,65,77,66,69,77,55,67,77,40)
DwightHoward_G <- c(82,82,82,79,82,78,54,76,71,41)
ChrisBosh_G <- c(70,69,67,77,70,77,57,74,79,44)
ChrisPaul_G <- c(78,64,80,78,45,80,60,70,62,82)
KevinDurant_G <- c(35,35,80,74,82,78,66,81,81,27)
DerrickRose_G <- c(40,40,40,81,78,81,39,0,10,51)
DwayneWade_G <- c(75,51,51,79,77,76,49,69,54,62)
#Matrix
Games <- rbind(KobeBryant_G, JoeJohnson_G, LeBronJames_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, ChrisPaul_G, KevinDurant_G, DerrickRose_G, DwayneWade_G)
rm(KobeBryant_G, JoeJohnson_G, CarmeloAnthony_G, DwightHoward_G, ChrisBosh_G, LeBronJames_G, ChrisPaul_G, DerrickRose_G, DwayneWade_G, KevinDurant_G)
colnames(Games) <- Seasons
rownames(Games) <- Players

######################## DATASET PREPERATION - END

# number of games played
Games

# Salary for each game
Salary

# Calculate the salary for each game
round(Salary/Games,0)

###### Matrix operations - END



grades_variance = c(5, 1, 3, 9, 2)
grades_variance
var(grades_variance)



grades_variance = c(0, 1, 6)
grades_variance
var(grades_variance)

grades_variance([0, 1, 6])