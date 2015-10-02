setwd("~/hipc/HIPC/analysis")
getwd()
library("xts")
library("forecast")
weather_data<- read.csv("sort_weather_data.csv")
d_onion <-read.csv ("data_Onion.csv")
head (d_onion)
d_onion$TimeSeries=as.Date(d_onion$TimeSeries)

day_test_Data<-15
xts_onion <- xts(d_onion$Price, d_onion$TimeSeries,f=1)
plot (xts_onion)
xts_onion_train=xts_onion[paste("2015-01-01","2015-06-30",sep="::")][,1]
nrow(xts_onion_train)
onion_train_fit<- auto.arima(xts_onion_train)
fcast<- forecast(onion_train_fit,h=day_test_Data)
plot(fcast)
lines(fcast$fitted,col=2)
acc<- accuracy (fcast $fitted,xts_onion_train)
acc
names(acc)
write.csv(x=acc,file="results_onion_accuracy_train.csv")
write.csv(x=fcast$fitted,file="result_onion_accuracy_train_fitted.csv")
write.csv(x=fcast$mean,file="result_onion_accuracy_test_mean.csv")



#plot(fcast$x)
#lines(fcast$fitted,col=2)

xts_onion_actual_test<-xts_onion[paste("2015-07-01","2015-07-15",sep="::")][,1]
nrow(xts_onion_actual_test)
#xts_onion_actual_test
#plot(xts_onion_actual_test)
#lines(fcast$mean,col=2)
acc<- accuracy (fcast $mean,xts_onion_actual_test)

write.csv(x=acc,file="results_onion_accuracy_test.csv")
