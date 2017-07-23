setwd("D:\\RWDir")
dim(iris)
names(iris)
str(iris)
table(iris$Species)
pie(table(iris$Species))
iris_ctree<-ctree(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data=iris)
print(iris_ctree)
plot(iris_ctree)

library(e1071)
library(rpart)
data(Glass,package = "mlbench")
index<-1:nrow(Glass)
testindex<-sample(index,trunc(length(index)/3))
testset<-Glass[testindex,]
trainset<-Glass[-testindex,]
svm.model<-svm(Type~.,data=trainset,cost=100,gamma=1)
svm.pre<- predict(svm.model,testset[,-10])
rpart.model<-rpart(Type~.,data=trainset)

rpart.pre<-predict(rpart.model,testset[,-10],type="class")
table(pre=svm.pre,true=testset[,10])

summary(svm.pre)
