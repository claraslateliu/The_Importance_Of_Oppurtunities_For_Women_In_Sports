#Loading Packages 
library(ggplot2)


#Creating Visuals: Line Graph WSL Average Attendnace every second year 2011-2024
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



  
