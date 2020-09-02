pollutantmean<-function(directory,pollutant,id=1:332){
  fileslist<-list.files(path=directory,pattern=".csv",full.names=TRUE)
  values=numeric()
  for(i in id)
  {
    data<-read.csv(fileslist[i])
    values<-c(values,data[[pollutant]])
  }
  round(mean(values,na.rm=TRUE),3)
}