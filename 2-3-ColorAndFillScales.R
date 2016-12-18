#Color and fill scales
#Discrete 
b <- ggplot(mpg, aes(fl))
n <- b + geom_bar(aes(fill = fl))
n + scale_fill_brewer(palette = "Blues") 
n + scale_fill_grey(start = 0.2, end = 0.8,
  na.value = "red")

#Continuous
a <- ggplot(mpg, aes(hwy))
o <- a + geom_dotplot(
  aes(fill = ..x..))
o + scale_fill_gradient(
  low = "red",
  high = "yellow")
o + scale_fill_gradientn(
  colours = terrain.colors(6)) #Also: rainbow(), heat.colors(),

#Shape scales
p <- f + geom_point(aes(shape = fl))
p + scale_shape(solid = FALSE)
p + scale_shape_manual(values = c(3:7)) 

#Face 
t <- ggplot(mpg, aes(cty, hwy)) + geom_point()
t + facet_grid(. ~ fl)
t + facet_grid(year ~ .)
t + facet_grid(year ~ fl)
t + facet_wrap(~ fl)