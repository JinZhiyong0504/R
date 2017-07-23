setwd("D:\\RWDir")
##install.packages("rjson")
library("rjson")
user1=fromJSON(file = 'DataScientist/user1.json',  unexpected.escape = "error")
user2=fromJSON(file = 'DataScientist/user2.json',  unexpected.escape = "error")
user3=fromJSON(file = 'DataScientist/user3.json',  unexpected.escape = "error")
user4=fromJSON(file = 'DataScientist/user4.json',  unexpected.escape = "error")
user5=fromJSON(file = 'DataScientist/user5.json',  unexpected.escape = "error")
user6=fromJSON(file = 'DataScientist/user6.json',  unexpected.escape = "error")
user7=fromJSON(file = 'DataScientist/user7.json',  unexpected.escape = "error")
user8=fromJSON(file = 'DataScientist/user8.json',  unexpected.escape = "error")
user9=fromJSON(file = 'DataScientist/user9.json',  unexpected.escape = "error")
user10=fromJSON(file = 'DataScientist/user10.json',  unexpected.escape = "error")
user11=fromJSON(file = 'DataScientist/user11.json',  unexpected.escape = "error")
user12=fromJSON(file = 'DataScientist/user12.json',  unexpected.escape = "error")
user13=fromJSON(file = 'DataScientist/user13.json',  unexpected.escape = "error")
user14=fromJSON(file = 'DataScientist/user14.json',  unexpected.escape = "error")
user15=fromJSON(file = 'DataScientist/user15.json',  unexpected.escape = "error")
user16=fromJSON(file = 'DataScientist/user16.json',  unexpected.escape = "error")

##ALLStock_Volume<-data.frame(array(NA,dim=list(length(SZindex[,1]),length(stock_ss[,1]))))



##user1 data
user1.touch<-data.frame(array(NA,dim=list(length(user1)*4,10)))
user1.accemeter<-data.frame(array(NA,dim=list(length(user1)*8,8)))
user1.Gyroscope<-data.frame(array(NA,dim=list(length(user1)*6,8)))
##user1.touch 
index.user1.touch<-1
for(i in 1:length(user1))
{
  if (length(user1[[i]]$touch)>0)
  {

  for(j in 1:length(user1[[i]]$touch))
    {
    
    if (user1[[i]]$viewName=="answerButton1")
    {
      user1.touch[index.user1.touch,1]<-"answerButton1"
    }
    
    else if (user1[[i]]$viewName=="checkAnswerButton")
    {
      user1.touch[index.user1.touch,1]<-"checkAnswerButton"
    }
    
    else if (user1[[i]]$viewName=="nextQuestionButton")
    {
      user1.touch[index.user1.touch,1]<-"nextQuestionButton"
    }
    
    else if (user1[[i]]$viewName=="answerButton2")
    {
      user1.touch[index.user1.touch,1]<-"answerButton2"
    }
    else
    {
      print("error")
    }
    
      user1.touch[index.user1.touch,2]<-i
      user1.touch[index.user1.touch,3]<-user1[[i]]$touch[[j]]$x
      user1.touch[index.user1.touch,4]<-user1[[i]]$touch[[j]]$y
      user1.touch[index.user1.touch,5]<-user1[[i]]$touch[[j]]$pressure
      user1.touch[index.user1.touch,6]<-user1[[i]]$touch[[j]]$size
      user1.touch[index.user1.touch,7]<-user1[[i]]$touch[[j]]$minorAxis
      user1.touch[index.user1.touch,8]<-user1[[i]]$touch[[j]]$majorAxis
      user1.touch[index.user1.touch,9]<-user1[[i]]$touch[[j]]$t
      user1.touch[index.user1.touch,10]<-"user1"
      index.user1.touch<-index.user1.touch+1
  }
  }
}

##user1.accemeter
index.user1.accemeter<-1
for(i in 1:length(user1))
{
  if (length(user1[[i]]$linear_accel)>0)
  {
  for(j in 1:length(user1[[i]]$linear_accel))
  {
    
    if (user1[[i]]$viewName=="answerButton1")
    {
      user1.accemeter[index.user1.accemeter,1]<-"answerButton1"
    }
    
    else if (user1[[i]]$viewName=="checkAnswerButton")
    {
      user1.accemeter[index.user1.accemeter,1]<-"checkAnswerButton"
    }
    
    else if (user1[[i]]$viewName=="nextQuestionButton")
    {
      user1.accemeter[index.user1.accemeter,1]<-"nextQuestionButton"
    }
    
    else if (user1[[i]]$viewName=="answerButton2")
    {
      user1.accemeter[index.user1.accemeter,1]<-"answerButton2"
    }
    else
    {
      print("error")
    }
    
    user1.accemeter[index.user1.accemeter,2]<-i
    user1.accemeter[index.user1.accemeter,3]<-user1[[i]]$linear_accel[[j]]$t
    user1.accemeter[index.user1.accemeter,4]<-user1[[i]]$linear_accel[[j]]$accuracy
    user1.accemeter[index.user1.accemeter,5]<-user1[[i]]$linear_accel[[j]]$x
    user1.accemeter[index.user1.accemeter,6]<-user1[[i]]$linear_accel[[j]]$y
    user1.accemeter[index.user1.accemeter,7]<-user1[[i]]$linear_accel[[j]]$z
    user1.accemeter[index.user1.accemeter,8]<-"user1"
    index.user1.accemeter<-index.user1.accemeter+1
    
  }
  }
}

