### -------------------- Exercise 1: Creating data frames --------------------

## Create a vector of the number of points the Seahawks scored in the first 5 games
                           # Hint: google "Seahawks scores", or check the football database:
                           # http://www.footballdb.com/teams/nfl/seattle-seahawks/results
                           # here 'Result' displays scores, 'L' stands for loss, 'W' for win

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 5 games
scoreFor <- c(48, 13, 13, 19, 9) ## seahawks points 
scoreAgainst <- c(17, 20, 26, 13, 17) ## pointsby other teams

# Combine your two vectors into a dataframe
seahawksGames <- data.frame(scoreFor, scoreAgainst)
> seahawksGames
  scoreFor scoreAgainst
1       48           17
2       13           20
3       13           26
4       19           13
5        9           17

# Create a new column "diff" that is the difference in points
seahawksGames$diff <- seahawksGames$scoreFor-seahawksGames$scoreAgainst
> seahawksGames
  scoreFor scoreAgainst diff
1       48           17   31
2       13           20   -7
3       13           26  -13
4       19           13    6
5        9           17   -8


# Create a new column "won" which is TRUE if the Seahawks won
> seahawksGames$won <- seahawksGames$diff > 0
> seahawksGames
  scoreFor scoreAgainst diff   won
1       48           17   31  TRUE
2       13           20   -7 FALSE
3       13           26  -13 FALSE
4       19           13    6  TRUE
5        9           17   -8 FALSE

# Create a vector of the opponents
> seahawksGames$opponents <- c("Chargers", "Vikings", "Chiefs", "Raiders", "Packers")
> seahawksGames
  scoreFor scoreAgainst diff   won opponents
1       48           17   31  TRUE  Chargers
2       13           20   -7 FALSE   Vikings
3       13           26  -13 FALSE    Chiefs
4       19           13    6  TRUE   Raiders
5        9           17   -8 FALSE   Packers
> 

# Add the vector of opponents into the data frame
