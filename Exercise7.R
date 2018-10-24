setwd("~/Documents/Biocomp/Biocomp-Fall2018-181012-Exercise7/")
rm(list=ls())  #clear variables

library(dplyr)

#Odd rows of data frame function, pass data frame as argument
dataOdd<-function(a) {
  oddData<-a[seq(1,nrow(a),by=2),]
  return(oddData)
}
iris<-read.csv("iris.csv")
dataOdd(iris)

#Count observations of given species, pass data frame, species
speciesCount<-function(d,s) {
  nrow(d[d$Species=="s",]) #Can't make this work
}
speciesCount(iris,setosa)

#Subset data frame greater than given sepal width, pass width to be greater
largeSepals<-function(d,w) {
  great<-d[d$Sepal.Width>w,]
  data.frame(great)
}
largeSepals<-largeSepals(iris,3.0) #Is this okay to save it outside the function

#Write csv of species subset
speciesCSV<-function(d) {
  s<-d[d$Species=="setosa",]
  name<-paste0(s$Species,".csv")
  write.csv(s,file=)
}
speciesCSV(iris)









