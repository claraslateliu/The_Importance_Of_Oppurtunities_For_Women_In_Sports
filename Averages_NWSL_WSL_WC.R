#Calculating Averages for NWSL, WSL and World Cup 

install.packages("data.table")
library(data.table)


install.packages("dplyr")

library(dplyr)
  
  # Install and load the necessary package
  install.packages("dplyr")
  library(dplyr)
  
  # Create the data frame
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
  
  # Calculate the average attendance for each World Cup year
  result <- world_cup_data %>%
    group_by(Season) %>%
    summarise(Average_Attendance = sum(Total) / sum(Games))
  
  # Print the result
  print(result)
  
  