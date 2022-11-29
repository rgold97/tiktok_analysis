
library(readxl)

tmp <- read_excel("~/Documents/TikTokDaisy/tiktok.xlsx",sheet=2)
View(tmp)

tmp[1,]$`Text of comments`
cur <- unlist(lapply(strsplit(tmp[1,]$`Text of comments`,split="\r\n")[[1]],function(x){
  trimws(substr(x,3,nchar(x)))
}))

cur <- cur[cur!=""]


all <- lapply(1:nrow(tmp), function(i) {
  cur <- tmp[i,]
  out <- unlist(lapply(strsplit(cur$`Text of comments`,split="\r\n")[[1]],function(x){
    trimws(substr(x,3,nchar(x)))
  }))
  out <- out[out!=""]
})

all <- list()
for (i in 1:nrow(tmp)) {
  cur <- tmp[i,]
  out <- strsplit(cur$`Text of comments`,split="\r\n")[[1]]
  out <- out[out!=""]
  all[[i]] <- out 
}
