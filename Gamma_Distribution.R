#load the libraries
library(ggplot2)
library(plotly)

#randomly generate gamma distribution 
gamma <- data.frame(value = rgamma(n=30000,shape = 2, scale = 
                  0.7))

# plot a histogram of the probability density function
pdf_gamma<- ggplot(gamma, aes(x = value))+
  geom_histogram(bins=50,fill="#69b3a2", color="#e9ecef", alpha=0.9)+
  ggtitle("Random Number Generation from Gamma Distribution")+
  theme_bw()

#use plotly to create interactive plots
pdf_fig <- ggplotly(pdf_gamma)
pdf_fig
  
# generate a sequence of numbers from 0 to 10, incremented by 0.1
x <- seq(0.0,10, by=0.1)
#get the probability for each of the generated numbers 
y <- dgamma(x, shape= 2, scale = 0.7)
#create a dataframe using those numbers 
gamma_data <- cbind.data.frame(x,y)

#Probabilty Density Function for a Gamma Distribution with Alpha = 2 and Beta = 0.7
line_plot<- ggplot(gamma_data, aes(x=x,y=y))+
  geom_line(color='grey')+
  geom_point(shape=21, color="black", fill="#69b3a2", size=3) +
  ggtitle("GAMMA Distribution with alpha = 2 and beta = 0.7")+
  theme_bw()
  
#display the plot
fig <- ggplotly(line_plot)
fig
