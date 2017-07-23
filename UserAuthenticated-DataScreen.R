setwd("D:\\RWDir");
source("LagrangePolynomial.R")
install.packages("sqldf",dependencies = T)
install.packages("RSQLite",dependencies = T)
install.packages("tcltk2",dependencies = T)
library("sqldf")
library("RSQLite")
library("tcltk2")
library("tcltk")
library(ggplot2)

rm(list=ls())

Touch<-read.csv("DataScientist/Touch.csv",header=T)

Acc<-read.csv("DataScientist/Accemeter.csv",header=T);
Acc_datafram<-na.omit(Acc)

colnames(Acc_datafram)<-c("ButtonNames","DEX","t","Accuracy","x","y","z","UserName")

Gyr<-read.csv("DataScientist/Gyr.csv",header=T)
Gyr_datafram<-na.omit(Gyr)
colnames(Gyr_datafram)<-c("ButtonNames","DEX","t","Accuracy","x","y","z","UserName")
## modify the DEX

rownum<-1
for (i in 2: nrow( Acc_datafram))
{
  a<- Acc_datafram$t[i];
  b<- Acc_datafram$t[i-1];
  if(b>a)
  {
     rownum<- rownum+1
  }
  
  Acc_datafram[i,2]<-rownum
  print(i)
  print(rownum)
  print( Acc_datafram[i,2])
}


rownum<-1
for (i in 2: nrow(Gyr_datafram))
{
  a<-Gyr_datafram$t[i];
  b<-Gyr_datafram$t[i-1];
  if(b>a)
  {
    rownum<- rownum+1
  }
  
  Gyr_datafram[i,2]<-rownum
  print(i)
  print(rownum)
  print(Gyr_datafram[i,2])
}

P<-ggplot(data=Acc_datafram,aes(x=t,y=x,color=factor(UserName)),xlim=c(0,0.05),label=UserName)
P+geom_point()+geom_smooth()


P<-ggplot(data=Gyr_datafram,aes(x=t,y=x,color=factor(UserName)),label=UserName)
P+geom_point()+geom_smooth()

## average of touch data

