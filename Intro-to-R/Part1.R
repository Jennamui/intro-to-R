# Part 1
#Intro to R Lesson
# Interacting with R

##I am adding 3 and 5
3+5
x <- 5
y <- 10
y
x+y
number <- x + y 

#R syntax and data structure
#numeric vector
glengths <- c(4.6, 3000, 50000)
glengths

#character vector
species <- c("ecoli", "human", "corn")
species

#vector of numeric and character values
combined <- c(glengths, species)

# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")

# Turn 'expression' vector into a factor
expression <- factor(expression)

#another example
samplegroup <- c("CTL", "CTL", "CTL", "KO", "KO", "KO", "OE", "OE", "OE")
samplegroup <- factor(samplegroup)

# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)

titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)
#create df of favorite books
favorite_books <- data.frame(titles, pages)

#create lists
list1 <- list(species, df, number)
list2 <- list(species, glengths, number)

#Basic functions
#add elements to an existing vector
glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning

#square root
sqrt(81)
sqrt(glengths)

#round numbers
round(3.14159)
round(3.14159, 2) #round to two digits

#finding mean
mean(glengths)

test <- c(1, NA, 2, 3, NA, 4)
mean(test, na.rm=TRUE)

#seeking help
?round
args(round)
example("round")

#sorting
sort(glengths, decreasing = TRUE)

#user defined functions
name_of_function <- function(argument1, argument2) {
  statements or code that does something
  return(something)
}
square_it <- function(x) {
  square <- x * x 
  return(square)
}
square_it(5)

multiply_it <- function(x,y) {
  product <- x * y
  return(product)
}

multiply_it(x=4,y=6)

#Reading in and Inspecting Data
#csv
read.csv()
read_csv()
#tsv
read.tsv()
#txt
read.table() #utils
read.table() #readr
read.delim() #readr

readdta() #stata version 13-14
read.dta()#stata version 7-12
read.spss() #spss
read.sas7bdat() #sas
read_excel() #excel 

#create dataframe by reading in the file
metadata <- read.csv(file="data/mouse_exp_design.csv")

#Exercise 1
proj_summary <- read.table(file = "data/project-summary.txt", header = TRUE, row.names = 1)

#inspecting data
head(metadata) #check first 6 lines
tail() #check last 6 lines
str() #compact display of data contents
class() #displays data type
summary() #display contents
length() #number of elements
dim() #dimensions
nrow() #number of rows
ncol() #number of columns
rownames() #get row names
colnames() #get column names

#Exercise 2
class(glengths)
class(metadata)
summary(proj_summary)
dim(samplegroup)
str(rownames(metadata))
length(colnames(proj_summary)

