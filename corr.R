corr<-function(directory,threshold=0){
  fileslist<-list.files(path=directory,pattern=".csv",full.names=TRUE)
  values<-numeric()
  for(i in 1:332){
    data<-(read.csv(fileslist[i]))
    dupi<-data[complete.cases(data),]
    if(nrow(dupi)>threshold)
      values<-c(values,cor(dupi$sulfate,dupi$nitrate))
    else 0;
    
  }
  return(values)
}