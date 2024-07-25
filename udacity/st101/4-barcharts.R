library(tidyverse)
# checking linearity

data <- tibble(size = c(13,14,16,19,21,23)*100,
               cost = c(88,72,94,86,112,98)*1000)
data %>% ggplot(aes(size,cost)) + geom_point()

# interpolation

mean(c(112,98))*1000

model <- lm(cost~size, data = data)
predict(model, newdata = data.frame(size = 2200))


# Trust
##Nope, nope, nopety-no



# Grouping Data

data %>% 
  filter(size < 1500) %>% 
  summarise(svar = mean(cost))

# Grouping Data 2

data %>% 
  group_by(round(size %/% 500)) %>% 
  summarise(svar = mean(cost))

# Grouping Data 3
data %>% 
  group_by(round(size %/% 500)) %>% 
  summarise(svar = mean(cost))
# Bar charts

# Histograms

# Histograms 2


# Age Distribution

# Summary
