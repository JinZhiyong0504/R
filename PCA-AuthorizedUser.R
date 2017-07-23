## UserAuthenticated-DataScreen.R should be run to create environment vraibles before this program
## select users in four typs of button press action in Acc 
## user1 Acc x matrix
Acc_user1_Button1_x<-sqldf("select x from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button2_x<-sqldf("select x from Acc_interpolated where UserName=1 and ButtonNames=2")
Acc_user1_checkAnswer_x<-sqldf("select x from Acc_interpolated where UserName=1 and ButtonNames=3")
Acc_user1_nextQuestion_x<-sqldf("select x from Acc_interpolated where UserName=1 and ButtonNames=4")


nrowsofAcc_user1_x<-sqldf("select distinct DEX from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button1_x_Matrix<- matrix(round(Acc_user1_Button1_x$x,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_Button2_x_Matrix<- matrix(round(Acc_user1_Button2_x$x,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_checkAnswer_x_Matrix<- matrix(round(Acc_user1_checkAnswer_x$x,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_nextQuestion_x_Matrix<- matrix(round(Acc_user1_nextQuestion_x$x,5),nrow = lengthofvector,byrow=FALSE)

## user1 Acc y matrix

Acc_user1_Button1_y<-sqldf("select y from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button2_y<-sqldf("select y from Acc_interpolated where UserName=1 and ButtonNames=2")
Acc_user1_checkAnswer_y<-sqldf("select y from Acc_interpolated where UserName=1 and ButtonNames=3")
Acc_user1_nextQuestion_y<-sqldf("select y from Acc_interpolated where UserName=1 and ButtonNames=4")


nrowsofAcc_user1_y<-sqldf("select distinct DEX from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button1_y_Matrix<- matrix(round(Acc_user1_Button1_y$y,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_Button2_y_Matrix<- matrix(round(Acc_user1_Button2_y$y,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_checkAnswer_y_Matrix<- matrix(round(Acc_user1_checkAnswer_y$y,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_nextQuestion_y_Matrix<- matrix(round(Acc_user1_nextQuestion_y$y,5),nrow = lengthofvector,byrow=FALSE)


## user1 ACC z matrix


Acc_user1_Button1_z<-sqldf("select z from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button2_z<-sqldf("select z from Acc_interpolated where UserName=1 and ButtonNames=2")
Acc_user1_checkAnswer_z<-sqldf("select z from Acc_interpolated where UserName=1 and ButtonNames=3")
Acc_user1_nextQuestion_z<-sqldf("select z from Acc_interpolated where UserName=1 and ButtonNames=4")


nrowsofAcc_user1_z<-sqldf("select distinct DEX from Acc_interpolated where UserName=1 and ButtonNames=1")
Acc_user1_Button1_z_Matrix<- matrix(round(Acc_user1_Button1_z$z,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_Button2_z_Matrix<- matrix(round(Acc_user1_Button2_z$z,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_checkAnswer_z_Matrix<- matrix(round(Acc_user1_checkAnswer_z$z,5),nrow = lengthofvector,byrow=FALSE)
Acc_user1_nextQuestion_z_Matrix<- matrix(round(Acc_user1_nextQuestion_z$z,5),nrow = lengthofvector,byrow=FALSE)

## user1 Gyr x matrix
Gyr_user1_Button1_x<-sqldf("select x from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button2_x<-sqldf("select x from Gyr_interpolated where UserName=1 and ButtonNames=2")
Gyr_user1_checkAnswer_x<-sqldf("select x from Gyr_interpolated where UserName=1 and ButtonNames=3")
Gyr_user1_nextQuestion_x<-sqldf("select x from Gyr_interpolated where UserName=1 and ButtonNames=4")


nrowsofGyr_user1_x<-sqldf("select distinct DEX from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button1_x_Matrix<- matrix(round(Gyr_user1_Button1_x$x,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_Button2_x_Matrix<- matrix(round(Gyr_user1_Button2_x$x,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_checkAnswer_x_Matrix<- matrix(round(Gyr_user1_checkAnswer_x$x,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_nextQuestion_x_Matrix<- matrix(round(Gyr_user1_nextQuestion_x$x,5),nrow = lengthofvector,byrow=FALSE)

## user1 Gyr y matrix

Gyr_user1_Button1_y<-sqldf("select y from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button2_y<-sqldf("select y from Gyr_interpolated where UserName=1 and ButtonNames=2")
Gyr_user1_checkAnswer_y<-sqldf("select y from Gyr_interpolated where UserName=1 and ButtonNames=3")
Gyr_user1_nextQuestion_y<-sqldf("select y from Gyr_interpolated where UserName=1 and ButtonNames=4")


nrowsofGyr_user1_y<-sqldf("select distinct DEX from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button1_y_Matrix<- matrix(round(Gyr_user1_Button1_y$y,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_Button2_y_Matrix<- matrix(round(Gyr_user1_Button2_y$y,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_checkAnswer_y_Matrix<- matrix(round(Gyr_user1_checkAnswer_y$y,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_nextQuestion_y_Matrix<- matrix(round(Gyr_user1_nextQuestion_y$y,5),nrow = lengthofvector,byrow=FALSE)


## user1 Gyr z matrix


Gyr_user1_Button1_z<-sqldf("select z from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button2_z<-sqldf("select z from Gyr_interpolated where UserName=1 and ButtonNames=2")
Gyr_user1_checkAnswer_z<-sqldf("select z from Gyr_interpolated where UserName=1 and ButtonNames=3")
Gyr_user1_nextQuestion_z<-sqldf("select z from Gyr_interpolated where UserName=1 and ButtonNames=4")


nrowsofGyr_user1_z<-sqldf("select distinct DEX from Gyr_interpolated where UserName=1 and ButtonNames=1")
Gyr_user1_Button1_z_Matrix<- matrix(round(Gyr_user1_Button1_z$z,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_Button2_z_Matrix<- matrix(round(Gyr_user1_Button2_z$z,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_checkAnswer_z_Matrix<- matrix(round(Gyr_user1_checkAnswer_z$z,5),nrow = lengthofvector,byrow=FALSE)
Gyr_user1_nextQuestion_z_Matrix<- matrix(round(Gyr_user1_nextQuestion_z$z,5),nrow = lengthofvector,byrow=FALSE)



##PCA_user1_Button1_x<-princomp(Acc_user1_Button1_x_Matrix,cor=T)
##summary(PCA_user1_Button1_x,loadings=TRUE)
##loadings(PCA_user1_Button1_x)
##pre<-predict(p)

##wavelet + PCA for user1_Acc_Button1_Z

MajorVector_user1_button1<-data.frame(array(NA,dim=list(lengthofvector-2,12)))
colnames(MajorVector_user1_button1)<-c("Acc_x1","Acc_x2","Acc_y1","Acc_y2","Acc_z1","Acc_z2","Gyr_x1","Gyr_x2","Gyr_y1","Gyr_y2","Gyr_z1","Gyr_z2")

MajorVector_user1_button2<-data.frame(array(NA,dim=list(lengthofvector-2,12)))
colnames(MajorVector_user1_button2)<-c("Acc_x1","Acc_x2","Acc_y1","Acc_y2","Acc_z1","Acc_z2","Gyr_x1","Gyr_x2","Gyr_y1","Gyr_y2","Gyr_z1","Gyr_z2")

MajorVector_user1_checkAnswer<-data.frame(array(NA,dim=list(lengthofvector-2,12)))
colnames(MajorVector_user1_checkAnswer)<-c("Acc_x1","Acc_x2","Acc_y1","Acc_y2","Acc_z1","Acc_z2","Gyr_x1","Gyr_x2","Gyr_y1","Gyr_y2","Gyr_z1","Gyr_z2")

MajorVector_user1_nextQuestion<-data.frame(array(NA,dim=list(lengthofvector-2,12)))
colnames(MajorVector_user1_nextQuestion)<-c("Acc_x1","Acc_x2","Acc_y1","Acc_y2","Acc_z1","Acc_z2","Gyr_x1","Gyr_x2","Gyr_y1","Gyr_y2","Gyr_z1","Gyr_z2")

## user1 Acc button1 X
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Acc_user1_Button1_x_Matrix))
  {
  a <- Acc_user1_Button1_x_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
  }

wtData <- as.data.frame(wtData)

PCA_user1_Button1_x_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_x_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_x_wavelet)
pre<-predict(PCA_user1_Button1_x_wavelet)
MajorVector_user1_button1$Acc_x1<-pre[1,]
MajorVector_user1_button1$Acc_x2<-pre[2,]

## user1 Acc button1 Y
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Acc_user1_Button1_y_Matrix))
{
  a <- Acc_user1_Button1_y_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
}

wtData <- as.data.frame(wtData)

PCA_user1_Button1_y_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_y_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_y_wavelet)
pre<-predict(PCA_user1_Button1_y_wavelet)
MajorVector_user1_button1$Acc_y1<-pre[1,]
MajorVector_user1_button1$Acc_y2<-pre[2,]

## user1 Acc button1 z
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Acc_user1_Button1_z_Matrix))
{
  a <- Acc_user1_Button1_z_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
}

wtData <- as.data.frame(wtData)

PCA_user1_Button1_z_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_z_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_z_wavelet)
pre<-predict(PCA_user1_Button1_z_wavelet)
MajorVector_user1_button1$Acc_z1<-pre[1,]
MajorVector_user1_button1$Acc_z2<-pre[2,]

## user1 Gyr button1 X
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Gyr_user1_Button1_x_Matrix))
{
  a <- Gyr_user1_Button1_x_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
}

wtData <- as.data.frame(wtData)

PCA_user1_Button1_x_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_x_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_x_wavelet)
pre<-predict(PCA_user1_Button1_x_wavelet)
MajorVector_user1_button1$Gyr_x1<-pre[1,]
MajorVector_user1_button1$Gyr_x2<-pre[2,]

## user1 Gyr button1 y
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Gyr_user1_Button1_y_Matrix))
{
  a <- Gyr_user1_Button1_y_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
}

wtData <- as.data.frame(wtData)

PCA_user1_Button1_y_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_y_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_y_wavelet)
pre<-predict(PCA_user1_Button1_y_wavelet)
MajorVector_user1_button1$Gyr_y1<-pre[1,]
MajorVector_user1_button1$Gyr_y2<-pre[2,]

## user1 Gyr button1 z
library(wavelets)
wtData <- NULL
for (i in 1:ncol(Gyr_user1_Button1_z_Matrix))
{
  a <- Gyr_user1_Button1_z_Matrix[,i]
  wt <- dwt(a, filter="haar", boundary="periodic")
  wtData <- cbind(wtData, unlist(c(wt@W,wt@V[[wt@level]])))
}

wtData <- as.data.frame(wtData)

PCA_user1_Button1_z_wavelet<-princomp(wtData,cor=T)
summary(PCA_user1_Button1_z_wavelet,loadings=TRUE)
loading(PCA_user1_Button1_z_wavelet)
pre<-predict(PCA_user1_Button1_z_wavelet)
MajorVector_user1_button1$Gyr_z1<-pre[1,]
MajorVector_user1_button1$Gyr_z2<-pre[2,]