avg.Button1.touch<- sqldf("select avg(x),avg(y),avg(Pressure),avg(MinorAxis),avg(MajorAxis),avg(size),UserName from Touch where Touch.ButtonNames='answerButton1'group by UserName")
colnames(avg.Button1.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")


avg.Button2.touch<- sqldf("select avg(x),avg(y),avg(Pressure),avg(MinorAxis),avg(MajorAxis),avg(size),UserName from Touch where Touch.ButtonNames='answerButton2'group by UserName")
colnames(avg.Button2.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")

avg.nextQuestionButton.touch<-sqldf("select avg(x),avg(y),avg(Pressure),avg(MinorAxis),avg(MajorAxis),avg(size),UserName from Touch where Touch.ButtonNames='nextQuestionButton'group by UserName")
colnames(avg.nextQuestionButton.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")
 
avg.checkAnswerButton<- sqldf("select avg(x),avg(y),avg(Pressure),avg(MinorAxis),avg(MajorAxis),avg(size),UserName from Touch where Touch.ButtonNames='checkAnswerButton'group by UserName")
colnames(avg.checkAnswerButton)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")

P<-ggplot(data=avg.Button1.touch,aes(x=x,y=y,color=factor(UserName)))
P+geom_point()


# raw data of touch
Button1.touch<- sqldf("select x,y,Pressure,MinorAxis,MajorAxis,size,UserName from Touch where Touch.ButtonNames='answerButton1'")
colnames(Button1.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")


Button2.touch<- sqldf("select x,y,Pressure,MinorAxis,MajorAxis,size,UserName from Touch where Touch.ButtonNames='answerButton2'")
colnames(Button2.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")

nextQuestionButton.touch<-sqldf("select x,y,Pressure,MinorAxis,MajorAxis,size,UserName from Touch where Touch.ButtonNames='nextQuestionButton'")
colnames(nextQuestionButton.touch)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")

checkAnswerButton<- sqldf("select x,y,Pressure,MinorAxis,MajorAxis,size,UserName from Touch where Touch.ButtonNames='checkAnswerButton'")
colnames(checkAnswerButton)<-c("x","y","Pressure","MinorAxis","MajorAxis","Size","UserName")

user1.Button1.touch<-sqldf("select x,y,Pressure,MinorAxis,MajorAxis,size,UserName from Touch where Touch.ButtonNames='answerButton1' and Touch.UserName='user1'")

P<-ggplot(data=user1.Button1.touch,aes(x=MinorAxis,y=MajorAxis,color=factor(UserName)),label=UserName)
P+geom_point()

P<-ggplot(data=Button1.touch,aes(x=MinorAxis,y=MajorAxis,color=factor(UserName)),label=UserName)
P+geom_point()
#P+label(Button1.touch$UserName)

## Gyroscope data
Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where Gyr_datafram.ButtonNames='answerButton1'")

Button2.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton2'")

nextQuestionButton.Gyr<-sqldf("select DEX, t,x,y,z,UserName from Gyr_datafram where ButtonNames='nextQuestionButton'")

checkAnswerButton.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='checkAnswerButton'")

User1.Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton1'and Username='user1'")
User2.Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton1'and Username='user2'")
User3.Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton1'and Username='user3'")
User4.Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton1'and Username='user4'")
User5.Button1.Gyr<-sqldf("select DEX,t,x,y,z,UserName from Gyr_datafram where ButtonNames='answerButton1'and Username='user5'")


P<-ggplot(data=Button1.Gyr,aes(x=t,y=x,color=factor(UserName)))
P+geom_point()+geom_smooth()

##interpolate the raw data
Max_row_Gyr<-sqldf("select max(DEX),username from Gyr_datafram group by UserName")
colnames(Max_row_Gyr)<- c("Maxrows","UserName")

Max_row_Acc<-sqldf("select max(DEX),username from Acc_datafram group by UserName")
colnames(Max_row_Acc)<- c("Maxrows","UserName")



## select the distinctive DEX from training data
Acc_selected_DEX<- sqldf("select distinct DEX from Acc_datafram where t>0.05")
Acc_selected<- sqldf("select Acc_datafram.* from Acc_datafram, Acc_selected_DEX where Acc_datafram.DEX=Acc_selected_DEX.DEX and t<0.05")

P<-ggplot(data=Acc_selected,aes(x=t,y=x,color=factor(UserName)),label=UserName)
P+geom_point()+geom_smooth()

Gyr_selected_DEX<- sqldf("select distinct DEX from Gyr_datafram where t>0.05 order by DEX")
Gyr_selected<- sqldf("select Gyr_datafram.* from Gyr_datafram, Gyr_selected_DEX where Gyr_datafram.DEX=Gyr_selected_DEX.DEX and t<0.05")

P<-ggplot(data=Gyr_selected,aes(x=t,y=x,color=factor(UserName)),label=UserName)
P+geom_point()+geom_smooth()

## not delete the data which is shorter than 0.05
##Acc_selected_DEX<- sqldf("select distinct DEX from Acc_datafram where t>0.02")
##Acc_selected<- sqldf("select Acc_datafram.* from Acc_datafram")

##Gyr_selected_DEX<- sqldf("select distinct DEX from Gyr_datafram where t>0.02")
##Gyr_selected<- sqldf("select Gyr_datafram.* from Gyr_datafram ")


## interpolated the ACC_datafram and Gyr_datafram

NrowsofAcc<-nrow(Acc_selected_DEX)


lengthofvector<-11;

Acc_interpolated<- data.frame(array(NA,dim=list(NrowsofAcc*lengthofvector,8)))
colnames(Acc_interpolated)<- colnames(Acc_selected)


for (i in 1 : NrowsofAcc)
{
  temp1_Acc<- Acc_selected[Acc_selected$DEX==Acc_selected_DEX$DEX[i],]
  t<- temp1_Acc$t
  x<- temp1_Acc$x
  y<- temp1_Acc$y
  z<- temp1_Acc$z
  
  interpolated_t<- seq(from = 0, to = 0.05, by = 0.05/(lengthofvector-1))
  
  ffx<-approx(x=t,y=x,xout=interpolated_t,method = "linear",rule=2)
  ffy<-approx(x=t,y=y,xout=interpolated_t,method = "linear",rule=2)
  ffz<-approx(x=t,y=z,xout=interpolated_t,method = "linear",rule=2)

  j=1
   for(j in 1: lengthofvector)
   {
     Acc_interpolated[(i-1)*lengthofvector+j,1] <- as.factor(temp1_Acc$ButtonNames[1]) 
     Acc_interpolated[(i-1)*lengthofvector+j,2] <- temp1_Acc$DEX[1]
   }
  
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$t<- interpolated_t
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$Accuracy<- 3
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$x<- ffx$y
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$y<- ffy$y
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$z<- ffz$y
  Acc_interpolated[Acc_interpolated$DEX %in% temp1_Acc$DEX,]$UserName<- temp1_Acc$UserName[1]
 
 
}
## plot Acc_interpolated data
P<-ggplot(data=Acc_interpolated,aes(x=t,y=x,color=factor(UserName)),label=UserName)
P+geom_point()+geom_smooth()
user<- sqldf("select distinct UserName from Acc_interpolated")


# interpolated the Gyr data
NrowsofGyr<-nrow(Gyr_selected_DEX)
Gyr_interpolated<- data.frame(array(NA,dim=list(NrowsofGyr*lengthofvector,8)))
colnames(Gyr_interpolated)<- colnames(Gyr_selected)


for (i in 1 : NrowsofGyr)
{
  temp1_Gyr<- Gyr_selected[Gyr_selected$DEX==Gyr_selected_DEX$DEX[i],]
  t<- temp1_Gyr$t
  x<- temp1_Gyr$x
  y<- temp1_Gyr$y
  z<- temp1_Gyr$z
  
  interpolated_t<- seq(from = 0, to = 0.05, by = 0.05/(lengthofvector-1))
  
  ffx<-approx(x=t,y=x,xout=interpolated_t,method = "linear",rule=2)
  ffy<-approx(x=t,y=y,xout=interpolated_t,method = "linear",rule=2)
  ffz<-approx(x=t,y=z,xout=interpolated_t,method = "linear",rule=2)
  
  j=1
  for(j in 1: lengthofvector)
  {
    Gyr_interpolated[(i-1)*lengthofvector+j,1] <- as.factor(temp1_Gyr$ButtonNames[1]) 
    Gyr_interpolated[(i-1)*lengthofvector+j,2] <- temp1_Gyr$DEX[1]
  }
  
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$t<- interpolated_t
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$Accuracy<- 3
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$x<- ffx$y
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$y<- ffy$y
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$z<- ffz$y
  Gyr_interpolated[Gyr_interpolated$DEX %in% temp1_Gyr$DEX,]$UserName<- temp1_Gyr$UserName[1]
  
}
P<-ggplot(data=Gyr_interpolated,aes(x=t,y=x,color=factor(UserName)))
P+geom_point()+geom_smooth()



