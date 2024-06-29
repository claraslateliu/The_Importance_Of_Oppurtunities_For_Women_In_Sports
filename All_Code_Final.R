#All Code For Project (Subset, Averages, Line Graphs, Bar Graph)

####################

#Subsetting Data From Attendance Data Set for NWSL, WSL and WorldCup 

#Loading Packages
library(tidyverse)

#Dataset
attendanceDataset <- read.csv("AttendanceDataset.csv")

#Subsetting Data NWSL 
onlyNWSL <- filter(AttendanceDataset, League == "NWSL")


#Subsetting Data WSL 
onlyWSL <- filter(AttendanceDataset, League == "WSL")


#Subsetting World Cup 
onlyWorldCup <- filter(AttendanceDataset, League == "World Cup")


####################


#Calculating Average Attendance for WorldCup

install.packages("dplyr")
library(dplyr)

onlyWorldCup <- data.frame(
  Season = c(2023, 2023, 2023, 2023, 2023, 2023, 2023, 2023, 2023, 2023, 
             2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2019, 2015, 
             2015, 2015, 2015, 2015, 2015, 2015, 2015, 2011, 2011, 2011, 
             2011, 2011, 2011, 2011, 2011, 2011),
  Total = c(378920, 355115, 342422, 225037, 159422, 
            231082, 85280, 65757, 75690, 59549, 
            159864, 247799, 122981, 132570, 122300, 
            104278, 79166, 93609, 68745, 104517, 
            194632, 218090, 274032, 21562, 163393, 
            106567, 41882, 73680, 178927, 98621, 
            96876, 94302, 86871, 81567, 81301, 52583),
  Games = c(5, 8, 9, 6, 6, 
            9, 5, 5, 6, 5, 
            3, 7, 6, 7, 7, 
            6, 5, 6, 5, 2, 
            7, 8, 11, 1, 8, 
            8, 7, 1, 4, 3, 
            4, 4, 4, 4, 4, 4)
)

result <- world_cup_data %>%
  group_by(Season) %>%
  summarise(Average_Attendance = sum(Total) / sum(Games))

print(result)

#Results 
Season Average_Attendance
<dbl>              <dbl>
1   2011             26398.
2   2015             21628.
3   2019             21756 
4   2023             30911.



#Calculating Average Attendance for NWSL













######################

#Creating Visuals: Line Graph WSL Average Attendance every second year 2011-2024

#Loading Packages 
library(ggplot2)

WSLdata <- data.frame(
  season = c("2011-2012", "2013-2014", "2017-2018", "2019-2020", "2021-2022", "2023-2024"),
  av_att = c(239, 671, 722, 3066, 1589, 6988)
)

ggplot(WSLdata, aes(x = season, y= av_att)) + 
  geom_line(aes(group = 1), color = "navy") +
  geom_point()+
  labs(
    title = "WSL Average Game Attendance",
    subtitle = "Seasons 2011-2024",
    x = "Season",
    y = "Average Attendance"
  )+
  theme_light()


#Creating Visuals" Line Graph NWSL Average Attendance 2013-2024 
NWSLdata <- data.frame(
  season =c("2013", "2014","2015","2016","2017","2018","2019","2021","2022","2023","2024"),
  av_att =c(2971, 2760, 5095, 5590, 5083, 6024, 7386, 4008, 6984, 10392, 11089)
)

ggplot(NWSLdata, aes(x = season, y = av_att)) +
  geom_line(aes(group = 1), colour = "navy") +
  geom_point()+
  labs(
    title = "NWSL Average Game Attendance",
    subtitle = "Seasons 2013-2024",
    x = "Season",
    y = "Average Attendance"
  ) +
  theme_light()


####################

#Creating Visuals" Bar Graph for WorldCup

#Loading Packages 
library(ggplot2)
library(tidyverse)

WorldCupData <- data.frame(
  year = c("2011", "2015", "2019", "2023"),
  av_att = c(26398, 21628, 21756, 30911)
)

ggplot(WorldCupData, aes(x = year, y = av_att)) +
  geom_bar(stat = "identity", fill= "navy") +
  geom_text(aes(label= av_att), vjust = -0.5, color = "black", size = 3.3) +
  labs(
    title = "Women's World Cup Average Attendance",
    x = "Year",
    y = "Average Attendance"
  ) +
  theme_light()






