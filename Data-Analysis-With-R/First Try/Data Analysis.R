install.packages("dplyr")
install.packages("readr")
install.packages("ggplot2")

library(readr)
library(dplyr)
library(ggplot2)

example <- read_csv("C:/Users/Asus/Downloads/archive/adult_tr.csv")
View(example)

head(example)
tail(example)
dim(example)
names(example)
glimpse(example)

#descriptive statistics

#display all race values
example$race

#display unique race values
unique(example$race)
length(unique(example$race))

#calculate mean,median,range
mean(example$final_weight)
median(example$final_weight)
range(example$final_weight)

#summary of dataset
summary(example)

#dealing with missing data
# na.rm indicates there are any null value available or not
mean(example$capital_gain, na.rm= TRUE)

#is.na tells if there is any missing value there or not
is.na(example$capital_loss)

#sum adds all the null values
sum(is.na(example$hours_per_week))

#replace na values with 0 (Tho it is done here)
example[is.na(example)] <- 0

#view dataset
View(example)

#Data Visualization
#ggplot(example, aes(final_weight)) + geom_histogram(bins=30)
#ggplot(example, aes(age)) + geom_histogram(bins=30)

#Age Distribution
ggplot(example, aes(x = age)) + 
  geom_histogram(bins = 30, fill = "steelblue", color = "black") +
  labs(title = "Distribution of Age",
       x = "Age",
       y = "Count") +
  theme_minimal()

#Gender Distribution
ggplot(example, aes(x = sex)) +
  geom_bar(fill = "orange") +
  labs(title = "Gender Distribution",
       x = "Gender",
       y = "Count") +
  theme_minimal()

#Scatter Plot 
ggplot(example, aes(x = age, 
                    y = hours_per_week, 
                    color = sex)) +
  geom_point(alpha = 0.4) +
  labs(title = "Age vs Hours Worked Per Week",
       x = "Age",
       y = "Hours per Week",
       color = "Sex") +
  theme_minimal()


colnames(example)

#Two Colors Using threshold
ggplot(example, aes(x = age,
                    y = hours_per_week,
                    color = threshold)) +
  geom_point(alpha = 0.4) +
  labs(title = "Age vs Hours Worked per Week",
       x = "Age",
       y = "Hours per Week",
       color = "Threshold") +
  theme_minimal()


#Visualize Before Testing (Good Practice)
ggplot(example, aes(x = sex, y = hours_per_week, fill = sex)) +
  geom_boxplot() +
  theme_minimal()

#T Test
#t.test(NUMERIC_VARIABLE ~ GROUP_VARIABLE, data = example)
t.test(age~sex,data=example)
t.test(capital_gain ~ sex, data = example)
t.test(age ~ threshold, data = example)

# Linear Regression
# Print the full model statistics

fit <- lm(hours_per_week ~ age, data = example)

summary(fit)

ggplot(example, aes(x = age, y = hours_per_week)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()

#Multiple Linear Regression
fit <- lm(hours_per_week ~ age + `education-num` + capital_gain,
          data = example)

summary(fit)

ggplot(example, aes(x = age,
                    y = hours_per_week,
                    col = sex)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_minimal()
