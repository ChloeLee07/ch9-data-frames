# Exercise 4: external data sets: Gates Foundation Educational Grants

# Use the `read.csv()` functoin to read the data from the `data/gates_money.csv`
# file into a variable called `grants` using the `read.csv()`
# Be sure to set your working directory in RStudio, and do NOT treat strings as 
# factors!
my_data <- read.csv("./data/gates_money.csv", stringsAsFactors=FALSE)

# Use the View function to look at the loaded data
View(my_data)

# Create a variable `organization` that contains the `organization` column of 
# the dataset
organization <- my_data$organization

# Confirm that the "organization" column is a vector using the `is.vector()` 
# function. 
# This is a useful debugging tip if you hit errors later!
is.vector(organization)

## Now you can ask some interesting questions about the dataset

# What was the mean grant value?
mean_grant <- mean(my_data$total_amount)
mean_grant
# What was the dollar amount of the largest grant?
largest_grant = max(my_data$total_amount)
largest_grant
# What was the dollar amount of the smallest grant?
smallest_grant <- min(my_data$total_amount)
smallest_grant
# Which organization received the largest grant?
received_org <- my_data$organization[my_data$total_amount == max(my_data$total_amount)]
received_org
# Which organization received the smallest grant?
smallest_org <- my_data$organization[my_data$total_amount == min(my_data$total_amount)]
smallest_org
# How many grants were awarded in 2010?
length(my_data$total_amount[my_data$start_year == 2010])
