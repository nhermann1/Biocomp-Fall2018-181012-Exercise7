setwd("~/Documents/Biocomp/Biocomp-Fall2018-181012-Exercise7/")
rm(list=ls())  #clear variables

#Odd rows of data frame function, pass data frame as argument
dataOdd<-function(a) { #The data frame is the only argument passed
  oddData<-a[seq(1,nrow(a),by=2),] #create sequence of odd numbers and return those rows
  return(oddData)
}
iris<-read.csv("iris.csv")
dataOdd(iris) #iris is the data frame in this case

#Count observations of given species, pass data frame, species
speciesCount<-function(d,s) { #d is the data frame, s is the species
  nrow(d[d$Species==s,]) #subsets the data to the passed species and counts the rows in that subset
}
speciesCount(iris,"setosa") #iris is data frame, setosa is species--must be in quotes to be a string

#Subset data frame greater than given sepal width, pass width to be greater
largeSepals<-function(d,w) { #d is data frame, w is the numeric width
  great<-d[d$Sepal.Width>w,] #subsets the data to what's greater than passed width
  largeSepals<<-data.frame(great) #the subset is then saved in the global environment
}
largeSepals(iris,3.2) #iris is the data frame, 3.2 is the numeric width

#Write csv of species subset
speciesCSV<-function(d,s) { #d is the data frame, s is the species
  oneSpecies<-d[d$Species==s,] #subsets the data to the passed species
  return(write.csv(oneSpecies,file=paste0(s,".csv"))) #write out that subset pasting the .csv to the filename, use paste0 to keep out a space between the strings
}
speciesCSV(iris,"setosa") #iris is the data frame, setosa is the species--must be in quotes to be a string







