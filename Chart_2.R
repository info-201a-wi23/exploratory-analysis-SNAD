# Required libraries
library(dplyr)
library(plotly)
library(ggplot2)

# Assigning 2021 Variable
WHR_2021 <- read.csv("./WHR_2021.csv")

Life_expectancy_per_region <- data.frame(WHR_2021$Regional.indicator, WHR_2021$Healthy.life.expectancy)

# Making graph

Life_expectancy_per_region_boxplot <- ggplot(data = Life_expectancy_per_region, aes(x = as.character(WHR_2021.Regional.indicator), y = WHR_2021.Healthy.life.expectancy, fill = as.character(WHR_2021.Regional.indicator))) +
                                           geom_boxplot()+
                                           labs( x="Regions", y="Helathy Life expectancy") +
                                           ggtitle("Health Life Expectancy per Region")

#Plotting graph
Life_expectancy_per_region_boxplot
