#Part2

###### Data Wrangling: subsetting vectors and factors
#selecting using indices
age <- c(15, 22, 45, 52,  73, 81) #example vector
age[5] #only the 5th value
age[-5] #all values except 5th
age[c(3,5,6)]   #selecting more than one value
# OR
## create a vector first then select
idx <- c(3,5,6) # create vector of the elements of interest
age[idx]
age[1:4] #select a sequence of continuous values

#selecting using indices with logical operators
age > 50
age > 50 | age <18
age
age[age>50 | age<18]
#or
idx <- age > 50 | age < 18
age[idx]

which(age > 50 | age < 18)
age[which(age>50|age<18)]
#or
idx_num <- which(age>50|age<18)
age[idx_num]

#Factors
expression[expression == "high"]
expression
str(expression)

#re-factor a factor
expression <- factor(expression, levels=c("low", "medium", "high"))     # you can re-factor a factor 

str(expression)

#Exercise
idx <- samplegroup != "KO"
samplegroup[idx]
factor(samplegroup, levels = c("KO", "CTL", "OE"))

###### Packages and Libraries
sessionInfo() #Print version information about R, the OS and attached or loaded packages
# OR
search() #Gives a list of attached packages

#package installation crom CRAN
install.packages("ggplot2")

#package installation from Bioconductor
#Do not run! 
install.packages("BiocManager")
BiocManager::install("ggplot2")
#Do not run!

#package installation from source
# DO NOT RUN THIS!
install.packages("~/Downloads/ggplot2_1.0.1.tar.gz", type="source", repos=NULL)

#Loading libraries
library(ggplot2)

#Exercise
#install tidyverse
install.packages("tidyverse")
library(tidyverse)
sessionInfo()

###### Data Wrangling: data frames, matrices, lists

#Data frames
# Extract value 'Wt'
metadata[1, 1]
# Extract value '1'
metadata[1, 3] 
# Extract third row
metadata[3, ] 
# Extract third column
metadata[ , 3]   
# Extract third column as a data frame
metadata[ , 3, drop = FALSE]
# Dataframe containing first two columns
metadata[ , 1:2] 
# Data frame containing first, third and sixth rows
metadata[c(1,3,6), ] 
# Extract the celltype column for the first three samples
metadata[c("sample1", "sample2", "sample3") , "celltype"] 
# Check column names of metadata data frame
colnames(metadata)
# Check row names of metadata data frame
rownames(metadata)
# Extract the genotype column
metadata$genotype
# Extract the first five values/elements of the genotype column
metadata$genotype[1:5]

#Exercise
metadata[c("sample2", "sample8"), c("genotype", "replicate")] # or
metadata[c(2,8), c(1,3)]

metadata$replicate[c(4,9)] # or
metadata[c(4, 9), "replicate"]

metadata[, "replicate", drop = FALSE]

#selecting using indices with logical operators

metadata$celltype == "typeA" #return only rows of the data frame with celltype column having a value of typeA
logical_idx <- metadata$celltype == "typeA"
metadata[logical_idx, ] #extract the rows

#using the which() function
which(metadata$celltype == "typeA")
idx <- which(metadata$celltype == "typeA")
metadata[idx, ]

#Extract the rows of the metadata data frame for only the replicates 2 and 3
which(metadata$replicate > 1)
idx <- which(metadata$replicate > 1)
metadata[idx, ]
#or
metadata[which(metadata$replicate > 1), ]
sub_meta <- metadata[which(metadata$replicate > 1), ]

#Exercise
idx <- which(metadata$genotype=="KO")
metadata[idx, ]

##Lists
list1[[2]] #list 1, 2nd component
comp2 <- list1[[2]]
class(comp2) #check what you retrieve

list1[[1]] #reference what is inside the component
list1[[1]][1] #first element of the vector

#Exercise
random <- list(metadata, age, list1, samplegroup, number)
random[[4]]

#checking names
names(list1)
#name the components of list
# Name components of the list
names(list1) <- c("species", "df", "number")
names(list1)

# Extract 'df' component
list1$df

#Exercise
names(random) <- c("metadata", "age", "list1", "samplegroup", "number")
#Extract the age component using the $ notation
random$age