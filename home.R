#Set Working Directory
setwd("/work2/10023/claraslateliu")

#Get the current working directory 
current_directory <- getwd()

#Print the current working directory 
print(current_directory)

#Read data
attendance_dataset <-read.csv("AttendanceDataset.csv")

#Load Packages
library(tidyverse)
install.packages("ggplot2")
library(ggplot2)

#Subsetting Data By Columns
    #onlyTeamAndTotalData <- select(attendance_dataset, Team, Total)

#Subsetting Data By Rows
    #onlyUSA <- filter(attendance_dataset, Country == "USA")
    #onlyUSAandSpain <- filter(attendance_dataset, Country == "USA"|Country == "Spain")

#Data Visual Example -----------------#
#Data
data1_Audience <- read.csv("AttendanceDataset.csv")

#From all data, just subsetting: Season, Country, and Average 
#subsetting/only pulling Season column, Country column, and Average column
data2_CountrySeasonAndAverage <- select(data1_Audience, Country, Season, Average)

#From just Season, Country, and Average data, subsetting: USA and 2024  
#subsetting/only pulling rows with USA as the Country and 2024 as the Season
data3_NWSL2024AndAverage <- filter(data2_CountrySeasonAndAverage, Country == "USA")

#Calculate 2024 USA Average
data4_NWSL024JustAverageColumn <- select(data3_NWSL2024AndAverage, Average)
#column_avg <- mean(data4_USA2024JustAverageColumn) #not working?

#Data Visual
dataForVis1 <- data.frame(
  season = c("2013", "2014", "2015", "2016", "2017", "2018", "2019", "2021", "2022", "2023", "2024"),
  averageAudience = c(3357, 2617, 4861, 5766, 4624, 6027, 7423, 5719, 8398, 10392, 113025)
)

ggplot(dataForVis1, aes(x = season, y = averageAudience)) +
  geom_bar(stat = "identity") +
  labs(x = "Season", y = "Audience Average", title = "NWSL Soccer \nAverage Audience in Season 2024")

#GraphforWSL
WSLDataVis <- data.frame(
  season = c("2023-2024","2021-2022","2019-2020","2017-2018","2015-2016","2013-2014","2011-2012"),
  averageaudience =c (11367,3405,7460, 776,1028,670,581)
)

ggplot(WSLDataVis, aes(x = season, y = averageaudience)) +
  geom_bar(stat = "identity") +
  labs(x = "Season", y = "Audience Average", title = "WSL Average Attendance By Season")




