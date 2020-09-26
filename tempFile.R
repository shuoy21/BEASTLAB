
file_names = list.files(path = "/Users/Guest/Desktop/labWork/Condition3",pattern = "*.csv",full.names = TRUE)
files_condition3 = lapply(file_names, read.csv)

##in Condition 3, change emotional errelevant files answer to SAME for 4th & 10th trial

#can't use trial number because there are multiple trial numbers ?why TODO
View(files_condition3[[1]][which(temp$trialnumber == 10),])

#check neutral condition
#unique(unlist(lapply(files_condition3, function(file){file$er_prefix})))

trial_4 = "img/NeutralDifferent4.jpg"


#change different to same
for (i in 1:length(files_condition3)) {
  temp = files_condition3[[i]]
  files_condition3[[i]]$correct_answer[temp$ImageFile == trial_4] = "Same"
  files_condition3[[i]]$ImageFile[temp$ImageFile == trial_4] = "img/NeutralSame4.jpg"
}

# 10th trial

trial_10 = "img/NeutralDifferent10.jpg"

for (i in 1:length(files_condition3)) {
  temp = files_condition3[[i]]
  files_condition3[[i]]$correct_answer[temp$ImageFile == trial_10] = "Same"
  files_condition3[[i]]$ImageFile[temp$ImageFile == trial_10] = "img/NeutralSame10.jpg"
}

#change image 4,8,13 of all conditions to be SAME

file_names = list.files(path = "/Users/Guest/Desktop/labWork/Condition1",pattern = "*.csv",full.names = TRUE)
files_condition1 = lapply(file_names, read.csv)



