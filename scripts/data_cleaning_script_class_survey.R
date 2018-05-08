library(dplyr)
library(tidyr)
#install.packages("chron")
library(chron)

setwd("~/INFO 370/team_tomagotchu_script")
class_survey <- read.csv("dataset/class_survey_clean1.csv")
#str(class_survey)
na.omit(class_survey)
#class_survey[is.na(class_survey)] <- 0.0

# columns to edit:
# - class_survey$wake_time_830: change the format to time
# - class_survey$start_time_n830: change the format to time
# - class_survey$wake_time_n830: change the format to time





# class_survey$wake_time_830
class_survey$wake_time_830 <- as.character(class_survey$wake_time_830)
class_survey$wake_time_830 <- as.POSIXct(class_survey$wake_time_830, format="%H:%M:%S %p")


# class_survey$start_time_n830
class_survey$start_time_n830 <- as.character(class_survey$start_time_n830)
class_survey$start_time_n830 <- as.POSIXct(class_survey$start_time_n830, format="%H:%M:%S %p")


# class_survey$wake_time_n830
class_survey$wake_time_n830 <- as.character(class_survey$wake_time_n830)
class_survey$wake_time_n830 <- as.POSIXct(class_survey$wake_time_n830, format="%H:%M:%S %p")



str(class_survey)


write.csv(class_survey, file = "dataset/class_survey_clean2.csv")
#?strptime
