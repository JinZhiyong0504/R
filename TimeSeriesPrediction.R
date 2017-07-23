setwd("D:\\RWDir");
fund<-read.csv("C:\\Users\\JZY\\Desktop\\Datathon\\Raw Data - DataThon Fall 2016\\P\\CWESqryMergeDonor.csv",header=T)
shelter<-read.csv("C:\\Users\\JZY\\Desktop\\Datathon\\Raw Data - DataThon Fall 2016\\P\\CWES Shelter Data Set No Neighbourhood.csv",header=T)
library(ggplot2) 
data(mpg) # belongs to ggplot2 qplot(displ, hwy, data=mpg)

FundModified<- read.csv("C:\\Users\\JZY\\Desktop\\Datathon\\Raw Data - DataThon Fall 2016\\P\\FundrisingModified.csv",head=T);

Date.convered<- as.Date(fund$Data_For_Analysis_2008_to_2015_Gift.Date,format="%Y/%m/%d");

Amount<-as.numeric(fund$Gift.Amount)


dataFrame <- data.frame(x = x, y = Amount)
distxy<-dist(dataFrame)

hClustering <- hclust(distxy)
plot(hClustering)
library(ggplot2)
plot1<- qplot(Date.convered,Amount)
Plot2<- qplot(FundModified$Year,FundModified$Gift.Amount,data=FundModified)

library(dplyr);
Month<- seq(1,12);

by_month <- group_by(FundModified, Month);  
monthcount<- summary(by_month,n());

by_day <- group_by(FundModified,Day);
daycount<-summary(by_day)

install.packages("sqldf")
install.packages("RSQLite")
install.packages("tcltk2")
library("sqldf")
library("RSQLite")
library("tcltk2")
library("tcltk")
library(ggplot2)

MonthIndicator=c(1:12)
DayIndicator=c(1:30)
YearIndicator=c(2008:2016)

monthdata<-as.data.frame(FundModified);

AvgAmount_by_year<- sqldf("select year, avg(GiftAmount) from FundModified where KeyIndicator='Individual' group by year");
AvgAmount_by_month<- sqldf("select month, avg(GiftAmount) from FundModified where KeyIndicator='Individual' group by month");
AvgAmount_by_day<-sqldf("select day, avg(GiftAmount) from FundModified where KeyIndicator='Individual' group by day");
qplot(AvgAmount_by_year[,1],AvgAmount_by_year[,2],xlab = "Year",ylab = "Average Amount")+geom_point()+stat_smooth();
qplot(AvgAmount_by_month[,1],AvgAmount_by_month[,2],xlab= "month",ylab = "Average Amount")+geom_point()+stat_smooth();
qplot(AvgAmount_by_day[,1],AvgAmount_by_day[,2],xlab = "Day",ylab = "Average Amount")+geom_point()+stat_smooth();


AvgCount_by_year<- sqldf("select year, count(GiftAmount) from FundModified where KeyIndicator='Individual' group by year");
AvgCount_by_month<- sqldf("select month, count(GiftAmount) from FundModified where KeyIndicator='Individual' group by month");
AvgCount_by_day<-sqldf("select day, count(GiftAmount) from FundModified where KeyIndicator='Individual' group by day")
qplot(AvgCount_by_year[,1],AvgCount_by_year[,2],xlab = "Year",ylab = "Average Number")+geom_point()+stat_smooth()
qplot(AvgCount_by_month[,1],AvgCount_by_month[,2],xlab = "Month",ylab = "Average Number")+geom_point()+stat_smooth()
qplot(AvgCount_by_day[,1],AvgCount_by_day[,2],,xlab = "Day",ylab = "Average Number")+geom_point()+stat_smooth()


SumAmount_by_year<- sqldf("select year, sum(GiftAmount) from FundModified where KeyIndicator='Individual' group by year");
SumAmount_by_month<- sqldf("select month, sum(GiftAmount) from FundModified where KeyIndicator='Individual' group by month");
SumAmount_by_day<-sqldf("select day, sum(GiftAmount) from FundModified where KeyIndicator='Individual' group by day")
qplot(SumAmount_by_year[,1],SumAmount_by_year[,2],xlab = "Year",ylab = "Sum of Amount")+geom_point()+stat_smooth()
qplot(SumAmount_by_month[,1],SumAmount_by_month[,2],xlab = "Month",ylab = "Sum of Amount")+geom_point()+stat_smooth()
qplot(SumAmount_by_day[,1],SumAmount_by_day[,2],xlab = "Day",ylab = "Sum of Amount")+geom_point()+stat_smooth()


OilPrice<- read.csv("C:\\Users\\JZY\\Desktop\\Datathon\\Raw Data - DataThon Fall 2016\\P\\OilPrice.csv",head=T);
avgOilPrice_year<- sqldf("select Year, avg(WTI) from OilPrice group by year");


SumAmount_by_year<- sqldf("select year, sum(GiftAmount) from FundModified group by year")
SumAmount_vs_OilPrize_year <- sqldf("select * from SumAmount_by_year, avgOilPrice_year where avgOilPrice_year.Year=SumAmount_by_year.Year");
qplot(SumAmount_vs_OilPrize_year[,4],SumAmount_vs_OilPrize_year[,2],data = SumAmount_vs_OilPrize_year)+geom_point()
qplot(SumAmount_vs_OilPrize_year[,1],SumAmount_vs_OilPrize_year[,4],data = SumAmount_vs_OilPrize_year)

library('forecast') 
Amount_by_month<- sqldf("select Year, Month, sum(GiftAmount) from FundModified group by Year,Month order by Year,Month")
qplot(,Amount_by_month[,3])
acf(Amount_by_month[,3])
pt<-ts(Amount_by_month[,3],start=2008,frequency=12) #
arima1<-auto.arima(pt,trace=T) 

airfore<-forecast(arima1,h=30,fan=T) 
plot(airfore) 
