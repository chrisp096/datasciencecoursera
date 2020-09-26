corr<-function(directory,threshold=0){
        files_list<-list.files("specdata", full.names=TRUE)
        daf<-data.frame()
        corrr<-numeric()
        y<-data.frame()
        x<-data.frame()
        dat<-data.frame()
        dat<-rbind(dat,complete("specdata"))
        y<-dat[dat$nobs>threshold,]$id
        for(i in y){
                daf <- rbind(daf, read.csv(files_list[i]))
                x<-daf[complete.cases(daf),]
                corrr<-c(corrr,cor(x[,2],x[,3]))
                daf<-daf[0,0]
        }
        corrr
        
}
cr <- corr("specdata", 150)
head(cr)