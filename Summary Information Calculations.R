
WHR_2021 <- read.csv("./WHR_2021.csv")

#Average ladder score
avg_ladder <- round(mean(WHR_2021$Ladder.score), 2)

#Highest country for freedom of decision 
highest_freedom <- WHR_2021 %>% filter(Freedom.to.make.life.choices == max(Explained.by..Freedom.to.make.life.choices)) %>% pull(Country.name)

#Average life expectancy 
avg_life_expectancy <- round(mean(WHR_2021$Healthy.life.expectancy), 2)

#Number of countries 
num_countries <- nrow(WHR_2021)

#Number of regions
num_regions <- length(unique(WHR_2021$Regional.indicator))

#Average GTP 
avg_GTP <- round(mean(WHR_2021$Logged.GDP.per.capita), 2)


summary_info <- list()
summary_info$avg_ladder <- avg_ladder
summary_info$highest_freedom <- highest_freedom
summary_info$avg_life_expectancy <- avg_life_expectancy
summary_info$num_countries <- num_countries
summary_info$num_regions <- num_regions 
summary_info$avg_GTP <- avg_GTP
