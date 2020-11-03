#load the libraries
library(ggplot2)
library(plotly)

gamma <- data.frame(value = rgamma(n=30000,shape = 2, scale = 
                  0.7))

hist(gamma)

pdf_gamma<- ggplot(gamma, aes(x = value))+
  geom_histogram(bins=50,fill="#69b3a2", color="#e9ecef", alpha=0.9)+
  ggtitle("Random Number Generation from Gamma Distribution")+
  theme_bw()
pdf_fig <- ggplotly(pdf_gamma)
pdf_fig
  

x <- seq(0.0,10, by=0.1)
x
y <- dgamma(x, shape= 2, scale = 0.7)
y
plot(x,y)

gamma_data <- cbind.data.frame(x,y)

line_plot<- ggplot(gamma_data, aes(x=x,y=y))+
  geom_line(color='grey')+
  geom_point(shape=21, color="black", fill="#69b3a2", size=3) +
  ggtitle("GAMMA Distribution with alpha = 2 and beta = 0.7")+
  theme_bw()
  


fig <- ggplotly(line_plot)
fig
