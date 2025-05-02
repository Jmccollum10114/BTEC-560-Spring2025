#Author: Jaylin McCollum,Date: April 29,2025, Title: Chi-Squared Test

# Read .csv file
> data_frame <- read.csv("https://goo.gl/j6lRXD")
# ( I used > df <- read.csv("https://goo.gl/j6lRXD") instead)

# Create the table 
> table(data_frame$treatment, data_frame$improvement)
# (I used > table(df$treatment, df$improvement) instead) 

              improved not-improved
  not-treated       26           29
  treated           35           15

# Apply Chi-Squared Test
> chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)
# (I used > chisq.test(df$treatment, df$improvement, correct=FALSE) instead)
        Pearson's Chi-squared test

data:  df$treatment and df$improvement
X-squared = 5.5569, df = 1, p-value = 0.01841

