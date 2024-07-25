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

data <- tibble(income = c(132754,137192,122177,147121,143000,126010,129200,124312,128132))
data %>% mutate(gruppe = cut(income, c(120000,130000,140000, 150000))) %>% 
  group_by(gruppe) %>% 
  summarise(frekvens = n())

# Histograms 2

data <- tibble(income = c(132754,137192,122177,147121,143000,126010,129200,124312,128132))
data %>% mutate(gruppe = cut(income, c(120000,130000,140000, 150000))) %>% 
  group_by(gruppe) %>% 
  summarise(frekvens = n())

# Age Distribution
data <- tibble(age = c(21,17,9,27,12,39,4,32,12,14,38,9,19,22,21,14,8,3,31,15,33,29))
data %>% 
  group_by(round(age %/% 10)) %>% 
  summarise(antal = n())

# Summary
## Forskellen på barcharts og histograms. 2D vs 1D