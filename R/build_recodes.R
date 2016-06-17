require(dplyr,quietly = T,warn.conflicts = FALSE)

recode39<-read.delim("./misc/recode39.tab",stringsAsFactors = F)

recode39$ICD.10<-gsub("[()]","",recode39$ICD.10)
colnames(recode39)<-tolower(colnames(recode39))

recode39_codes<-data.frame()

invisible(
  mapply(function(index,codes) {
    ranges<-strsplit(codes,split = ",")[[1]]
    starts<-gsub("-.*","",ranges)
    ends<-gsub(".*-","",ranges)
    df<-data.frame(recode=index,start=starts,end=ends)
    recode39_codes<<-rbind(recode39_codes,df)
  }, recode39$recode, recode39$icd.10)
)

recode39_codes<-inner_join(recode39_codes,recode39)
recode39_codes$icd.10<-NULL
recode39_codes$start<-gsub("[*]","",recode39_codes$start)
recode39_codes$end<-gsub("[*]","",recode39_codes$end)

recode39<-recode39_codes[,c("recode","t","sex","age","cause")]
recode39<-unique(recode39)

save(recode39,file="./data/recode39.RData")
save(recode39_codes,file="./data/recode39_codes.RData")




recode113<-read.delim("./misc/recode113.tab",stringsAsFactors = F)

recode113$ICD.10<-gsub("[()]","",recode113$ICD.10)
colnames(recode113)<-tolower(colnames(recode113))

recode113_codes<-data.frame()

invisible(
  mapply(function(index,codes) {
    ranges<-strsplit(codes,split = ",")[[1]]
    starts<-gsub("-.*","",ranges)
    ends<-gsub(".*-","",ranges)
    df<-data.frame(recode=index,start=starts,end=ends)
    recode113_codes<<-rbind(recode113_codes,df)
  }, recode113$recode, recode113$icd.10)
)


recode113_codes<-inner_join(recode113_codes,recode113)
recode113_codes$icd.10<-NULL
recode113_codes$start<-gsub("[*]","",recode113_codes$start)
recode113_codes$end<-gsub("[*]","",recode113_codes$end)

recode113<-recode113_codes[,c("recode","cause")]
recode113<-unique(recode113)

save(recode113,file="./data/recode113.RData")
save(recode113_codes,file="./data/recode113_codes.RData")


