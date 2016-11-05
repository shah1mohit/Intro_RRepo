# Load data into variable

gapminder <- read.csv('gapminder-FiveYearData.cs', header = TRUE)

head(gapminder) # print first few lines
class(gapminder) # how is data stored
dim(gapminder) # how much data we have.. rows / columns

#Access Data
# Index starts with 1
# includes end values
gapminder[1,1] # single value
gapminder[1,] # first row all col
gapminder[1:12,] # row 1 to 12
gapminder[1:12,1:3] # row 1-12 col 1-3

gapminder[c(1,13,25),c(1,3)] # select rows 1 13 25

head(gapminder[,-4])

head (gapminder[-1:-12,]) # - will exclude data

# simple stats
min(gapminder[,3])
max(gapminder[,3])
mean(gapminder[,3])
sd(gapminder[,3])

# create new data frame country, years , life exp
# min and max life exp
v <- gapminder[,c(1,2,5)]

min(v[,3])
max(v[,3])