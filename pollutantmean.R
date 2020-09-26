library(tidyverse)
pollutantmean<-function(directory,pollutant,id){
        files_list<-list.files("specdata", full.names=TRUE)
        dat<-data.frame()
        for(i in id){
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        pol<-dat[pollutant]
        mean(pol[!is.na(pol)])
}
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 23)
