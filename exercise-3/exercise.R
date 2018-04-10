# Exercise 3: working with built-in data sets

# Load R's "USPersonalExpenditure" dataset using the `data()` function
# This will produce a data frame called `USPersonalExpenditure`
data(USPersonalExpenditure)

# The variable `USPersonalExpenditure` is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
is.data.frame(USPersonalExpenditure)

# Luckily, you can pass the USPersonalExpenditure variable as an argument to the
# `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
exped_data <- data.frame(USPersonalExpenditure,
                                         stringsAsFactors=FALSE)

# What are the column names of your dataframe?
colnames(exped_data)

## Consider: why are they so strange? Think about whether you could use a number 
## like 1940 with dollar notation!

# What are the row names of your dataframe?
rownames(exped_data)

# Add a column "category" to your data frame that contains the rownames
exped_data$category <- rownames(exped_data)

# How much money was spent on personal care in 1940?
exped_data[4, 1]

# How much money was spent on Food and Tobacco in 1960?
exped_data[1, 'X1960']

# What was the highest expenditure category in 1960?
highest_1960 <- exped_data$category[exped_dataa$X1960 == max(exped_data$X1960)]

# Define a function `lowest_category` that takes in a year as a parameter, and
# returns the lowest spending category of that year
lowest_category <- function(years){
  col_year <- paste0("X", year)
  result <- exped_data$category[us_exp[, col_year] == min(us_exp[, col_year])]
}

# Using your function, determine the lowest spending category of each year
# Hint: use the `sapply()` function to apply your function to a vector of years

lowest <- sapply(seq(1940, 1960, 5), lowest_category)
