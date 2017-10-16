# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
# Create a new variable by passing the USPersonalExpenditure to the data.frame function
uspe <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
X1940  X1945 X1950 X1955 X1960

# Why are they so strange?
Must have letter in front of number or they wont be recognized

# What are the row names of your dataframe?
Food and Tobacco, Household Operation, Medical and Health, Personal Care, Private Education

# Create a column `category` that is equal to your rownames
uspe$category <- rownames(uspe)

# How much money was spent on personal care in 1940?
personalcare.1940 <- uspe["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
food.1960 <- uspe["Food and Tobacco", X1960]

# What was the highest expenditure category in 1960?
highest.1960 <- uspe$category[uspe$X1960 == max(uspe$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

# Using your function, determine the highest spending category of each year


# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
