# Load libraries
install.packages("tidyverse")
library("ggplot2")
library("dplyr")

data_2021 <- read.csv("/Users/daniel/Downloads/archive/2021.csv")

only_score <- data_2021 %>% select(Country.name,Ladder.score)

best_10 <- head(only_score, 10)

ggplot(best_10, aes(x=reorder(Country.name, -Ladder.score), y=Ladder.score)) + 
  geom_bar(stat = "identity", fill="steelblue") +
  labs(x = "Country Name", y = "Ladder Score") +
  geom_text(aes(label = Ladder.score), vjust = -0.5) +
  ggtitle("The top 10 happiest countries in 2021")
