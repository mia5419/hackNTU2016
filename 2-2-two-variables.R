# Continuous X, Continuous Y
f <- ggplot(mpg, aes(cty, hwy))
f + geom_point()
f + geom_quantile()
f + geom_quantile()
f + geom_smooth(model = lm)
f + geom_text(aes(label = cty))

#Discrete X, Continuous Y
g <- ggplot(mpg, aes(class, hwy))
g + geom_bar(stat = "identity")
g + geom_boxplot()
g + geom_dotplot(binaxis = "y", stackdir = "center")
g + geom_violin(scale = "area")

#Discrete X, Discrete Y
h <- ggplot(diamonds, aes(cut, color))
h + geom_jitter()