##user1.gyr
index.user1.gyr<-1
for(i in 1:length(user1))
{
  if (length(user1[[i]]$gyro)>0)
  {
    for(j in 1:length(user1[[i]]$gyro))
    {
      
      if (user1[[i]]$viewName=="answerButton1")
      {
        user1.Gyroscope[index.user1.gyr,1]<-"answerButton1"
      }
      
      else if (user1[[i]]$viewName=="checkAnswerButton")
      {
        user1.Gyroscope[index.user1.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user1[[i]]$viewName=="nextQuestionButton")
      {
        user1.Gyroscope[index.user1.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user1[[i]]$viewName=="answerButton2")
      {
        user1.Gyroscope[index.user1.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user1.Gyroscope[index.user1.gyr,2]<-i
      user1.Gyroscope[index.user1.gyr,3]<-user1[[i]]$gyro[[j]]$t
      user1.Gyroscope[index.user1.gyr,4]<-user1[[i]]$gyro[[j]]$accuracy
      user1.Gyroscope[index.user1.gyr,5]<-user1[[i]]$gyro[[j]]$x
      user1.Gyroscope[index.user1.gyr,6]<-user1[[i]]$gyro[[j]]$y
      user1.Gyroscope[index.user1.gyr,7]<-user1[[i]]$gyro[[j]]$z
      user1.Gyroscope[index.user1.gyr,8]<-"user1"
      index.user1.gyr<-index.user1.gyr+1
      
    }
  }
}


##user2 data
user2.touch<-data.frame(array(NA,dim=list(length(user2)*4,10)))
user2.accemeter<-data.frame(array(NA,dim=list(length(user2)*8,8)))
user2.Gyroscope<-data.frame(array(NA,dim=list(length(user2)*6,8)))
##user2.touch 
index.user2.touch<-1
for(i in 1:length(user2))
{
  if (length(user2[[i]]$touch)>0)
  {
    
    for(j in 1:length(user2[[i]]$touch))
    {
      
      if (user2[[i]]$viewName=="answerButton1")
      {
        user2.touch[index.user2.touch,1]<-"answerButton1"
      }
      
      else if (user2[[i]]$viewName=="checkAnswerButton")
      {
        user2.touch[index.user2.touch,1]<-"checkAnswerButton"
      }
      
      else if (user2[[i]]$viewName=="nextQuestionButton")
      {
        user2.touch[index.user2.touch,1]<-"nextQuestionButton"
      }
      
      else if (user2[[i]]$viewName=="answerButton2")
      {
        user2.touch[index.user2.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user2.touch[index.user2.touch,2]<-i
      user2.touch[index.user2.touch,3]<-user2[[i]]$touch[[j]]$x
      user2.touch[index.user2.touch,4]<-user2[[i]]$touch[[j]]$y
      user2.touch[index.user2.touch,5]<-user2[[i]]$touch[[j]]$pressure
      user2.touch[index.user2.touch,6]<-user2[[i]]$touch[[j]]$size
      user2.touch[index.user2.touch,7]<-user2[[i]]$touch[[j]]$minorAxis
      user2.touch[index.user2.touch,8]<-user2[[i]]$touch[[j]]$majorAxis
      user2.touch[index.user2.touch,9]<-user2[[i]]$touch[[j]]$t
      user2.touch[index.user2.touch,10]<-"user2"
      index.user2.touch<-index.user2.touch+1
    }
  }
}

##user2.accemeter
index.user2.accemeter<-1
for(i in 1:length(user2))
{
  if (length(user2[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user2[[i]]$linear_accel))
    {
      
      if (user2[[i]]$viewName=="answerButton1")
      {
        user2.accemeter[index.user2.accemeter,1]<-"answerButton1"
      }
      
      else if (user2[[i]]$viewName=="checkAnswerButton")
      {
        user2.accemeter[index.user2.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user2[[i]]$viewName=="nextQuestionButton")
      {
        user2.accemeter[index.user2.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user2[[i]]$viewName=="answerButton2")
      {
        user2.accemeter[index.user2.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user2.accemeter[index.user2.accemeter,2]<-i
      user2.accemeter[index.user2.accemeter,3]<-user2[[i]]$linear_accel[[j]]$t
      user2.accemeter[index.user2.accemeter,4]<-user2[[i]]$linear_accel[[j]]$accuracy
      user2.accemeter[index.user2.accemeter,5]<-user2[[i]]$linear_accel[[j]]$x
      user2.accemeter[index.user2.accemeter,6]<-user2[[i]]$linear_accel[[j]]$y
      user2.accemeter[index.user2.accemeter,7]<-user2[[i]]$linear_accel[[j]]$z
      user2.accemeter[index.user2.accemeter,8]<-"user2"
      index.user2.accemeter<-index.user2.accemeter+1
      
    }
  }
}

##user2.gyr
index.user2.gyr<-1
for(i in 1:length(user2))
{
  if (length(user2[[i]]$gyro)>0)
  {
    for(j in 1:length(user2[[i]]$gyro))
    {
      
      if (user2[[i]]$viewName=="answerButton1")
      {
        user2.Gyroscope[index.user2.gyr,1]<-"answerButton1"
      }
      
      else if (user2[[i]]$viewName=="checkAnswerButton")
      {
        user2.Gyroscope[index.user2.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user2[[i]]$viewName=="nextQuestionButton")
      {
        user2.Gyroscope[index.user2.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user2[[i]]$viewName=="answerButton2")
      {
        user2.Gyroscope[index.user2.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user2.Gyroscope[index.user2.gyr,2]<-i
      user2.Gyroscope[index.user2.gyr,3]<-user2[[i]]$gyro[[j]]$t
      user2.Gyroscope[index.user2.gyr,4]<-user2[[i]]$gyro[[j]]$accuracy
      user2.Gyroscope[index.user2.gyr,5]<-user2[[i]]$gyro[[j]]$x
      user2.Gyroscope[index.user2.gyr,6]<-user2[[i]]$gyro[[j]]$y
      user2.Gyroscope[index.user2.gyr,7]<-user2[[i]]$gyro[[j]]$z
      user2.Gyroscope[index.user2.gyr,8]<-"user2"
      index.user2.gyr<-index.user2.gyr+1
      
    }
  }
}

##user3 data
user3.touch<-data.frame(array(NA,dim=list(length(user3)*4,10)))
user3.accemeter<-data.frame(array(NA,dim=list(length(user3)*8,8)))
user3.Gyroscope<-data.frame(array(NA,dim=list(length(user3)*6,8)))
##user3.touch 
index.user3.touch<-1
for(i in 1:length(user3))
{
  if (length(user3[[i]]$touch)>0)
  {
    
    for(j in 1:length(user3[[i]]$touch))
    {
      
      if (user3[[i]]$viewName=="answerButton1")
      {
        user3.touch[index.user3.touch,1]<-"answerButton1"
      }
      
      else if (user3[[i]]$viewName=="checkAnswerButton")
      {
        user3.touch[index.user3.touch,1]<-"checkAnswerButton"
      }
      
      else if (user3[[i]]$viewName=="nextQuestionButton")
      {
        user3.touch[index.user3.touch,1]<-"nextQuestionButton"
      }
      
      else if (user3[[i]]$viewName=="answerButton2")
      {
        user3.touch[index.user3.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user3.touch[index.user3.touch,2]<-i
      user3.touch[index.user3.touch,3]<-user3[[i]]$touch[[j]]$x
      user3.touch[index.user3.touch,4]<-user3[[i]]$touch[[j]]$y
      user3.touch[index.user3.touch,5]<-user3[[i]]$touch[[j]]$pressure
      user3.touch[index.user3.touch,6]<-user3[[i]]$touch[[j]]$size
      user3.touch[index.user3.touch,7]<-user3[[i]]$touch[[j]]$minorAxis
      user3.touch[index.user3.touch,8]<-user3[[i]]$touch[[j]]$majorAxis
      user3.touch[index.user3.touch,9]<-user3[[i]]$touch[[j]]$t
      user3.touch[index.user3.touch,10]<-"user3"
      index.user3.touch<-index.user3.touch+1
    }
  }
}

##user3.accemeter
index.user3.accemeter<-1
for(i in 1:length(user3))
{
  if (length(user3[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user3[[i]]$linear_accel))
    {
      
      if (user3[[i]]$viewName=="answerButton1")
      {
        user3.accemeter[index.user3.accemeter,1]<-"answerButton1"
      }
      
      else if (user3[[i]]$viewName=="checkAnswerButton")
      {
        user3.accemeter[index.user3.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user3[[i]]$viewName=="nextQuestionButton")
      {
        user3.accemeter[index.user3.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user3[[i]]$viewName=="answerButton2")
      {
        user3.accemeter[index.user3.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user3.accemeter[index.user3.accemeter,2]<-i
      user3.accemeter[index.user3.accemeter,3]<-user3[[i]]$linear_accel[[j]]$t
      user3.accemeter[index.user3.accemeter,4]<-user3[[i]]$linear_accel[[j]]$accuracy
      user3.accemeter[index.user3.accemeter,5]<-user3[[i]]$linear_accel[[j]]$x
      user3.accemeter[index.user3.accemeter,6]<-user3[[i]]$linear_accel[[j]]$y
      user3.accemeter[index.user3.accemeter,7]<-user3[[i]]$linear_accel[[j]]$z
      user3.accemeter[index.user3.accemeter,8]<-"user3"
      index.user3.accemeter<-index.user3.accemeter+1
      
    }
  }
}

##user3.gyr
index.user3.gyr<-1
for(i in 1:length(user3))
{
  if (length(user3[[i]]$gyro)>0)
  {
    for(j in 1:length(user3[[i]]$gyro))
    {
      
      if (user3[[i]]$viewName=="answerButton1")
      {
        user3.Gyroscope[index.user3.gyr,1]<-"answerButton1"
      }
      
      else if (user3[[i]]$viewName=="checkAnswerButton")
      {
        user3.Gyroscope[index.user3.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user3[[i]]$viewName=="nextQuestionButton")
      {
        user3.Gyroscope[index.user3.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user3[[i]]$viewName=="answerButton2")
      {
        user3.Gyroscope[index.user3.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user3.Gyroscope[index.user3.gyr,2]<-i
      user3.Gyroscope[index.user3.gyr,3]<-user3[[i]]$gyro[[j]]$t
      user3.Gyroscope[index.user3.gyr,4]<-user3[[i]]$gyro[[j]]$accuracy
      user3.Gyroscope[index.user3.gyr,5]<-user3[[i]]$gyro[[j]]$x
      user3.Gyroscope[index.user3.gyr,6]<-user3[[i]]$gyro[[j]]$y
      user3.Gyroscope[index.user3.gyr,7]<-user3[[i]]$gyro[[j]]$z
      user3.Gyroscope[index.user3.gyr,8]<-"user3"
      index.user3.gyr<-index.user3.gyr+1
      
    }
  }
}

##user4 data
user4.touch<-data.frame(array(NA,dim=list(length(user4)*4,10)))
user4.accemeter<-data.frame(array(NA,dim=list(length(user4)*8,8)))
user4.Gyroscope<-data.frame(array(NA,dim=list(length(user4)*6,8)))
##user4.touch 
index.user4.touch<-1
for(i in 1:length(user4))
{
  if (length(user4[[i]]$touch)>0)
  {
    
    for(j in 1:length(user4[[i]]$touch))
    {
      
      if (user4[[i]]$viewName=="answerButton1")
      {
        user4.touch[index.user4.touch,1]<-"answerButton1"
      }
      
      else if (user4[[i]]$viewName=="checkAnswerButton")
      {
        user4.touch[index.user4.touch,1]<-"checkAnswerButton"
      }
      
      else if (user4[[i]]$viewName=="nextQuestionButton")
      {
        user4.touch[index.user4.touch,1]<-"nextQuestionButton"
      }
      
      else if (user4[[i]]$viewName=="answerButton2")
      {
        user4.touch[index.user4.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user4.touch[index.user4.touch,2]<-i
      user4.touch[index.user4.touch,3]<-user4[[i]]$touch[[j]]$x
      user4.touch[index.user4.touch,4]<-user4[[i]]$touch[[j]]$y
      user4.touch[index.user4.touch,5]<-user4[[i]]$touch[[j]]$pressure
      user4.touch[index.user4.touch,6]<-user4[[i]]$touch[[j]]$size
      user4.touch[index.user4.touch,7]<-user4[[i]]$touch[[j]]$minorAxis
      user4.touch[index.user4.touch,8]<-user4[[i]]$touch[[j]]$majorAxis
      user4.touch[index.user4.touch,9]<-user4[[i]]$touch[[j]]$t
      user4.touch[index.user4.touch,10]<-"user4"
      index.user4.touch<-index.user4.touch+1
    }
  }
}

##user4.accemeter
index.user4.accemeter<-1
for(i in 1:length(user4))
{
  if (length(user4[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user4[[i]]$linear_accel))
    {
      
      if (user4[[i]]$viewName=="answerButton1")
      {
        user4.accemeter[index.user4.accemeter,1]<-"answerButton1"
      }
      
      else if (user4[[i]]$viewName=="checkAnswerButton")
      {
        user4.accemeter[index.user4.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user4[[i]]$viewName=="nextQuestionButton")
      {
        user4.accemeter[index.user4.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user4[[i]]$viewName=="answerButton2")
      {
        user4.accemeter[index.user4.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user4.accemeter[index.user4.accemeter,2]<-i
      user4.accemeter[index.user4.accemeter,3]<-user4[[i]]$linear_accel[[j]]$t
      user4.accemeter[index.user4.accemeter,4]<-user4[[i]]$linear_accel[[j]]$accuracy
      user4.accemeter[index.user4.accemeter,5]<-user4[[i]]$linear_accel[[j]]$x
      user4.accemeter[index.user4.accemeter,6]<-user4[[i]]$linear_accel[[j]]$y
      user4.accemeter[index.user4.accemeter,7]<-user4[[i]]$linear_accel[[j]]$z
      user4.accemeter[index.user4.accemeter,8]<-"user4"
      index.user4.accemeter<-index.user4.accemeter+1
      
    }
  }
}

##user4.gyr
index.user4.gyr<-1
for(i in 1:length(user4))
{
  if (length(user4[[i]]$gyro)>0)
  {
    for(j in 1:length(user4[[i]]$gyro))
    {
      
      if (user4[[i]]$viewName=="answerButton1")
      {
        user4.Gyroscope[index.user4.gyr,1]<-"answerButton1"
      }
      
      else if (user4[[i]]$viewName=="checkAnswerButton")
      {
        user4.Gyroscope[index.user4.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user4[[i]]$viewName=="nextQuestionButton")
      {
        user4.Gyroscope[index.user4.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user4[[i]]$viewName=="answerButton2")
      {
        user4.Gyroscope[index.user4.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user4.Gyroscope[index.user4.gyr,2]<-i
      user4.Gyroscope[index.user4.gyr,3]<-user4[[i]]$gyro[[j]]$t
      user4.Gyroscope[index.user4.gyr,4]<-user4[[i]]$gyro[[j]]$accuracy
      user4.Gyroscope[index.user4.gyr,5]<-user4[[i]]$gyro[[j]]$x
      user4.Gyroscope[index.user4.gyr,6]<-user4[[i]]$gyro[[j]]$y
      user4.Gyroscope[index.user4.gyr,7]<-user4[[i]]$gyro[[j]]$z
      user4.Gyroscope[index.user4.gyr,8]<-"user4"
      index.user4.gyr<-index.user4.gyr+1
      
    }
  }
}

##user5 data
user5.touch<-data.frame(array(NA,dim=list(length(user5)*4,10)))
user5.accemeter<-data.frame(array(NA,dim=list(length(user5)*8,8)))
user5.Gyroscope<-data.frame(array(NA,dim=list(length(user5)*6,8)))
##user5.touch 
index.user5.touch<-1
for(i in 1:length(user5))
{
  if (length(user5[[i]]$touch)>0)
  {
    
    for(j in 1:length(user5[[i]]$touch))
    {
      
      if (user5[[i]]$viewName=="answerButton1")
      {
        user5.touch[index.user5.touch,1]<-"answerButton1"
      }
      
      else if (user5[[i]]$viewName=="checkAnswerButton")
      {
        user5.touch[index.user5.touch,1]<-"checkAnswerButton"
      }
      
      else if (user5[[i]]$viewName=="nextQuestionButton")
      {
        user5.touch[index.user5.touch,1]<-"nextQuestionButton"
      }
      
      else if (user5[[i]]$viewName=="answerButton2")
      {
        user5.touch[index.user5.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user5.touch[index.user5.touch,2]<-i
      user5.touch[index.user5.touch,3]<-user5[[i]]$touch[[j]]$x
      user5.touch[index.user5.touch,4]<-user5[[i]]$touch[[j]]$y
      user5.touch[index.user5.touch,5]<-user5[[i]]$touch[[j]]$pressure
      user5.touch[index.user5.touch,6]<-user5[[i]]$touch[[j]]$size
      user5.touch[index.user5.touch,7]<-user5[[i]]$touch[[j]]$minorAxis
      user5.touch[index.user5.touch,8]<-user5[[i]]$touch[[j]]$majorAxis
      user5.touch[index.user5.touch,9]<-user5[[i]]$touch[[j]]$t
      user5.touch[index.user5.touch,10]<-"user5"
      index.user5.touch<-index.user5.touch+1
    }
  }
}

##user5.accemeter
index.user5.accemeter<-1
for(i in 1:length(user5))
{
  if (length(user5[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user5[[i]]$linear_accel))
    {
      
      if (user5[[i]]$viewName=="answerButton1")
      {
        user5.accemeter[index.user5.accemeter,1]<-"answerButton1"
      }
      
      else if (user5[[i]]$viewName=="checkAnswerButton")
      {
        user5.accemeter[index.user5.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user5[[i]]$viewName=="nextQuestionButton")
      {
        user5.accemeter[index.user5.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user5[[i]]$viewName=="answerButton2")
      {
        user5.accemeter[index.user5.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user5.accemeter[index.user5.accemeter,2]<-i
      user5.accemeter[index.user5.accemeter,3]<-user5[[i]]$linear_accel[[j]]$t
      user5.accemeter[index.user5.accemeter,4]<-user5[[i]]$linear_accel[[j]]$accuracy
      user5.accemeter[index.user5.accemeter,5]<-user5[[i]]$linear_accel[[j]]$x
      user5.accemeter[index.user5.accemeter,6]<-user5[[i]]$linear_accel[[j]]$y
      user5.accemeter[index.user5.accemeter,7]<-user5[[i]]$linear_accel[[j]]$z
      user5.accemeter[index.user5.accemeter,8]<-"user5"
      index.user5.accemeter<-index.user5.accemeter+1
      
    }
  }
}

##user5.gyr
index.user5.gyr<-1
for(i in 1:length(user5))
{
  if (length(user5[[i]]$gyro)>0)
  {
    for(j in 1:length(user5[[i]]$gyro))
    {
      
      if (user5[[i]]$viewName=="answerButton1")
      {
        user5.Gyroscope[index.user5.gyr,1]<-"answerButton1"
      }
      
      else if (user5[[i]]$viewName=="checkAnswerButton")
      {
        user5.Gyroscope[index.user5.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user5[[i]]$viewName=="nextQuestionButton")
      {
        user5.Gyroscope[index.user5.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user5[[i]]$viewName=="answerButton2")
      {
        user5.Gyroscope[index.user5.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user5.Gyroscope[index.user5.gyr,2]<-i
      user5.Gyroscope[index.user5.gyr,3]<-user5[[i]]$gyro[[j]]$t
      user5.Gyroscope[index.user5.gyr,4]<-user5[[i]]$gyro[[j]]$accuracy
      user5.Gyroscope[index.user5.gyr,5]<-user5[[i]]$gyro[[j]]$x
      user5.Gyroscope[index.user5.gyr,6]<-user5[[i]]$gyro[[j]]$y
      user5.Gyroscope[index.user5.gyr,7]<-user5[[i]]$gyro[[j]]$z
      user5.Gyroscope[index.user5.gyr,8]<-"user5"
      index.user5.gyr<-index.user5.gyr+1
      
    }
  }
}

##user6 data
user6.touch<-data.frame(array(NA,dim=list(length(user6)*4,10)))
user6.accemeter<-data.frame(array(NA,dim=list(length(user6)*8,8)))
user6.Gyroscope<-data.frame(array(NA,dim=list(length(user6)*6,8)))
##user6.touch 
index.user6.touch<-1
for(i in 1:length(user6))
{
  if (length(user6[[i]]$touch)>0)
  {
    
    for(j in 1:length(user6[[i]]$touch))
    {
      
      if (user6[[i]]$viewName=="answerButton1")
      {
        user6.touch[index.user6.touch,1]<-"answerButton1"
      }
      
      else if (user6[[i]]$viewName=="checkAnswerButton")
      {
        user6.touch[index.user6.touch,1]<-"checkAnswerButton"
      }
      
      else if (user6[[i]]$viewName=="nextQuestionButton")
      {
        user6.touch[index.user6.touch,1]<-"nextQuestionButton"
      }
      
      else if (user6[[i]]$viewName=="answerButton2")
      {
        user6.touch[index.user6.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user6.touch[index.user6.touch,2]<-i
      user6.touch[index.user6.touch,3]<-user6[[i]]$touch[[j]]$x
      user6.touch[index.user6.touch,4]<-user6[[i]]$touch[[j]]$y
      user6.touch[index.user6.touch,5]<-user6[[i]]$touch[[j]]$pressure
      user6.touch[index.user6.touch,6]<-user6[[i]]$touch[[j]]$size
      user6.touch[index.user6.touch,7]<-user6[[i]]$touch[[j]]$minorAxis
      user6.touch[index.user6.touch,8]<-user6[[i]]$touch[[j]]$majorAxis
      user6.touch[index.user6.touch,9]<-user6[[i]]$touch[[j]]$t
      user6.touch[index.user6.touch,10]<-"user6"
      index.user6.touch<-index.user6.touch+1
    }
  }
}

##user6.accemeter
index.user6.accemeter<-1
for(i in 1:length(user6))
{
  if (length(user6[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user6[[i]]$linear_accel))
    {
      
      if (user6[[i]]$viewName=="answerButton1")
      {
        user6.accemeter[index.user6.accemeter,1]<-"answerButton1"
      }
      
      else if (user6[[i]]$viewName=="checkAnswerButton")
      {
        user6.accemeter[index.user6.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user6[[i]]$viewName=="nextQuestionButton")
      {
        user6.accemeter[index.user6.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user6[[i]]$viewName=="answerButton2")
      {
        user6.accemeter[index.user6.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user6.accemeter[index.user6.accemeter,2]<-i
      user6.accemeter[index.user6.accemeter,3]<-user6[[i]]$linear_accel[[j]]$t
      user6.accemeter[index.user6.accemeter,4]<-user6[[i]]$linear_accel[[j]]$accuracy
      user6.accemeter[index.user6.accemeter,5]<-user6[[i]]$linear_accel[[j]]$x
      user6.accemeter[index.user6.accemeter,6]<-user6[[i]]$linear_accel[[j]]$y
      user6.accemeter[index.user6.accemeter,7]<-user6[[i]]$linear_accel[[j]]$z
      user6.accemeter[index.user6.accemeter,8]<-"user6"
      index.user6.accemeter<-index.user6.accemeter+1
      
    }
  }
}

##user6.gyr
index.user6.gyr<-1
for(i in 1:length(user6))
{
  if (length(user6[[i]]$gyro)>0)
  {
    for(j in 1:length(user6[[i]]$gyro))
    {
      
      if (user6[[i]]$viewName=="answerButton1")
      {
        user6.Gyroscope[index.user6.gyr,1]<-"answerButton1"
      }
      
      else if (user6[[i]]$viewName=="checkAnswerButton")
      {
        user6.Gyroscope[index.user6.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user6[[i]]$viewName=="nextQuestionButton")
      {
        user6.Gyroscope[index.user6.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user6[[i]]$viewName=="answerButton2")
      {
        user6.Gyroscope[index.user6.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user6.Gyroscope[index.user6.gyr,2]<-i
      user6.Gyroscope[index.user6.gyr,3]<-user6[[i]]$gyro[[j]]$t
      user6.Gyroscope[index.user6.gyr,4]<-user6[[i]]$gyro[[j]]$accuracy
      user6.Gyroscope[index.user6.gyr,5]<-user6[[i]]$gyro[[j]]$x
      user6.Gyroscope[index.user6.gyr,6]<-user6[[i]]$gyro[[j]]$y
      user6.Gyroscope[index.user6.gyr,7]<-user6[[i]]$gyro[[j]]$z
      user6.Gyroscope[index.user6.gyr,8]<-"user6"
      index.user6.gyr<-index.user6.gyr+1
      
    }
  }
}

##user7 data
user7.touch<-data.frame(array(NA,dim=list(length(user7)*4,10)))
user7.accemeter<-data.frame(array(NA,dim=list(length(user7)*8,8)))
user7.Gyroscope<-data.frame(array(NA,dim=list(length(user7)*6,8)))
##user7.touch 
index.user7.touch<-1
for(i in 1:length(user7))
{
  if (length(user7[[i]]$touch)>0)
  {
    
    for(j in 1:length(user7[[i]]$touch))
    {
      
      if (user7[[i]]$viewName=="answerButton1")
      {
        user7.touch[index.user7.touch,1]<-"answerButton1"
      }
      
      else if (user7[[i]]$viewName=="checkAnswerButton")
      {
        user7.touch[index.user7.touch,1]<-"checkAnswerButton"
      }
      
      else if (user7[[i]]$viewName=="nextQuestionButton")
      {
        user7.touch[index.user7.touch,1]<-"nextQuestionButton"
      }
      
      else if (user7[[i]]$viewName=="answerButton2")
      {
        user7.touch[index.user7.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user7.touch[index.user7.touch,2]<-i
      user7.touch[index.user7.touch,3]<-user7[[i]]$touch[[j]]$x
      user7.touch[index.user7.touch,4]<-user7[[i]]$touch[[j]]$y
      user7.touch[index.user7.touch,5]<-user7[[i]]$touch[[j]]$pressure
      user7.touch[index.user7.touch,6]<-user7[[i]]$touch[[j]]$size
      user7.touch[index.user7.touch,7]<-user7[[i]]$touch[[j]]$minorAxis
      user7.touch[index.user7.touch,8]<-user7[[i]]$touch[[j]]$majorAxis
      user7.touch[index.user7.touch,9]<-user7[[i]]$touch[[j]]$t
      user7.touch[index.user7.touch,10]<-"user7"
      index.user7.touch<-index.user7.touch+1
    }
  }
}

##user7.accemeter
index.user7.accemeter<-1
for(i in 1:length(user7))
{
  if (length(user7[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user7[[i]]$linear_accel))
    {
      
      if (user7[[i]]$viewName=="answerButton1")
      {
        user7.accemeter[index.user7.accemeter,1]<-"answerButton1"
      }
      
      else if (user7[[i]]$viewName=="checkAnswerButton")
      {
        user7.accemeter[index.user7.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user7[[i]]$viewName=="nextQuestionButton")
      {
        user7.accemeter[index.user7.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user7[[i]]$viewName=="answerButton2")
      {
        user7.accemeter[index.user7.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user7.accemeter[index.user7.accemeter,2]<-i
      user7.accemeter[index.user7.accemeter,3]<-user7[[i]]$linear_accel[[j]]$t
      user7.accemeter[index.user7.accemeter,4]<-user7[[i]]$linear_accel[[j]]$accuracy
      user7.accemeter[index.user7.accemeter,5]<-user7[[i]]$linear_accel[[j]]$x
      user7.accemeter[index.user7.accemeter,6]<-user7[[i]]$linear_accel[[j]]$y
      user7.accemeter[index.user7.accemeter,7]<-user7[[i]]$linear_accel[[j]]$z
      user7.accemeter[index.user7.accemeter,8]<-"user7"
      index.user7.accemeter<-index.user7.accemeter+1
      
    }
  }
}

##user7.gyr
index.user7.gyr<-1
for(i in 1:length(user7))
{
  if (length(user7[[i]]$gyro)>0)
  {
    for(j in 1:length(user7[[i]]$gyro))
    {
      
      if (user7[[i]]$viewName=="answerButton1")
      {
        user7.Gyroscope[index.user7.gyr,1]<-"answerButton1"
      }
      
      else if (user7[[i]]$viewName=="checkAnswerButton")
      {
        user7.Gyroscope[index.user7.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user7[[i]]$viewName=="nextQuestionButton")
      {
        user7.Gyroscope[index.user7.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user7[[i]]$viewName=="answerButton2")
      {
        user7.Gyroscope[index.user7.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user7.Gyroscope[index.user7.gyr,2]<-i
      user7.Gyroscope[index.user7.gyr,3]<-user7[[i]]$gyro[[j]]$t
      user7.Gyroscope[index.user7.gyr,4]<-user7[[i]]$gyro[[j]]$accuracy
      user7.Gyroscope[index.user7.gyr,5]<-user7[[i]]$gyro[[j]]$x
      user7.Gyroscope[index.user7.gyr,6]<-user7[[i]]$gyro[[j]]$y
      user7.Gyroscope[index.user7.gyr,7]<-user7[[i]]$gyro[[j]]$z
      user7.Gyroscope[index.user7.gyr,8]<-"user7"
      index.user7.gyr<-index.user7.gyr+1
      
    }
  }
}##user8 data
user8.touch<-data.frame(array(NA,dim=list(length(user8)*4,10)))
user8.accemeter<-data.frame(array(NA,dim=list(length(user8)*8,8)))
user8.Gyroscope<-data.frame(array(NA,dim=list(length(user8)*6,8)))
##user8.touch 
index.user8.touch<-1
for(i in 1:length(user8))
{
  if (length(user8[[i]]$touch)>0)
  {
    
    for(j in 1:length(user8[[i]]$touch))
    {
      
      if (user8[[i]]$viewName=="answerButton1")
      {
        user8.touch[index.user8.touch,1]<-"answerButton1"
      }
      
      else if (user8[[i]]$viewName=="checkAnswerButton")
      {
        user8.touch[index.user8.touch,1]<-"checkAnswerButton"
      }
      
      else if (user8[[i]]$viewName=="nextQuestionButton")
      {
        user8.touch[index.user8.touch,1]<-"nextQuestionButton"
      }
      
      else if (user8[[i]]$viewName=="answerButton2")
      {
        user8.touch[index.user8.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user8.touch[index.user8.touch,2]<-i
      user8.touch[index.user8.touch,3]<-user8[[i]]$touch[[j]]$x
      user8.touch[index.user8.touch,4]<-user8[[i]]$touch[[j]]$y
      user8.touch[index.user8.touch,5]<-user8[[i]]$touch[[j]]$pressure
      user8.touch[index.user8.touch,6]<-user8[[i]]$touch[[j]]$size
      user8.touch[index.user8.touch,7]<-user8[[i]]$touch[[j]]$minorAxis
      user8.touch[index.user8.touch,8]<-user8[[i]]$touch[[j]]$majorAxis
      user8.touch[index.user8.touch,9]<-user8[[i]]$touch[[j]]$t
      user8.touch[index.user8.touch,10]<-"user8"
      index.user8.touch<-index.user8.touch+1
    }
  }
}

##user8.accemeter
index.user8.accemeter<-1
for(i in 1:length(user8))
{
  if (length(user8[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user8[[i]]$linear_accel))
    {
      
      if (user8[[i]]$viewName=="answerButton1")
      {
        user8.accemeter[index.user8.accemeter,1]<-"answerButton1"
      }
      
      else if (user8[[i]]$viewName=="checkAnswerButton")
      {
        user8.accemeter[index.user8.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user8[[i]]$viewName=="nextQuestionButton")
      {
        user8.accemeter[index.user8.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user8[[i]]$viewName=="answerButton2")
      {
        user8.accemeter[index.user8.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user8.accemeter[index.user8.accemeter,2]<-i
      user8.accemeter[index.user8.accemeter,3]<-user8[[i]]$linear_accel[[j]]$t
      user8.accemeter[index.user8.accemeter,4]<-user8[[i]]$linear_accel[[j]]$accuracy
      user8.accemeter[index.user8.accemeter,5]<-user8[[i]]$linear_accel[[j]]$x
      user8.accemeter[index.user8.accemeter,6]<-user8[[i]]$linear_accel[[j]]$y
      user8.accemeter[index.user8.accemeter,7]<-user8[[i]]$linear_accel[[j]]$z
      user8.accemeter[index.user8.accemeter,8]<-"user8"
      index.user8.accemeter<-index.user8.accemeter+1
      
    }
  }
}

##user8.gyr
index.user8.gyr<-1
for(i in 1:length(user8))
{
  if (length(user8[[i]]$gyro)>0)
  {
    for(j in 1:length(user8[[i]]$gyro))
    {
      
      if (user8[[i]]$viewName=="answerButton1")
      {
        user8.Gyroscope[index.user8.gyr,1]<-"answerButton1"
      }
      
      else if (user8[[i]]$viewName=="checkAnswerButton")
      {
        user8.Gyroscope[index.user8.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user8[[i]]$viewName=="nextQuestionButton")
      {
        user8.Gyroscope[index.user8.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user8[[i]]$viewName=="answerButton2")
      {
        user8.Gyroscope[index.user8.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user8.Gyroscope[index.user8.gyr,2]<-i
      user8.Gyroscope[index.user8.gyr,3]<-user8[[i]]$gyro[[j]]$t
      user8.Gyroscope[index.user8.gyr,4]<-user8[[i]]$gyro[[j]]$accuracy
      user8.Gyroscope[index.user8.gyr,5]<-user8[[i]]$gyro[[j]]$x
      user8.Gyroscope[index.user8.gyr,6]<-user8[[i]]$gyro[[j]]$y
      user8.Gyroscope[index.user8.gyr,7]<-user8[[i]]$gyro[[j]]$z
      user8.Gyroscope[index.user8.gyr,8]<-"user8"
      index.user8.gyr<-index.user8.gyr+1
      
    }
  }
}

##user9 data
user9.touch<-data.frame(array(NA,dim=list(length(user9)*4,10)))
user9.accemeter<-data.frame(array(NA,dim=list(length(user9)*8,8)))
user9.Gyroscope<-data.frame(array(NA,dim=list(length(user9)*6,8)))
##user9.touch 
index.user9.touch<-1
for(i in 1:length(user9))
{
  if (length(user9[[i]]$touch)>0)
  {
    
    for(j in 1:length(user9[[i]]$touch))
    {
      
      if (user9[[i]]$viewName=="answerButton1")
      {
        user9.touch[index.user9.touch,1]<-"answerButton1"
      }
      
      else if (user9[[i]]$viewName=="checkAnswerButton")
      {
        user9.touch[index.user9.touch,1]<-"checkAnswerButton"
      }
      
      else if (user9[[i]]$viewName=="nextQuestionButton")
      {
        user9.touch[index.user9.touch,1]<-"nextQuestionButton"
      }
      
      else if (user9[[i]]$viewName=="answerButton2")
      {
        user9.touch[index.user9.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user9.touch[index.user9.touch,2]<-i
      user9.touch[index.user9.touch,3]<-user9[[i]]$touch[[j]]$x
      user9.touch[index.user9.touch,4]<-user9[[i]]$touch[[j]]$y
      user9.touch[index.user9.touch,5]<-user9[[i]]$touch[[j]]$pressure
      user9.touch[index.user9.touch,6]<-user9[[i]]$touch[[j]]$size
      user9.touch[index.user9.touch,7]<-user9[[i]]$touch[[j]]$minorAxis
      user9.touch[index.user9.touch,8]<-user9[[i]]$touch[[j]]$majorAxis
      user9.touch[index.user9.touch,9]<-user9[[i]]$touch[[j]]$t
      user9.touch[index.user9.touch,10]<-"user9"
      index.user9.touch<-index.user9.touch+1
    }
  }
}

##user9.accemeter
index.user9.accemeter<-1
for(i in 1:length(user9))
{
  if (length(user9[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user9[[i]]$linear_accel))
    {
      
      if (user9[[i]]$viewName=="answerButton1")
      {
        user9.accemeter[index.user9.accemeter,1]<-"answerButton1"
      }
      
      else if (user9[[i]]$viewName=="checkAnswerButton")
      {
        user9.accemeter[index.user9.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user9[[i]]$viewName=="nextQuestionButton")
      {
        user9.accemeter[index.user9.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user9[[i]]$viewName=="answerButton2")
      {
        user9.accemeter[index.user9.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user9.accemeter[index.user9.accemeter,2]<-i
      user9.accemeter[index.user9.accemeter,3]<-user9[[i]]$linear_accel[[j]]$t
      user9.accemeter[index.user9.accemeter,4]<-user9[[i]]$linear_accel[[j]]$accuracy
      user9.accemeter[index.user9.accemeter,5]<-user9[[i]]$linear_accel[[j]]$x
      user9.accemeter[index.user9.accemeter,6]<-user9[[i]]$linear_accel[[j]]$y
      user9.accemeter[index.user9.accemeter,7]<-user9[[i]]$linear_accel[[j]]$z
      user9.accemeter[index.user9.accemeter,8]<-"user9"
      index.user9.accemeter<-index.user9.accemeter+1
      
    }
  }
}

##user9.gyr
index.user9.gyr<-1
for(i in 1:length(user9))
{
  if (length(user9[[i]]$gyro)>0)
  {
    for(j in 1:length(user9[[i]]$gyro))
    {
      
      if (user9[[i]]$viewName=="answerButton1")
      {
        user9.Gyroscope[index.user9.gyr,1]<-"answerButton1"
      }
      
      else if (user9[[i]]$viewName=="checkAnswerButton")
      {
        user9.Gyroscope[index.user9.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user9[[i]]$viewName=="nextQuestionButton")
      {
        user9.Gyroscope[index.user9.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user9[[i]]$viewName=="answerButton2")
      {
        user9.Gyroscope[index.user9.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user9.Gyroscope[index.user9.gyr,2]<-i
      user9.Gyroscope[index.user9.gyr,3]<-user9[[i]]$gyro[[j]]$t
      user9.Gyroscope[index.user9.gyr,4]<-user9[[i]]$gyro[[j]]$accuracy
      user9.Gyroscope[index.user9.gyr,5]<-user9[[i]]$gyro[[j]]$x
      user9.Gyroscope[index.user9.gyr,6]<-user9[[i]]$gyro[[j]]$y
      user9.Gyroscope[index.user9.gyr,7]<-user9[[i]]$gyro[[j]]$z
      user9.Gyroscope[index.user9.gyr,8]<-"user9"
      index.user9.gyr<-index.user9.gyr+1
      
    }
  }
}

##user10 data
user10.touch<-data.frame(array(NA,dim=list(length(user10)*4,10)))
user10.accemeter<-data.frame(array(NA,dim=list(length(user10)*8,8)))
user10.Gyroscope<-data.frame(array(NA,dim=list(length(user10)*6,8)))
##user10.touch 
index.user10.touch<-1
for(i in 1:length(user10))
{
  if (length(user10[[i]]$touch)>0)
  {
    
    for(j in 1:length(user10[[i]]$touch))
    {
      
      if (user10[[i]]$viewName=="answerButton1")
      {
        user10.touch[index.user10.touch,1]<-"answerButton1"
      }
      
      else if (user10[[i]]$viewName=="checkAnswerButton")
      {
        user10.touch[index.user10.touch,1]<-"checkAnswerButton"
      }
      
      else if (user10[[i]]$viewName=="nextQuestionButton")
      {
        user10.touch[index.user10.touch,1]<-"nextQuestionButton"
      }
      
      else if (user10[[i]]$viewName=="answerButton2")
      {
        user10.touch[index.user10.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user10.touch[index.user10.touch,2]<-i
      user10.touch[index.user10.touch,3]<-user10[[i]]$touch[[j]]$x
      user10.touch[index.user10.touch,4]<-user10[[i]]$touch[[j]]$y
      user10.touch[index.user10.touch,5]<-user10[[i]]$touch[[j]]$pressure
      user10.touch[index.user10.touch,6]<-user10[[i]]$touch[[j]]$size
      user10.touch[index.user10.touch,7]<-user10[[i]]$touch[[j]]$minorAxis
      user10.touch[index.user10.touch,8]<-user10[[i]]$touch[[j]]$majorAxis
      user10.touch[index.user10.touch,9]<-user10[[i]]$touch[[j]]$t
      user10.touch[index.user10.touch,10]<-"user10"
      index.user10.touch<-index.user10.touch+1
    }
  }
}

##user10.accemeter
index.user10.accemeter<-1
for(i in 1:length(user10))
{
  if (length(user10[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user10[[i]]$linear_accel))
    {
      
      if (user10[[i]]$viewName=="answerButton1")
      {
        user10.accemeter[index.user10.accemeter,1]<-"answerButton1"
      }
      
      else if (user10[[i]]$viewName=="checkAnswerButton")
      {
        user10.accemeter[index.user10.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user10[[i]]$viewName=="nextQuestionButton")
      {
        user10.accemeter[index.user10.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user10[[i]]$viewName=="answerButton2")
      {
        user10.accemeter[index.user10.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user10.accemeter[index.user10.accemeter,2]<-i
      user10.accemeter[index.user10.accemeter,3]<-user10[[i]]$linear_accel[[j]]$t
      user10.accemeter[index.user10.accemeter,4]<-user10[[i]]$linear_accel[[j]]$accuracy
      user10.accemeter[index.user10.accemeter,5]<-user10[[i]]$linear_accel[[j]]$x
      user10.accemeter[index.user10.accemeter,6]<-user10[[i]]$linear_accel[[j]]$y
      user10.accemeter[index.user10.accemeter,7]<-user10[[i]]$linear_accel[[j]]$z
      user10.accemeter[index.user10.accemeter,8]<-"user10"
      index.user10.accemeter<-index.user10.accemeter+1
      
    }
  }
}

##user10.gyr
index.user10.gyr<-1
for(i in 1:length(user10))
{
  if (length(user10[[i]]$gyro)>0)
  {
    for(j in 1:length(user10[[i]]$gyro))
    {
      
      if (user10[[i]]$viewName=="answerButton1")
      {
        user10.Gyroscope[index.user10.gyr,1]<-"answerButton1"
      }
      
      else if (user10[[i]]$viewName=="checkAnswerButton")
      {
        user10.Gyroscope[index.user10.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user10[[i]]$viewName=="nextQuestionButton")
      {
        user10.Gyroscope[index.user10.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user10[[i]]$viewName=="answerButton2")
      {
        user10.Gyroscope[index.user10.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user10.Gyroscope[index.user10.gyr,2]<-i
      user10.Gyroscope[index.user10.gyr,3]<-user10[[i]]$gyro[[j]]$t
      user10.Gyroscope[index.user10.gyr,4]<-user10[[i]]$gyro[[j]]$accuracy
      user10.Gyroscope[index.user10.gyr,5]<-user10[[i]]$gyro[[j]]$x
      user10.Gyroscope[index.user10.gyr,6]<-user10[[i]]$gyro[[j]]$y
      user10.Gyroscope[index.user10.gyr,7]<-user10[[i]]$gyro[[j]]$z
      user10.Gyroscope[index.user10.gyr,8]<-"user10"
      index.user10.gyr<-index.user10.gyr+1
      
    }
  }
}

##user11 data
user11.touch<-data.frame(array(NA,dim=list(length(user11)*4,10)))
user11.accemeter<-data.frame(array(NA,dim=list(length(user11)*8,8)))
user11.Gyroscope<-data.frame(array(NA,dim=list(length(user11)*6,8)))
##user11.touch 
index.user11.touch<-1
for(i in 1:length(user11))
{
  if (length(user11[[i]]$touch)>0)
  {
    
    for(j in 1:length(user11[[i]]$touch))
    {
      
      if (user11[[i]]$viewName=="answerButton1")
      {
        user11.touch[index.user11.touch,1]<-"answerButton1"
      }
      
      else if (user11[[i]]$viewName=="checkAnswerButton")
      {
        user11.touch[index.user11.touch,1]<-"checkAnswerButton"
      }
      
      else if (user11[[i]]$viewName=="nextQuestionButton")
      {
        user11.touch[index.user11.touch,1]<-"nextQuestionButton"
      }
      
      else if (user11[[i]]$viewName=="answerButton2")
      {
        user11.touch[index.user11.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user11.touch[index.user11.touch,2]<-i
      user11.touch[index.user11.touch,3]<-user11[[i]]$touch[[j]]$x
      user11.touch[index.user11.touch,4]<-user11[[i]]$touch[[j]]$y
      user11.touch[index.user11.touch,5]<-user11[[i]]$touch[[j]]$pressure
      user11.touch[index.user11.touch,6]<-user11[[i]]$touch[[j]]$size
      user11.touch[index.user11.touch,7]<-user11[[i]]$touch[[j]]$minorAxis
      user11.touch[index.user11.touch,8]<-user11[[i]]$touch[[j]]$majorAxis
      user11.touch[index.user11.touch,9]<-user11[[i]]$touch[[j]]$t
      user11.touch[index.user11.touch,10]<-"user11"
      index.user11.touch<-index.user11.touch+1
    }
  }
}

##user11.accemeter
index.user11.accemeter<-1
for(i in 1:length(user11))
{
  if (length(user11[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user11[[i]]$linear_accel))
    {
      
      if (user11[[i]]$viewName=="answerButton1")
      {
        user11.accemeter[index.user11.accemeter,1]<-"answerButton1"
      }
      
      else if (user11[[i]]$viewName=="checkAnswerButton")
      {
        user11.accemeter[index.user11.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user11[[i]]$viewName=="nextQuestionButton")
      {
        user11.accemeter[index.user11.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user11[[i]]$viewName=="answerButton2")
      {
        user11.accemeter[index.user11.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user11.accemeter[index.user11.accemeter,2]<-i
      user11.accemeter[index.user11.accemeter,3]<-user11[[i]]$linear_accel[[j]]$t
      user11.accemeter[index.user11.accemeter,4]<-user11[[i]]$linear_accel[[j]]$accuracy
      user11.accemeter[index.user11.accemeter,5]<-user11[[i]]$linear_accel[[j]]$x
      user11.accemeter[index.user11.accemeter,6]<-user11[[i]]$linear_accel[[j]]$y
      user11.accemeter[index.user11.accemeter,7]<-user11[[i]]$linear_accel[[j]]$z
      user11.accemeter[index.user11.accemeter,8]<-"user11"
      index.user11.accemeter<-index.user11.accemeter+1
      
    }
  }
}

##user11.gyr
index.user11.gyr<-1
for(i in 1:length(user11))
{
  if (length(user11[[i]]$gyro)>0)
  {
    for(j in 1:length(user11[[i]]$gyro))
    {
      
      if (user11[[i]]$viewName=="answerButton1")
      {
        user11.Gyroscope[index.user11.gyr,1]<-"answerButton1"
      }
      
      else if (user11[[i]]$viewName=="checkAnswerButton")
      {
        user11.Gyroscope[index.user11.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user11[[i]]$viewName=="nextQuestionButton")
      {
        user11.Gyroscope[index.user11.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user11[[i]]$viewName=="answerButton2")
      {
        user11.Gyroscope[index.user11.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user11.Gyroscope[index.user11.gyr,2]<-i
      user11.Gyroscope[index.user11.gyr,3]<-user11[[i]]$gyro[[j]]$t
      user11.Gyroscope[index.user11.gyr,4]<-user11[[i]]$gyro[[j]]$accuracy
      user11.Gyroscope[index.user11.gyr,5]<-user11[[i]]$gyro[[j]]$x
      user11.Gyroscope[index.user11.gyr,6]<-user11[[i]]$gyro[[j]]$y
      user11.Gyroscope[index.user11.gyr,7]<-user11[[i]]$gyro[[j]]$z
      user11.Gyroscope[index.user11.gyr,8]<-"user11"
      index.user11.gyr<-index.user11.gyr+1
      
    }
  }
}

##user12 data
user12.touch<-data.frame(array(NA,dim=list(length(user12)*4,10)))
user12.accemeter<-data.frame(array(NA,dim=list(length(user12)*8,8)))
user12.Gyroscope<-data.frame(array(NA,dim=list(length(user12)*6,8)))
##user12.touch 
index.user12.touch<-1
for(i in 1:length(user12))
{
  if (length(user12[[i]]$touch)>0)
  {
    
    for(j in 1:length(user12[[i]]$touch))
    {
      
      if (user12[[i]]$viewName=="answerButton1")
      {
        user12.touch[index.user12.touch,1]<-"answerButton1"
      }
      
      else if (user12[[i]]$viewName=="checkAnswerButton")
      {
        user12.touch[index.user12.touch,1]<-"checkAnswerButton"
      }
      
      else if (user12[[i]]$viewName=="nextQuestionButton")
      {
        user12.touch[index.user12.touch,1]<-"nextQuestionButton"
      }
      
      else if (user12[[i]]$viewName=="answerButton2")
      {
        user12.touch[index.user12.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user12.touch[index.user12.touch,2]<-i
      user12.touch[index.user12.touch,3]<-user12[[i]]$touch[[j]]$x
      user12.touch[index.user12.touch,4]<-user12[[i]]$touch[[j]]$y
      user12.touch[index.user12.touch,5]<-user12[[i]]$touch[[j]]$pressure
      user12.touch[index.user12.touch,6]<-user12[[i]]$touch[[j]]$size
      user12.touch[index.user12.touch,7]<-user12[[i]]$touch[[j]]$minorAxis
      user12.touch[index.user12.touch,8]<-user12[[i]]$touch[[j]]$majorAxis
      user12.touch[index.user12.touch,9]<-user12[[i]]$touch[[j]]$t
      user12.touch[index.user12.touch,10]<-"user12"
      index.user12.touch<-index.user12.touch+1
    }
  }
}

##user12.accemeter
index.user12.accemeter<-1
for(i in 1:length(user12))
{
  if (length(user12[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user12[[i]]$linear_accel))
    {
      
      if (user12[[i]]$viewName=="answerButton1")
      {
        user12.accemeter[index.user12.accemeter,1]<-"answerButton1"
      }
      
      else if (user12[[i]]$viewName=="checkAnswerButton")
      {
        user12.accemeter[index.user12.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user12[[i]]$viewName=="nextQuestionButton")
      {
        user12.accemeter[index.user12.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user12[[i]]$viewName=="answerButton2")
      {
        user12.accemeter[index.user12.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user12.accemeter[index.user12.accemeter,2]<-i
      user12.accemeter[index.user12.accemeter,3]<-user12[[i]]$linear_accel[[j]]$t
      user12.accemeter[index.user12.accemeter,4]<-user12[[i]]$linear_accel[[j]]$accuracy
      user12.accemeter[index.user12.accemeter,5]<-user12[[i]]$linear_accel[[j]]$x
      user12.accemeter[index.user12.accemeter,6]<-user12[[i]]$linear_accel[[j]]$y
      user12.accemeter[index.user12.accemeter,7]<-user12[[i]]$linear_accel[[j]]$z
      user12.accemeter[index.user12.accemeter,8]<-"user12"
      index.user12.accemeter<-index.user12.accemeter+1
      
    }
  }
}

##user12.gyr
index.user12.gyr<-1
for(i in 1:length(user12))
{
  if (length(user12[[i]]$gyro)>0)
  {
    for(j in 1:length(user12[[i]]$gyro))
    {
      
      if (user12[[i]]$viewName=="answerButton1")
      {
        user12.Gyroscope[index.user12.gyr,1]<-"answerButton1"
      }
      
      else if (user12[[i]]$viewName=="checkAnswerButton")
      {
        user12.Gyroscope[index.user12.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user12[[i]]$viewName=="nextQuestionButton")
      {
        user12.Gyroscope[index.user12.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user12[[i]]$viewName=="answerButton2")
      {
        user12.Gyroscope[index.user12.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user12.Gyroscope[index.user12.gyr,2]<-i
      user12.Gyroscope[index.user12.gyr,3]<-user12[[i]]$gyro[[j]]$t
      user12.Gyroscope[index.user12.gyr,4]<-user12[[i]]$gyro[[j]]$accuracy
      user12.Gyroscope[index.user12.gyr,5]<-user12[[i]]$gyro[[j]]$x
      user12.Gyroscope[index.user12.gyr,6]<-user12[[i]]$gyro[[j]]$y
      user12.Gyroscope[index.user12.gyr,7]<-user12[[i]]$gyro[[j]]$z
      user12.Gyroscope[index.user12.gyr,8]<-"user12"
      index.user12.gyr<-index.user12.gyr+1
      
    }
  }
}

##user13 data
user13.touch<-data.frame(array(NA,dim=list(length(user13)*4,10)))
user13.accemeter<-data.frame(array(NA,dim=list(length(user13)*8,8)))
user13.Gyroscope<-data.frame(array(NA,dim=list(length(user13)*6,8)))
##user13.touch 
index.user13.touch<-1
for(i in 1:length(user13))
{
  if (length(user13[[i]]$touch)>0)
  {
    
    for(j in 1:length(user13[[i]]$touch))
    {
      
      if (user13[[i]]$viewName=="answerButton1")
      {
        user13.touch[index.user13.touch,1]<-"answerButton1"
      }
      
      else if (user13[[i]]$viewName=="checkAnswerButton")
      {
        user13.touch[index.user13.touch,1]<-"checkAnswerButton"
      }
      
      else if (user13[[i]]$viewName=="nextQuestionButton")
      {
        user13.touch[index.user13.touch,1]<-"nextQuestionButton"
      }
      
      else if (user13[[i]]$viewName=="answerButton2")
      {
        user13.touch[index.user13.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user13.touch[index.user13.touch,2]<-i
      user13.touch[index.user13.touch,3]<-user13[[i]]$touch[[j]]$x
      user13.touch[index.user13.touch,4]<-user13[[i]]$touch[[j]]$y
      user13.touch[index.user13.touch,5]<-user13[[i]]$touch[[j]]$pressure
      user13.touch[index.user13.touch,6]<-user13[[i]]$touch[[j]]$size
      user13.touch[index.user13.touch,7]<-user13[[i]]$touch[[j]]$minorAxis
      user13.touch[index.user13.touch,8]<-user13[[i]]$touch[[j]]$majorAxis
      user13.touch[index.user13.touch,9]<-user13[[i]]$touch[[j]]$t
      user13.touch[index.user13.touch,10]<-"user13"
      index.user13.touch<-index.user13.touch+1
    }
  }
}

##user13.accemeter
index.user13.accemeter<-1
for(i in 1:length(user13))
{
  if (length(user13[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user13[[i]]$linear_accel))
    {
      
      if (user13[[i]]$viewName=="answerButton1")
      {
        user13.accemeter[index.user13.accemeter,1]<-"answerButton1"
      }
      
      else if (user13[[i]]$viewName=="checkAnswerButton")
      {
        user13.accemeter[index.user13.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user13[[i]]$viewName=="nextQuestionButton")
      {
        user13.accemeter[index.user13.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user13[[i]]$viewName=="answerButton2")
      {
        user13.accemeter[index.user13.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user13.accemeter[index.user13.accemeter,2]<-i
      user13.accemeter[index.user13.accemeter,3]<-user13[[i]]$linear_accel[[j]]$t
      user13.accemeter[index.user13.accemeter,4]<-user13[[i]]$linear_accel[[j]]$accuracy
      user13.accemeter[index.user13.accemeter,5]<-user13[[i]]$linear_accel[[j]]$x
      user13.accemeter[index.user13.accemeter,6]<-user13[[i]]$linear_accel[[j]]$y
      user13.accemeter[index.user13.accemeter,7]<-user13[[i]]$linear_accel[[j]]$z
      user13.accemeter[index.user13.accemeter,8]<-"user13"
      index.user13.accemeter<-index.user13.accemeter+1
      
    }
  }
}

##user13.gyr
index.user13.gyr<-1
for(i in 1:length(user13))
{
  if (length(user13[[i]]$gyro)>0)
  {
    for(j in 1:length(user13[[i]]$gyro))
    {
      
      if (user13[[i]]$viewName=="answerButton1")
      {
        user13.Gyroscope[index.user13.gyr,1]<-"answerButton1"
      }
      
      else if (user13[[i]]$viewName=="checkAnswerButton")
      {
        user13.Gyroscope[index.user13.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user13[[i]]$viewName=="nextQuestionButton")
      {
        user13.Gyroscope[index.user13.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user13[[i]]$viewName=="answerButton2")
      {
        user13.Gyroscope[index.user13.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user13.Gyroscope[index.user13.gyr,2]<-i
      user13.Gyroscope[index.user13.gyr,3]<-user13[[i]]$gyro[[j]]$t
      user13.Gyroscope[index.user13.gyr,4]<-user13[[i]]$gyro[[j]]$accuracy
      user13.Gyroscope[index.user13.gyr,5]<-user13[[i]]$gyro[[j]]$x
      user13.Gyroscope[index.user13.gyr,6]<-user13[[i]]$gyro[[j]]$y
      user13.Gyroscope[index.user13.gyr,7]<-user13[[i]]$gyro[[j]]$z
      user13.Gyroscope[index.user13.gyr,8]<-"user13"
      index.user13.gyr<-index.user13.gyr+1
      
    }
  }
}

##user14 data
user14.touch<-data.frame(array(NA,dim=list(length(user14)*4,10)))
user14.accemeter<-data.frame(array(NA,dim=list(length(user14)*8,8)))
user14.Gyroscope<-data.frame(array(NA,dim=list(length(user14)*6,8)))
##user14.touch 
index.user14.touch<-1
for(i in 1:length(user14))
{
  if (length(user14[[i]]$touch)>0)
  {
    
    for(j in 1:length(user14[[i]]$touch))
    {
      
      if (user14[[i]]$viewName=="answerButton1")
      {
        user14.touch[index.user14.touch,1]<-"answerButton1"
      }
      
      else if (user14[[i]]$viewName=="checkAnswerButton")
      {
        user14.touch[index.user14.touch,1]<-"checkAnswerButton"
      }
      
      else if (user14[[i]]$viewName=="nextQuestionButton")
      {
        user14.touch[index.user14.touch,1]<-"nextQuestionButton"
      }
      
      else if (user14[[i]]$viewName=="answerButton2")
      {
        user14.touch[index.user14.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user14.touch[index.user14.touch,2]<-i
      user14.touch[index.user14.touch,3]<-user14[[i]]$touch[[j]]$x
      user14.touch[index.user14.touch,4]<-user14[[i]]$touch[[j]]$y
      user14.touch[index.user14.touch,5]<-user14[[i]]$touch[[j]]$pressure
      user14.touch[index.user14.touch,6]<-user14[[i]]$touch[[j]]$size
      user14.touch[index.user14.touch,7]<-user14[[i]]$touch[[j]]$minorAxis
      user14.touch[index.user14.touch,8]<-user14[[i]]$touch[[j]]$majorAxis
      user14.touch[index.user14.touch,9]<-user14[[i]]$touch[[j]]$t
      user14.touch[index.user14.touch,10]<-"user14"
      index.user14.touch<-index.user14.touch+1
    }
  }
}

##user14.accemeter
index.user14.accemeter<-1
for(i in 1:length(user14))
{
  if (length(user14[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user14[[i]]$linear_accel))
    {
      
      if (user14[[i]]$viewName=="answerButton1")
      {
        user14.accemeter[index.user14.accemeter,1]<-"answerButton1"
      }
      
      else if (user14[[i]]$viewName=="checkAnswerButton")
      {
        user14.accemeter[index.user14.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user14[[i]]$viewName=="nextQuestionButton")
      {
        user14.accemeter[index.user14.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user14[[i]]$viewName=="answerButton2")
      {
        user14.accemeter[index.user14.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user14.accemeter[index.user14.accemeter,2]<-i
      user14.accemeter[index.user14.accemeter,3]<-user14[[i]]$linear_accel[[j]]$t
      user14.accemeter[index.user14.accemeter,4]<-user14[[i]]$linear_accel[[j]]$accuracy
      user14.accemeter[index.user14.accemeter,5]<-user14[[i]]$linear_accel[[j]]$x
      user14.accemeter[index.user14.accemeter,6]<-user14[[i]]$linear_accel[[j]]$y
      user14.accemeter[index.user14.accemeter,7]<-user14[[i]]$linear_accel[[j]]$z
      user14.accemeter[index.user14.accemeter,8]<-"user14"
      index.user14.accemeter<-index.user14.accemeter+1
      
    }
  }
}

##user14.gyr
index.user14.gyr<-1
for(i in 1:length(user14))
{
  if (length(user14[[i]]$gyro)>0)
  {
    for(j in 1:length(user14[[i]]$gyro))
    {
      
      if (user14[[i]]$viewName=="answerButton1")
      {
        user14.Gyroscope[index.user14.gyr,1]<-"answerButton1"
      }
      
      else if (user14[[i]]$viewName=="checkAnswerButton")
      {
        user14.Gyroscope[index.user14.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user14[[i]]$viewName=="nextQuestionButton")
      {
        user14.Gyroscope[index.user14.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user14[[i]]$viewName=="answerButton2")
      {
        user14.Gyroscope[index.user14.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user14.Gyroscope[index.user14.gyr,2]<-i
      user14.Gyroscope[index.user14.gyr,3]<-user14[[i]]$gyro[[j]]$t
      user14.Gyroscope[index.user14.gyr,4]<-user14[[i]]$gyro[[j]]$accuracy
      user14.Gyroscope[index.user14.gyr,5]<-user14[[i]]$gyro[[j]]$x
      user14.Gyroscope[index.user14.gyr,6]<-user14[[i]]$gyro[[j]]$y
      user14.Gyroscope[index.user14.gyr,7]<-user14[[i]]$gyro[[j]]$z
      user14.Gyroscope[index.user14.gyr,8]<-"user14"
      index.user14.gyr<-index.user14.gyr+1
      
    }
  }
}

##user15 data
user15.touch<-data.frame(array(NA,dim=list(length(user15)*4,10)))
user15.accemeter<-data.frame(array(NA,dim=list(length(user15)*8,8)))
user15.Gyroscope<-data.frame(array(NA,dim=list(length(user15)*6,8)))
##user15.touch 
index.user15.touch<-1
for(i in 1:length(user15))
{
  if (length(user15[[i]]$touch)>0)
  {
    
    for(j in 1:length(user15[[i]]$touch))
    {
      
      if (user15[[i]]$viewName=="answerButton1")
      {
        user15.touch[index.user15.touch,1]<-"answerButton1"
      }
      
      else if (user15[[i]]$viewName=="checkAnswerButton")
      {
        user15.touch[index.user15.touch,1]<-"checkAnswerButton"
      }
      
      else if (user15[[i]]$viewName=="nextQuestionButton")
      {
        user15.touch[index.user15.touch,1]<-"nextQuestionButton"
      }
      
      else if (user15[[i]]$viewName=="answerButton2")
      {
        user15.touch[index.user15.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user15.touch[index.user15.touch,2]<-i
      user15.touch[index.user15.touch,3]<-user15[[i]]$touch[[j]]$x
      user15.touch[index.user15.touch,4]<-user15[[i]]$touch[[j]]$y
      user15.touch[index.user15.touch,5]<-user15[[i]]$touch[[j]]$pressure
      user15.touch[index.user15.touch,6]<-user15[[i]]$touch[[j]]$size
      user15.touch[index.user15.touch,7]<-user15[[i]]$touch[[j]]$minorAxis
      user15.touch[index.user15.touch,8]<-user15[[i]]$touch[[j]]$majorAxis
      user15.touch[index.user15.touch,9]<-user15[[i]]$touch[[j]]$t
      user15.touch[index.user15.touch,10]<-"user15"
      index.user15.touch<-index.user15.touch+1
    }
  }
}

##user15.accemeter
index.user15.accemeter<-1
for(i in 1:length(user15))
{
  if (length(user15[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user15[[i]]$linear_accel))
    {
      
      if (user15[[i]]$viewName=="answerButton1")
      {
        user15.accemeter[index.user15.accemeter,1]<-"answerButton1"
      }
      
      else if (user15[[i]]$viewName=="checkAnswerButton")
      {
        user15.accemeter[index.user15.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user15[[i]]$viewName=="nextQuestionButton")
      {
        user15.accemeter[index.user15.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user15[[i]]$viewName=="answerButton2")
      {
        user15.accemeter[index.user15.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user15.accemeter[index.user15.accemeter,2]<-i
      user15.accemeter[index.user15.accemeter,3]<-user15[[i]]$linear_accel[[j]]$t
      user15.accemeter[index.user15.accemeter,4]<-user15[[i]]$linear_accel[[j]]$accuracy
      user15.accemeter[index.user15.accemeter,5]<-user15[[i]]$linear_accel[[j]]$x
      user15.accemeter[index.user15.accemeter,6]<-user15[[i]]$linear_accel[[j]]$y
      user15.accemeter[index.user15.accemeter,7]<-user15[[i]]$linear_accel[[j]]$z
      user15.accemeter[index.user15.accemeter,8]<-"user15"
      index.user15.accemeter<-index.user15.accemeter+1
      
    }
  }
}

##user15.gyr
index.user15.gyr<-1
for(i in 1:length(user15))
{
  if (length(user15[[i]]$gyro)>0)
  {
    for(j in 1:length(user15[[i]]$gyro))
    {
      
      if (user15[[i]]$viewName=="answerButton1")
      {
        user15.Gyroscope[index.user15.gyr,1]<-"answerButton1"
      }
      
      else if (user15[[i]]$viewName=="checkAnswerButton")
      {
        user15.Gyroscope[index.user15.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user15[[i]]$viewName=="nextQuestionButton")
      {
        user15.Gyroscope[index.user15.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user15[[i]]$viewName=="answerButton2")
      {
        user15.Gyroscope[index.user15.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user15.Gyroscope[index.user15.gyr,2]<-i
      user15.Gyroscope[index.user15.gyr,3]<-user15[[i]]$gyro[[j]]$t
      user15.Gyroscope[index.user15.gyr,4]<-user15[[i]]$gyro[[j]]$accuracy
      user15.Gyroscope[index.user15.gyr,5]<-user15[[i]]$gyro[[j]]$x
      user15.Gyroscope[index.user15.gyr,6]<-user15[[i]]$gyro[[j]]$y
      user15.Gyroscope[index.user15.gyr,7]<-user15[[i]]$gyro[[j]]$z
      user15.Gyroscope[index.user15.gyr,8]<-"user15"
      index.user15.gyr<-index.user15.gyr+1
      
    }
  }
}

##user16 data
user16.touch<-data.frame(array(NA,dim=list(length(user16)*4,10)))
user16.accemeter<-data.frame(array(NA,dim=list(length(user16)*8,8)))
user16.Gyroscope<-data.frame(array(NA,dim=list(length(user16)*6,8)))
##user16.touch 
index.user16.touch<-1
for(i in 1:length(user16))
{
  if (length(user16[[i]]$touch)>0)
  {
    
    for(j in 1:length(user16[[i]]$touch))
    {
      
      if (user16[[i]]$viewName=="answerButton1")
      {
        user16.touch[index.user16.touch,1]<-"answerButton1"
      }
      
      else if (user16[[i]]$viewName=="checkAnswerButton")
      {
        user16.touch[index.user16.touch,1]<-"checkAnswerButton"
      }
      
      else if (user16[[i]]$viewName=="nextQuestionButton")
      {
        user16.touch[index.user16.touch,1]<-"nextQuestionButton"
      }
      
      else if (user16[[i]]$viewName=="answerButton2")
      {
        user16.touch[index.user16.touch,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user16.touch[index.user16.touch,2]<-i
      user16.touch[index.user16.touch,3]<-user16[[i]]$touch[[j]]$x
      user16.touch[index.user16.touch,4]<-user16[[i]]$touch[[j]]$y
      user16.touch[index.user16.touch,5]<-user16[[i]]$touch[[j]]$pressure
      user16.touch[index.user16.touch,6]<-user16[[i]]$touch[[j]]$size
      user16.touch[index.user16.touch,7]<-user16[[i]]$touch[[j]]$minorAxis
      user16.touch[index.user16.touch,8]<-user16[[i]]$touch[[j]]$majorAxis
      user16.touch[index.user16.touch,9]<-user16[[i]]$touch[[j]]$t
      user16.touch[index.user16.touch,10]<-"user16"
      index.user16.touch<-index.user16.touch+1
    }
  }
}

##user16.accemeter
index.user16.accemeter<-1
for(i in 1:length(user16))
{
  if (length(user16[[i]]$linear_accel)>0)
  {
    for(j in 1:length(user16[[i]]$linear_accel))
    {
      
      if (user16[[i]]$viewName=="answerButton1")
      {
        user16.accemeter[index.user16.accemeter,1]<-"answerButton1"
      }
      
      else if (user16[[i]]$viewName=="checkAnswerButton")
      {
        user16.accemeter[index.user16.accemeter,1]<-"checkAnswerButton"
      }
      
      else if (user16[[i]]$viewName=="nextQuestionButton")
      {
        user16.accemeter[index.user16.accemeter,1]<-"nextQuestionButton"
      }
      
      else if (user16[[i]]$viewName=="answerButton2")
      {
        user16.accemeter[index.user16.accemeter,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user16.accemeter[index.user16.accemeter,2]<-i
      user16.accemeter[index.user16.accemeter,3]<-user16[[i]]$linear_accel[[j]]$t
      user16.accemeter[index.user16.accemeter,4]<-user16[[i]]$linear_accel[[j]]$accuracy
      user16.accemeter[index.user16.accemeter,5]<-user16[[i]]$linear_accel[[j]]$x
      user16.accemeter[index.user16.accemeter,6]<-user16[[i]]$linear_accel[[j]]$y
      user16.accemeter[index.user16.accemeter,7]<-user16[[i]]$linear_accel[[j]]$z
      user16.accemeter[index.user16.accemeter,8]<-"user16"
      index.user16.accemeter<-index.user16.accemeter+1
      
    }
  }
}

##user16.gyr
index.user16.gyr<-1
for(i in 1:length(user16))
{
  if (length(user16[[i]]$gyro)>0)
  {
    for(j in 1:length(user16[[i]]$gyro))
    {
      
      if (user16[[i]]$viewName=="answerButton1")
      {
        user16.Gyroscope[index.user16.gyr,1]<-"answerButton1"
      }
      
      else if (user16[[i]]$viewName=="checkAnswerButton")
      {
        user16.Gyroscope[index.user16.gyr,1]<-"checkAnswerButton"
      }
      
      else if (user16[[i]]$viewName=="nextQuestionButton")
      {
        user16.Gyroscope[index.user16.gyr,1]<-"nextQuestionButton"
      }
      
      else if (user16[[i]]$viewName=="answerButton2")
      {
        user16.Gyroscope[index.user16.gyr,1]<-"answerButton2"
      }
      else
      {
        print("error")
      }
      
      user16.Gyroscope[index.user16.gyr,2]<-i
      user16.Gyroscope[index.user16.gyr,3]<-user16[[i]]$gyro[[j]]$t
      user16.Gyroscope[index.user16.gyr,4]<-user16[[i]]$gyro[[j]]$accuracy
      user16.Gyroscope[index.user16.gyr,5]<-user16[[i]]$gyro[[j]]$x
      user16.Gyroscope[index.user16.gyr,6]<-user16[[i]]$gyro[[j]]$y
      user16.Gyroscope[index.user16.gyr,7]<-user16[[i]]$gyro[[j]]$z
      user16.Gyroscope[index.user16.gyr,8]<-"user16"
      index.user16.gyr<-index.user16.gyr+1
      
    }
  }
}


# combine users data into one file

Touch.Users<-rbind(user1.touch,user2.touch,user3.touch,user4.touch,user5.touch,user6.touch,user7.touch,user8.touch,user9.touch,user10.touch,user11.touch,user12.touch,user13.touch,user14.touch,user15.touch,user16.touch)
colnames(Touch.Users)<-c("ButtonNames","Index","x","y","Pressure","Size","MinorAxis","MajorAxis","t","UserName")

Accemeter.Users<-rbind(user1.accemeter,user2.accemeter,user3.accemeter,user4.accemeter,user5.accemeter,user6.accemeter,user7.accemeter,user8.accemeter,user9.accemeter,user10.accemeter,user11.accemeter,user12.accemeter,user13.accemeter,user14.accemeter,user15.accemeter,user16.accemeter)
colnames(Accemeter.Users)<-c("ButtonNames","Index","t","Accuracy","x","y","z","Username")

Gyr.Users<-rbind(user1.Gyroscope,user2.Gyroscope,user3.Gyroscope,user4.Gyroscope,user5.Gyroscope,user6.Gyroscope,user7.Gyroscope,user8.Gyroscope,user9.Gyroscope,user10.Gyroscope,user11.Gyroscope,user12.Gyroscope,user13.Gyroscope,user14.Gyroscope,user15.Gyroscope,user16.Gyroscope)
colnames(Gyr.Users)<-c("ButtonNames","Index","t","Accuracy","x","y","z","Username")


write.csv(Touch.Users,file = "DataScientist/Touch.csv",row.names = FALSE)
write.csv(Accemeter.Users,file = "DataScientist/Accemeter.csv",row.names = FALSE)
write.csv(Gyr.Users,file = "DataScientist/Gyr.csv",row.names = FALSE)







