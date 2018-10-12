setwd("~/Documents/Biocomp/Biocomp-Fall2018-181012-Exercise7/")
rm(list=ls())  #clear variables

dataOdd<-function(a) {
  oddData<-a[seq(1,nrow(a),by=2),]
  return(oddData)
}
dataOdd(iris)

iris<-read.csv("iris.csv")


