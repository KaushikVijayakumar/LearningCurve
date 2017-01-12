###########################################################################################################
######################################### Working in R ####################################################
###################### REFERENCES: www.superdatascience.com ;  ############################################
##################################### www.udemy.com - Course 4 ############################################
###########################################################################################################

#### Crealring the exisitng variables
rm(list = ls())


############### Misplaced diamonds dataset - Data inference - START #################

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










################################ BASKAETBALL PLAYERS AND SEASONS ANALYSIS  #################################
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

#Minutes Played
KobeBryant_MP <- c(3277,3140,3192,2960,2835,2779,2232,3013,177,1207)
JoeJohnson_MP <- c(3340,2359,3343,3124,2886,2554,2127,2642,2575,2791)
LeBronJames_MP <- c(3361,3190,3027,3054,2966,3063,2326,2877,2902,2493)
CarmeloAnthony_MP <- c(2941,2486,2806,2277,2634,2751,1876,2482,2982,1428)
DwightHoward_MP <- c(3021,3023,3088,2821,2843,2935,2070,2722,2396,1223)
ChrisBosh_MP <- c(2751,2658,2425,2928,2526,2795,2007,2454,2531,1556)
ChrisPaul_MP <- c(2808,2353,3006,3002,1712,2880,2181,2335,2171,2857)
KevinDurant_MP <- c(1255,1255,2768,2885,3239,3038,2546,3119,3122,913)
DerrickRose_MP <- c(1168,1168,1168,3000,2871,3026,1375,0,311,1530)
DwayneWade_MP <- c(2892,1931,1954,3048,2792,2823,1625,2391,1775,1971)
#Matrix
MinutesPlayed <- rbind(KobeBryant_MP, JoeJohnson_MP, LeBronJames_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, ChrisPaul_MP, KevinDurant_MP, DerrickRose_MP, DwayneWade_MP)
rm(KobeBryant_MP, JoeJohnson_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, LeBronJames_MP, ChrisPaul_MP, DerrickRose_MP, DwayneWade_MP, KevinDurant_MP)
colnames(MinutesPlayed) <- Seasons
rownames(MinutesPlayed) <- Players

