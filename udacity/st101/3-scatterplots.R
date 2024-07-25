library(tidyverse)

# 3. scatterplots

data <- tibble(size= c(1700, 2100, 1900, 1300, 1600, 2200), 
       price = c(51000,63000,57000,39000,48000,66000)) 

data %>%
  ggplot(aes(size, price)) +
  geom_point()

# is there a fixed prize pr square foot
data <- tibble(size= c(1700, 2100, 1900, 1300, 1600, 2200), 
               price = c(53000,65000,59000,41000,50000,68000)) 

data %>% mutate(pr_sqf = price/size)
lm(price~size, data = data)

# Make your own 2
data %>% 
  ggplot(aes(size, price)) +
  geom_point()

# find the constant
lm(price~size, data = data)

# is it linear
data <- tibble(size= c(1700, 2100, 1900, 1300, 1600, 2200), 
               price = c(53000,44000,59000,82000,50000,68000)) 
data %>% 
  ggplot(aes(size, price)) +
  geom_point()


