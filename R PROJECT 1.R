getwd() # to show that a working directory has been set.

#BASIC CONCEPTS
# 1. to create a vector 
x<- c(1, 2,3 ,4 ,5 )
y <- c("a", "b", "c", "d", "e")

# 2. sequence of numbers
x <- 1:20
y <- seq(-pi, pi, length = 10)
a <- rnorm (60)

s3 <- seq(-5, 5, by=.2)
s3
s4 <- seq(-5, length= 51, by =.2)
s4
# 2b. repetitions on sequence
x <- c(12, 3, 2, 6)
b <- c(1, 2, 3, 4)
x2 <- rep (x, times = b)
x2

#3. Matrix
matrix1 <- seq(-4.78,5.99,length=8)
matrix1
dim(matrix1) <- c(4,2)
matrix1

x <- cbind(rep(2,4))
y <- cbind(rep(3,4))
matrix2 <- cbind(y,x)
matrix2

array(c(3:12,15:24,27:36),dim=c(2,5,3))

# 4. Lists
names1 <- c("Mich", "Lisa", "Mary", "Joe")
grade1 <- c(8, 5, 7, 9)
list(names=names1,marks=grade1)

# 5. Graphs
stock <- c(45,43,46,48,51,46,50,47,46,45)
day <- 1:10
plot(day,stock,col="blue", main ="scatterplot1") # adding colour to the scatter plot

# 5b. partitioning graphs in a view
par(mfrow=c(2,2))
x <- rnorm(100)
plot(1:20,1:20,main="straight line"); hist(x,main="histogram")
plot(density(rnorm(50)),main="normal density")
qqnorm(rt(100,10),main="Samples from t(10)")

# 5c. Boxplot 
x <- c(5.5,8.2,3.1,5.6,3.2,9.3,6.5,7.0,9.1,1.9,14.5,4.2)
summary(x)
boxplot(x)

# 5d. Barplot
x <- c(1,1,1,2,2,2,1,1,1,2,3,3,3,3,3,3,3,3,2,2)
y <- table(x)
barplot(y,col= c("lightblue", "mistyrose", "lightcyan"))

# 5e. using a external dataset to generate Barplots
data3 <- read.table("student1.txt", header = TRUE)    
attach(data2)
y <- table(sm,st)

barplot(y,ylab="freq",xlab="studying time", 
        col = c("lightblue", "mistyrose"), 
        legend.text=c("Yes","No"), 
        main="(a) Stacked frequency bar chart")
barplot(y,ylab="freq",xlab="studying time", 
        col = c("lightblue", "mistyrose"), 
        legend.text=c("Yes","No"), 
        main="(a) Stacked frequency bar chart", 
        beside = TRUE)

# 5f. Piechart
pie(y,col = c("lightblue", "mistyrose", "lightcyan")) #without names
names(y) <- c("current smoker","used-to-be","never-smoker") #specify names for levels
pie(y,col = c("lightblue", "mistyrose", "lightcyan")


# 5g. Labelling and extras - Barplot
x <- rnorm(25)
y <- rnorm(25)
plot(x, y)
plot(x, y, xlab="25 random values", ylab="25 other values", xlim=c(-2, 2),
     ylim=c(-2, 2), pch=22, col="red",
     bg="yellow", bty="l", tcl=0.4,
     main="How to customize a plot with R", las=1, cex=1.5)

rats <- read.table("rat1.txt", header = TRUE)
attach(rats)
plot(week1, week6, main= "week1 vs week6")
increase <- week6 - week1 # to measure weight differences
increase
mean(increase) # to get the average of the difference

# 6. calling datasets (in text format) from directory 
data1 <- read.table("demodata.txt", header = TRUE)
data1
