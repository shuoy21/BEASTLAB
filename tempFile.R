library(plyr)
library(readr)

mydir = "Condition1"
myfiles = list.files(path = mydir, pattern = "*.csv",full.names = TRUE)


for(i in 1:1){
  file_path = file.path(paste("~/Documents/dataCleaning/dataCleaning/", myfiles[i], sep = ""))
  file_name = paste("raw_data", i, sep = "")
  assign(file_name, read.csv(file_path))
}
