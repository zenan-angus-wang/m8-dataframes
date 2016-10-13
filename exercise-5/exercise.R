# Exercise 5: Gates Foundation Educational Grants
setwd('/Users/zenanwang/Desktop/info201/in-class-practice/m8-dataframes/exercise-5/data')
# Read data into a variable called `grants` using the `read.csv` function
grands <- read.csv('gates_money.csv', stringsAsFactors = FALSE)

# Use the View function to look at your data
View(grands)

# Create a variable `spending` as the `total_amount` column of the dataset
spending <- grands$total_amount

# Confirm that your `spending` variable is a vector using the `is.vector` function
is.vector(spending)

# Create a variable `org` as the `organization` column of the dataset.
# Unfortunately, it will not be a vector by default, so you must transform it using the as.vector function
org <- as.vector(grands$organization)

### Now you can ask some more interesting questions about the dataset.  Store your answers in variables ###

# What was the mean grant value?
grandMean <- mean(spending)

# What was the dollar amount of the largest grant?
grandMax <- max(spending)

# What was the dollar amount of the smallest grant?
grandMin <- min(spending)

# Which organization received the largest grant?
largestGrantFor <- grands$organization[which.max(spending)]

# Which organization received the smallest grant?

smallestGrantFor <- grands$organization[which.min(spending)]

# How many grants were awarded in 2010?
sum2010 <- sum(grands$total_amount[grands$start_year == 2010])
