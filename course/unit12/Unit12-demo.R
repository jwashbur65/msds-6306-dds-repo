
#Live Session 12 demo
install.packages("dygraphs")
library("dygraphs")

install.packages("forecast")
library("forecast")

#read, convert and display births timeseries dataset
births <- scan("http://robjhyndman.com/tsdldata/data/nybirths.dat") 
births <- ts(births, frequency = 12, start = c(1946, 1))  #frequency =12 because its a monthly dataset, 1=yearly, 4=quarterly
births

#read, convert and display gift shop dataset
gift <- scan("http://robjhyndman.com/tsdldata/data/fancy.dat")
gift<- ts(gift, frequency=12, start=c(1987,1))
gift 

#plot births and gift timeseries - both have seasonal components 
plot(births)  #additive or multiplicative?
plot(gift)    #additive or multiplicative?
abline(v=1992, col="red")


#decompose seasonal data
birthsComp <- decompose(births, type="add")
plot(birthsComp)

giftComp <- decompose(gift, type="mult")
plot(giftComp)

#HoltWinters filtering on births
birthsHW <- HoltWinters(births)
birthsHW
plot(birthsHW)

#forecast for next 48 months
#start from 1952
#blue line: actual prediction, dark gray: 80% confidence interval, light gray: 95% confidence interval
birthsSubset<-window(births, start=1952)
birthsF5 <- hw(birthsSubset, initial="optimal", h=48)
plot(birthsF5)
lines(fitted(birthsF5), col="red")

#dygraphs
dygraph(birthsSubset, main="Birth rates", ylab="Births", xlab="Year") %>% 
  dyRangeSelector(height=100) %>%
  dyShading(from = "1955-1-1", to = "1956-1-1", color = "#FFE6E6") %>%
  dyShading(from = "1959-1-1", to = "1960-1-1", color = "#CCEBD6")





