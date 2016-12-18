
#Points (Scatterplot)
install.packages("Ecdat")
install.packages("ggplot2")
library(ggplot2)
library(Ecdat)
View(Housing)
data <- Housing
p1 <- ggplot(Housing,aes(y = price, x = bedrooms)) + geom_point()

#Aesthetic Mapping VS Assignment
p1 +
  geom_point(aes(size = 2),# incorrect! 2 is not a variable
             color="red") # this is fine -- all points red

? geom_point

#Color
p1 + geom_point(aes(color=driveway))

#Practice
#One Variable
a <- ggplot(mpg, aes(hwy))
a + geom_area(stat = "bin")
a + geom_dotplot()
a + geom_freqpoly()
a + geom_histogram(binwidth = 5)

b <- ggplot(mpg, aes(fl))
b + geom_bar()

#choose housing as your data, plot it

