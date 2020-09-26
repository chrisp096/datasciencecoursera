complete<-function(directory,id=1:332){
        files_list<-list.files("specdata", full.names=TRUE)
        dat<-data.frame()
        nobs<-numeric()
        for(i in id){
                dat <- rbind(dat, read.csv(files_list[i]))
                nobs<-c(nobs,nrow(na.omit(dat)))
                dat<-dat[0,0]       
                }
        
        cbind(id,nobs)
}
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
