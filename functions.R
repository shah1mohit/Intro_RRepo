#Strings
str <- "This is my first script"
"This is another method to assign variables" -> str2

#clear variables in env
ls()
rm(list = ls())

#To clear console history--CTRL+L
#to check what a syntax means. 
?mean

# A function has 4 components- name, statement, argument,body,return(optional)

#Creating a sum_total function

my_sum <- function(input_1,input_2){
  tot=input_1+input_2
  return(tot)
}
#Calling a function
my_sum(4,5)
#Best practices
my_sum(input_1 = 4,input_2 = 5)

#Note: Esc button for exiting console prompt


# Function to convert fah to kelvin
# last stmt of a function is a return statement which is optional

fah_to_kelvin <- function (fah){
  
  kelv=  (((5/9) * (fah - 32)) + 273)
  return(kelv)
}

fah_to_kelvin(asc('m'))

asc('M')



# Convert fah to celsius

fah_to_celsius <- function (fah){
  
  cels=  ((5/9) * (fah- 32))
  return(cels)
}
fah_to_celsius(32)


# install packages - give package name 
install.packages("gtools")


# Exercise 2
best_practice <- c("write","programs","for","people","not","computers")
asterix <- "***"
# takes 2 args and returns new vector with asterisk at the beginning and at the end

fence <-function(best_practice,asterix){
  final_var <- c(asterix,best_practice,asterix)
  
  return(final_var)
}

fence(best_practice,asterix)




#Create a import function
source("fah_to_cel.R")


dir.create("data")
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv"
              ,destfile = "data/gapminder.csv"
)


dot <- read.csv('data/gapminder.csv', header = TRUE)
head(dot)
summary(dot)
str(dot)

# write a function called analyze that takes countrty as argument and 
# displays mean min max life exp of that cuntry
# Subset dataset
country_name <- subset(dot,dot$country == 'Uganda')
head(country_name)
summary(country_name)

# cal min max
mean(country_name[,5])
min(country_name[,5])
max(country_name[,5])

# function row

analyze <- function(cname){
  country_name <- subset(dot,dot$country == cname)
  x <- mean(country_name$lifeExp)
  y <- min(country_name$lifeExp)
  z <- max(country_name$lifeExp)
  out <- c(cname,Mean =  x, "Min" = y, "Max"= z)
  return (out)
}
analyze('Uganda')

# Plot year on x and lifeExp on y
analyze1 <- function(cname){
  country_name <- subset(dot,dot$country == cname)
  years <- country_name$year
  Life_Exp <- country_name$lifeExp
  plot(years,Life_Exp)
  
  
  #x <- mean(country_name$lifeExp)
  #y <- min(country_name$lifeExp)
  #z <- max(country_name$lifeExp)
  #out <- c("Mean" =  x, "Min" = y, "Max"= z)
  #return (out)
}
analyze1('Albania')

best_practice <- c("e","z","ddw","ws","dsa","asf")

best_practice_fun <- function(some_arg){
  print(some_arg[1])
  print(some_arg[2])
  print(some_arg[3])
  print(some_arg[4])
  print(some_arg[5])
}

best_practice_fun(best_practice)

for (x in best_practice){
  print(x)
}

gapminder_52_97 <- subset(subset(dot,dot$year == 1952 | dot$year == 1997))
head(gapminder_52_97)

gapminder_62_07 <- subset(subset(dot,dot$year == 1967 | dot$year == 20077))
head(gapminder_62_07)
write.csv(file = "data/gapminder_52_97.csv",gapminder_52_97,row.names = FALSE, quote = FALSE)
write.csv(file = "data/gapminder_62_07.csv",gapminder_62_07, row.names = FALSE, quote = FALSE)

csvdata <- read.csv(file = "data/gapminder_52_97.csv", header = TRUE)
for (x in csvdata){
  print (x)
}


analyze_data <- function(fname, cname){
  x <- read.csv(file = fname, header = TRUE)
  country_name <- subset(x,x$country == cname)
  x <- mean(country_name$lifeExp)
  y <- min(country_name$lifeExp)
  z <- max(country_name$lifeExp)
  out <- c(Mean =  x, "Min" = y, "Max"= z)
  return (out)
}

analyze_all <- function(pat,cnt){
  filename <- list.files(path = 'data',pattern = pat, full.names = TRUE )
  for (f in filename){
    print(f)
    print(cnt)
    res <- analyze_data(f,cnt)
    print(res)
  }
}
analyze_all(".csv",'Uganda')
analyze_all(".csv",'Algeria')