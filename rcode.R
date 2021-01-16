library(ggplot2)
x <- c(1,3,5,7,9)
y <- c(2,4,6,8,10)
ggplot()+ geom_col(data = df, aes( x = Ymd, y = Cases))
