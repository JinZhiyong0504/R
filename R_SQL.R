setwd("D:\\RWDir");
install.packages("sqldf")
install.packages("RSQLite")
install.packages("tcltk2")
library("sqldf")
library("RSQLite")
library("tcltk2")
library("tcltk")
library(ggplot2)

Movie<-read.csv("G:\\RWDir\\SQL\\Movie.csv",header=T)
Rating<-read.csv("G:\\RWDir\\SQL\\Rating.csv",header=T);
Reviewer<-read.csv("G:\\RWDir\\SQL\\Reviewer.csv",header=T)

q4<- sqldf("DELETE from Rating where rID in (SELECT rID from Rating left join Movie on Rating.mID = Movie.mID where stars<4 and (year<1970 or year>2000));");

Result<-sqldf("Select * from Rating where Rating.rID not in (SELECT rID from Rating left join Movie on Rating.mID = Movie.mID where stars<4 and (year<1970 or year>2000))")
Result1<-sqldf("Select * from Rating where Rating.rID in (SELECT rID from Rating left join Movie on Rating.mID = Movie.mID where stars<4 and (year<1970 or year>2000))")
Result2<-sqldf("SELECT rID from Rating left join Movie on Rating.mID = Movie.mID where stars<4 and (year<1970 or year>2000)")

Result3<-sqldf("select name from Reviewer where Reviewer.rID in (select Rating.rID from Rating where Rating.ratingDate = NULL)")
Result4<-sqldf("select Rating.rID from Rating where Rating.ratingDate = NULL")
