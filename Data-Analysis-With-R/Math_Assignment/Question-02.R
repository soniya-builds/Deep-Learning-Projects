#Question 2(a)
X <- c(
  11,17,15,22,11,16,19,24,29,25,
  18,18,25,26,32,14,17,20,23,27,
  30,12,24,36,18,15,20,28,33,38,
  34,13,12,16,20,22,29,19,23,31
)

X

#Question 2(b) Find AM, GM, HM, Median, Mode
#Arithmetic Mean
mean(X)

#Geometric Mean
library(psych)
geometric.mean(X)

#Harmonic Mean
harmonic.mean(X)

#Median
median(X)

#Mode
Mode <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(X)

#Question 2(c)
breaks <- seq(min(X), max(X), by=5)

freq_table <- table(cut(X, breaks))

freq_table

#Question 2(d)
#Line Plot
plot(X,
     type="o",
     col="blue",
     main="Line Plot of X",
     xlab="Observation",
     ylab="Value")

#Histogram
hist(X,
     col="lightgreen",
     main="Histogram of X",
     xlab="Values")

#Bar Plot
barplot(table(X),
        col="pink",
        main="Bar Plot of X",
        xlab="Values",
        ylab="Frequency")

#Pie Chart
pie(table(X),
    main="Pie Chart of X",
    col=rainbow(length(unique(X))))