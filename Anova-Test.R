# Author: McCollum; Date: 3/27/2025; Purpose: Form Anova Test

# Install Library
library(dplyr)
#(Should already be installed and should show a load function when implemented)
# Load Library ^

# Store the http link in a varaible called PATH
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

# Read the csv file from the above link
df<- read.csv(PATH)

# Double check Load
head(df)
# (you'll see a double header name on the, you need to remove the row name coluumn with a function)

# How to remove Row names
Just add row.names=FALSE to your write.csv(PATH) call: write.csv (PATH, paste(names(PATH), ".csv", sep=""), row.names=FALSE)

# If this doesn't work temporary solution is to use df[,c(2:4)] to only show 2:4
df[,c(2,4)]

write.csv (df[[PATH]], paste(names(df[PATH]), ".csv", sep=""), row.names=FALSE)

# Load Libray GGPlot
library(ggplot2)

#Plot data using GGPlot2
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() + geom_jitter(shape = 15, color = "steelblue", position = position_jitter(0.21)) + theme_classic()

# Apply ANOVA fn
anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)
            Df Sum Sq Mean Sq F value   Pr(>F)    
poison       1 0.9316  0.9316   20.67 3.96e-05 ***
Residuals   46 2.0735  0.0451                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
