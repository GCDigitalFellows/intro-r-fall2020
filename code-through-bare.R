##### Load packages and data

# Load the tidyverse
library(tidyverse)
#########

# C1
penguins <- read_csv("data/penguins.csv")
glimpse(penguins)
#########


##### Data Wrangling

# C2
penguins %>% 
  count(species)
#########

# C3
chinstrap <- penguins %>% 
  filter(species == "Chinstrap")
glimpse(chinstrap)
#########

# C4
chinstrap_reduced <- chinstrap %>% 
  select(flipper_length_mm, body_mass_g, sex)
glimpse(chinstrap_reduced)
#########

##### Data visualization

# C5
ggplot(data = chinstrap, aes(x = flipper_length_mm, y = body_mass_g)) 
#########

# C6
ggplot(data = chinstrap, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()
#########

# C7
ggplot(data = chinstrap, aes(x = flipper_length_mm, 
                             y = body_mass_g,
                             color = sex)) +
  geom_point()
#########

# C8
ggplot(data = chinstrap, aes(x = flipper_length_mm, 
                             y = body_mass_g,
                             color = sex)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
#########

# C9
penguins %>% 
  filter(species == "Chinstrap") %>% 
  select(flipper_length_mm, body_mass_g, sex) %>% 
  ggplot(aes(x = flipper_length_mm, 
                             y = body_mass_g,
                             color = sex)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)
##########

# C10
ggplot(data = chinstrap_reduced, aes(x = flipper_length_mm,
                                     y = body_mass_g, 
                                     fill = sex), color = "black") +
  geom_point(shape = 21, size = 4) +
  labs(x = "Flipper length (mm)",
       y = "Body mass (g)",
       color = "Sex",
       title = "Does flipper length predict body mass in Chinstrap penguins?") +
  scale_fill_manual(values = c("#ECCBAE", "#046C9A"), guide = FALSE) +
  geom_smooth(aes(color = sex), method = "lm", se = FALSE) +
  scale_color_manual(values = c("#ECCBAE", "#046C9A"),
                     labels = c("Female", "Male")) +
  theme_bw() +
  theme(axis.title = element_text(size = 14),
        legend.title = element_text(size = 14),
        title = element_text(size = 14),
        legend.text = element_text(size = 10))
###########
