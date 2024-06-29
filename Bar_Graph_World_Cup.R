#Loading Packages 
library(ggplot2)
library(tidyverse)

#Creating Visuals" Bar Graph for WorldCup
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
