library(dplyr)

WHR_2021 <- read.csv("WHR_2021.csv")

summary_table <- WHR_2021 %>% group_by(Regional.indicator) %>% summarise(
  total_countries = n(), 
  avg_ladder_score <- round(mean(Ladder.score), 2),
  avg_freedom_score <- round(mean(Freedom.to.make.life.choices), 2),
  avg_gdp_score <- round(mean(Logged.GDP.per.capita), 2), 
  avg_lifespan_score <- round(mean(Healthy.life.expectancy), 2),
)