#Field Goals
KobeBryant_FG <- c(978,813,775,800,716,740,574,738,31,266)
JoeJohnson_FG <- c(632,536,647,620,635,514,423,445,462,446)
LeBronJames_FG <- c(875,772,794,789,768,758,621,765,767,624)
CarmeloAnthony_FG <- c(756,691,728,535,688,684,441,669,743,358)
DwightHoward_FG <- c(468,526,583,560,510,619,416,470,473,251)
ChrisBosh_FG <- c(549,543,507,615,600,524,393,485,492,343)
ChrisPaul_FG <- c(407,381,630,631,314,430,425,412,406,568)
KevinDurant_FG <- c(306,306,587,661,794,711,643,731,849,238)
DerrickRose_FG <- c(208,208,208,574,672,711,302,0,58,338)
DwayneWade_FG <- c(699,472,439,854,719,692,416,569,415,509)
#Matrix
FieldGoals <- rbind(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
rm(KobeBryant_FG, JoeJohnson_FG, LeBronJames_FG, CarmeloAnthony_FG, DwightHoward_FG, ChrisBosh_FG, ChrisPaul_FG, KevinDurant_FG, DerrickRose_FG, DwayneWade_FG)
colnames(FieldGoals) <- Seasons
rownames(FieldGoals) <- Players

#Field Goal Attempts
KobeBryant_FGA <- c(2173,1757,1690,1712,1569,1639,1336,1595,73,713)
JoeJohnson_FGA <- c(1395,1139,1497,1420,1386,1161,931,1052,1018,1025)
LeBronJames_FGA <- c(1823,1621,1642,1613,1528,1485,1169,1354,1353,1279)
CarmeloAnthony_FGA <- c(1572,1453,1481,1207,1502,1503,1025,1489,1643,806)
DwightHoward_FGA <- c(881,873,974,979,834,1044,726,813,800,423)
ChrisBosh_FGA <- c(1087,1094,1027,1263,1158,1056,807,907,953,745)
ChrisPaul_FGA <- c(947,871,1291,1255,637,928,890,856,870,1170)
KevinDurant_FGA <- c(647,647,1366,1390,1668,1538,1297,1433,1688,467)
DerrickRose_FGA <- c(436,436,436,1208,1373,1597,695,0,164,835)
DwayneWade_FGA <- c(1413,962,937,1739,1511,1384,837,1093,761,1084)
#Matrix
FieldGoalAttempts <- rbind(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
rm(KobeBryant_FGA, JoeJohnson_FGA, LeBronJames_FGA, CarmeloAnthony_FGA, DwightHoward_FGA, ChrisBosh_FGA, ChrisPaul_FGA, KevinDurant_FGA, DerrickRose_FGA, DwayneWade_FGA)
colnames(FieldGoalAttempts) <- Seasons
rownames(FieldGoalAttempts) <- Players

#Points
KobeBryant_PTS <- c(2832,2430,2323,2201,1970,2078,1616,2133,83,782)
JoeJohnson_PTS <- c(1653,1426,1779,1688,1619,1312,1129,1170,1245,1154)
LeBronJames_PTS <- c(2478,2132,2250,2304,2258,2111,1683,2036,2089,1743)
CarmeloAnthony_PTS <- c(2122,1881,1978,1504,1943,1970,1245,1920,2112,966)
DwightHoward_PTS <- c(1292,1443,1695,1624,1503,1784,1113,1296,1297,646)
ChrisBosh_PTS <- c(1572,1561,1496,1746,1678,1438,1025,1232,1281,928)
ChrisPaul_PTS <- c(1258,1104,1684,1781,841,1268,1189,1186,1185,1564)
KevinDurant_PTS <- c(903,903,1624,1871,2472,2161,1850,2280,2593,686)
DerrickRose_PTS <- c(597,597,597,1361,1619,2026,852,0,159,904)
DwayneWade_PTS <- c(2040,1397,1254,2386,2045,1941,1082,1463,1028,1331)
#Matrix
Points <- rbind(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
rm(KobeBryant_PTS, JoeJohnson_PTS, LeBronJames_PTS, CarmeloAnthony_PTS, DwightHoward_PTS, ChrisBosh_PTS, ChrisPaul_PTS, KevinDurant_PTS, DerrickRose_PTS, DwayneWade_PTS)
colnames(Points) <- Seasons
rownames(Points) <- Players


## List the matrix variables created
Salary
Games
Points
MinutesPlayed
FieldGoals
FieldGoalAttempts

?matplot

# A simplet plot which will not be used often. Better plots/tools available
matplot(FieldGoals, type = "b", pch = 15:18, col = c(1:4,6)) 

# IMPORTANT!! Matplot plots the column. So it will plot the year trend. But we neee player trend. So transpose!!
# Transposing the matrix!
t_FieldGoals = t(FieldGoals)
t_FieldGoals

# IMPORTANT!! Matplot plots the column. So it will plot the year trend. But we neee player trend. So transpose!!
# pch is pictures; col is colors; The numbers are ranges of colors
matplot(t_FieldGoals, type = "b", pch = 15:18, col = c(1:4,6)) 
#Specify where to place it; then inset' retain the pictures and color used for the plot
# plot and legend are 2 different and the parameters needs to be coherent and else it will mislead big time! 
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 


############### BETTER VISUALS - START 
### The X axis does not have the approproate title. It corresponds to Seasons but has the column number as values
# Lets fix this, with a title!!  

# First remove both the axes. There will be no horizontal or vertical lines
matplot(t_FieldGoals, type = "b", pch = 15:18, col = c(1:4,6), axes = F) 

# Notice the title added!! 
title(main = "Baskeball - Players Analysis", sub = "FieldGoals Comparision")

# Now specify the y axis as is. This is correct afterall
axis(2)

# For X axis however, customize as below
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)

# Then ofcourse, add te legend
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 

############### BETTER VISUALS - END 



#### USEFUL VISUALS - START 

t(Salary/Games)
## 1. Visuals based on salary
t(Salary/Games)

matplot(t(Salary/Games), type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Salary Comparision")


## 2. Visuals on performance accuracy

FieldGoals
FieldGoalAttempts
t(FieldGoals/FieldGoalAttempts)

matplot(t(FieldGoals/FieldGoalAttempts), type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Goals Accuracy")


#### USEFUL VISUALS - END



##################### SUBSETTIG - START #######################

########### Subsetting in general matrices - START

vector1 = c(1,2,3,4,5,6)
typeof(vector1)

# create an character vector
# IMPORTANT! The quotes are mandatory
vector2 = c('a','b','c','d','e','f')
typeof(vector2)

# create a vector of smaller dimension
vector3 = c(7,8,9)
typeof(vector3)

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

########### Subsetting in general matrices - END


########### Subsetting in Baskaetball data - START
# Using the drop variable for the matrices is to tell R to consider the return as matrix and not vector
# This is helpful in case we want to do a single variable analysis


## 1. Visuals based on salary
t(Salary/Games)
matplot(t(Salary/Games), type = "b", pch = 15:18, col = c(1:4,6))

Sal_per_game = t(Salary/Games)
is.matrix(Sal_per_game[,"KobeBryant"])
is.matrix(Sal_per_game[,"KobeBryant",drop = F])

matplot(Sal_per_game[,"KobeBryant",drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Salary Comparision")

# "Drop" is particularly useful in cases where it is mandatory to have the single dimentional array as a matrix! 
# matplot is one such situation where "drop" comes handy!!

########### Subsetting in Baskaetball data - END






#################### VISUALIZATIONS, ANALYTSIS, INFERENCES - sTART ########################
 


## List the matrix variables created
Salary
Games
Points
MinutesPlayed
FieldGoals
FieldGoalAttempts

?matplot

# A simplet plot which will not be used often. Better plots/tools available
matplot(FieldGoals, type = "b", pch = 15:18, col = c(1:4,6)) 

# IMPORTANT!! Matplot plots the column. So it will plot the year trend. But we neee player trend. So transpose!!
# Transposing the matrix!
t_FieldGoals = t(FieldGoals)
t_FieldGoals

# IMPORTANT!! Matplot plots the column. So it will plot the year trend. But we neee player trend. So transpose!!
# pch is pictures; col is colors; The numbers are ranges of colors
matplot(t_FieldGoals, type = "b", pch = 15:18, col = c(1:4,6)) 
#Specify where to place it; then inset' retain the pictures and color used for the plot
# plot and legend are 2 different and the parameters needs to be coherent and else it will mislead big time! 
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 


############### BETTER VISUALS - START 
### The X axis does not have the approproate title. It corresponds to Seasons but has the column number as values
# Lets fix this, with a title!!  

# First remove both the axes. There will be no horizontal or vertical lines
matplot(t_FieldGoals, type = "b", pch = 15:18, col = c(1:4,6), axes = F) 

# Notice the title added!! 
title(main = "Baskeball - Players Analysis", sub = "FieldGoals Comparision")

# Now specify the y axis as is. This is correct afterall
axis(2)

# For X axis however, customize as below
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)

# Then ofcourse, add te legend
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 

############### BETTER VISUALS - END 



#### USEFUL VISUALS - START 

t(Salary/Games)
## 1. Visuals based on salary
t(Salary/Games)

matplot(t(Salary/Games), type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Salary Comparision")


## 2. Visuals on performance accuracy

FieldGoals
FieldGoalAttempts
t(FieldGoals/FieldGoalAttempts)

matplot(t(FieldGoals/FieldGoalAttempts), type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Goals Accuracy")


#### USEFUL VISUALS - END





#################### VISUALIZATIONS, ANALYTSIS, INFERENCES - END   ########################




##################### SUBSETTIG - START #######################

########### Subsetting in general matrices - START

vector1 = c(1,2,3,4,5,6)
typeof(vector1)

# create an character vector
# IMPORTANT! The quotes are mandatory
vector2 = c('a','b','c','d','e','f')
typeof(vector2)

# create a vector of smaller dimension
vector3 = c(7,8,9)
typeof(vector3)

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

########### Subsetting in general matrices - END




#################################### CREATING FUNCTIONS - START #############################

########### CONFIG - START 
t(Salary/Games)
matplot(t(Salary/Games), type = "b", pch = 15:18, col = c(1:4,6))

Sal_per_game = t(Salary/Games)
is.matrix(Sal_per_game[,"KobeBryant"])
is.matrix(Sal_per_game[,"KobeBryant",drop = F])

Salary = t(Salary)
Games= t(Games)
Points= t(Points)
MinutesPlayed= t(MinutesPlayed)
FieldGoals= t(FieldGoals)
FieldGoalAttempts= t(FieldGoalAttempts)


# Lets create a function for the below code
matplot(Sal_per_game[,"KobeBryant",drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Salary Comparision")

########### CONFIG - END



# Creating a function - bad/rigid function
myplot = function(){
matplot(Sal_per_game[,"KobeBryant",drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = "Salary Comparision")
}

# Invoking the function
myplot()



# Creating a function - good/flexible/re-usable function
myplot.reuse = function(col_name){
matplot(Sal_per_game[,col_name,drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis")
}

# Invoking the re-usable function
col_name = 1:10 # col_name = "JoeJohnson"
myplot.reuse(col_name)




####################### Creating a function - good/flexible/re-usable function - START 
myplot.reuse = function(data_value, col_name, sub_title = "Visualizations by paramters"){
matplot(data_value[,col_name,drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = sub_title)
}


data_value = (Salary/Games) # t(MinutesPlayed/Games)  # Sal_per_game
col_name = 1:4 # "JoeJohnson"
sub_title = "Salary Comparision"

# Invoking the function with all the variables
myplot.reuse(data_value, col_name, sub_title)

# Invoking the function with a default variable
myplot.reuse(data_value, col_name)

####################### Creating a function - good/flexible/re-usable function - END

#################################### CREATING FUNCTIONS - END ###############################



################ SOME MORE VISUALIZATIONS - INTERESTING/ EXCITING !!! - START ###############

myplot.reuse = function(data_value, col_name, sub_title = "Visualizations by paramters"){
matplot(data_value[,col_name,drop = F], type = "b", pch = 15:18, col = c(1:4,6), axes = F)
axis(2)
axis(side=1,at=1:ncol(t_FieldGoals),labels=Seasons)
legend("bottomleft", inset = .01, legend = Players, pch = 15:18, col = c(1:4,6)) 
title(main = "Baskeball - Players Analysis", sub = sub_title)
}

# Variables inputs for the analysis and the inferesnce
data_value = FieldGoals/FieldGoalAttempts #DwightHoward has supricingly high accuracy
data_value = FieldGoalAttempts # but DwightHoward actually attemps less to score although more accurate
data_value = MinutesPlayed/Games # looks like the time per game is decreasing - interesting
data_value = Games # the games they play is however consistant
data_value = FieldGoals/MinutesPlayed # KevinDurant hits goals for the times he is in the court
data_value = Points/FieldGoals # Playing style is changing! KevinDurant again scores more if high points esp 3 points

col_name = 1:10
sub_title = " Minutes Played Comparision"

# Invoking the function with all the variables
myplot.reuse(data_value, col_name, sub_title)

# Invoking the function with a default variable
myplot.reuse(data_value, col_name)

Points
FieldGoals

#Notes:
# Print the name of a variable/object as a string
deparse(substitute(data_value))


################ SOME MORE VISUALIZATIONS - INTERESTING/ EXCITING !!! - END #################






















