#Question 3(a) 
shoes <- c(92, 49, 37, 13, 9)
brands <- c("Nike", "Adidas", "Reebok", "Asics", "Other")


par(mar=c(2,2,4,2))
colors <- c("#FFD1DC","#C1E1C1","#CDE7FF","#FFF4B5","#E0CCFF")
pie(shoes,
    labels=paste(brands, shoes),
    main="Favorite Running Shoe Brands",
    col=colors,
    cex=0.9)

#Question 3(b)
class <- c("0-10","10-20","20-30","30-40","40-50","50-60")

frequency <- c(8,12,30,25,18,17)

#Bar plot
barplot(frequency,
        names.arg=class,
        col="skyblue",
        main="Frequency Distribution",
        xlab="Class Interval",
        ylab="Frequency")


#Histogram
data <- rep(c(5,15,25,35,45,55), frequency)
hist(data,
     breaks=6,
     col="lightgreen",
     main="Histogram of Frequency Distribution",
     xlab="Class Interval")