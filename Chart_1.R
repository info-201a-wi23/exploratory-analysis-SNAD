#RUN CODE IN THIS ORDER: Lines 4 and 5 -> line 8 -> line 12 -> lines 14-27 -> line 31

# Required libraries
library(dplyr)
library(plotly)

# Assigning 2021 Variable
WHR_2021 <- read.csv("./WHR_2021.csv")

# Making graph
scatter_plot <- function(){
  summarise <- WHR_2021 %>% select(Ladder.score, Freedom.to.make.life.choices)
  plot <- plot_ly(
    data = summarise, x = ~Ladder.score, y = ~Freedom.to.make.life.choices, type = "scatter", name = "Country"
  ) %>% 
    add_trace(
      data = summarise,
      mode = "lines",
      x = ~Ladder.score, 
      y = predict(lm(Freedom.to.make.life.choices ~ Ladder.score, data=summarise)),
      line = list(color = "red"), name = "Trendline"
    ) %>%
      layout(
        title = "Effects of freedom on countries happiness (2021)",
        xaxis = list(title = "Ladder Score"),
        yaxis = list(title= "Freedom to make life choices")
      )
}

#Plotting graph
plot

