# types of data
# Character
c <- 'c'
ch <- 'Helloo wr'
# 2. Numeric
n <- 2
n <- 2.4
# 3. Integer
i <- 2L
# 4. Complex Number
iC <- 1+2i
# 5. Logical
l <- TRUE
# 6. List


# Data Structures
# 1 Atommic Vector
# 2 List
# 3 matric
# 4 Data Frame

# Atomic Vector
log_vector <- c(TRUE, TRUE, FALSE,FALSE)
char_vector <- c("a","b","c")
char_vector <- c(char_vector, "d", "e")
length(char_vector)

# NA
a <- c("A",NA,"C")

# Extremes
1/0
0/0

mixed <- c(TRUE, "A")
as.logical(mixed)

# List
my_list <- list(1, "A", TRUE)
my_list

# Mat

m <- matrix (nrow = 2, ncol = 3)

# Data Frames
df <- data.frame(id = letters[1:10], x =1 : 10, y = 11: 20 )

class(df)