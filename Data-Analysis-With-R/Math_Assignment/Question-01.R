# 1(a) Student Information

ID <- c(241311049, 241311050, 241311051, 241311052, 241311053)

Name <- c("Mst. Sadia Akter Munia",
          "Soniya Akter",
          "Abdullah Atif",
          "Habibatul Kobra",
          "Md. Saibur Rahman")

Gender <- c("Female","Female","Male","Female","Male")

District <- c("Rajshahi","Rajshahi","Rajshahi","Chapainawabganj","Natore")

Age <- c(20,21,21,21,22)

Parents_Income <- c(20000,30000,60000,10000,22000)

CGPA <- c(3.18,3.6,3.46,2.79,3.5)

# 1(b)
print(ID)
print(Name)
print(Gender)
print(District)
print(Age)
print(Parents_Income)
print(CGPA)

#1(c)
students <- data.frame(ID, Name, Gender, District, Age, Parents_Income, CGPA)

print(students)

#1(d)
install.packages("psych")
library(psych)

#Arithmetic Mean
mean(Age)
mean(Parents_Income)
mean(CGPA)

#Geometric Mean
geometric.mean(Age)
geometric.mean(Parents_Income)
geometric.mean(CGPA)

#Harmonic Mean
harmonic.mean(Age)
harmonic.mean(Parents_Income)
harmonic.mean(CGPA)

#Median
median(Age)
median(Parents_Income)
median(CGPA)

#Mode Function
Mode <- function(x){
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(Age)
Mode(Parents_Income)
Mode(CGPA)

#1(e)
#Line Plot
plot(Age,
     type="o",
     col="red",
     main="Line Plot of Students Age",
     xlab="Students",
     ylab="Age")

#Histogram
hist(CGPA,
     main="Histogram of CGPA",
     col="lightblue",
     xlab="CGPA")

#Bar Plot
par(mar=c(10,4,4,2))

barplot(Parents_Income,
        main="Parents Income of Students",
        col="pink",
        names.arg=Name,
        las=2,
        cex.names=0.7,  
        cex.axis=0.7,   
        ylab="Income (Taka)")
#Pie Chart
par(mar=c(2,2,4,2))
colors <- c("#FFB3BA", "#BAFFC9", "#BAE1FF", "#FFFFBA", "#E6CCFF")

pie(CGPA,
    labels=Name,
    main="CGPA Pie Chart",
    col=colors,
    cex=0.7)