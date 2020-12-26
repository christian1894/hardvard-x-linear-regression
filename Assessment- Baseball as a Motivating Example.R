library(Lahman)
library(dplyr)
library(ggplot2)
data(Teams)
# We need to know if teams with more At Bats have more
# runs per game
Teams %>% filter(yearID %in% c(1961, 2001)) %>%
  mutate(AB_per_game = AB/G, R_per_game = R/G) %>%
  ggplot(aes(AB_per_game, R_per_game)) + geom_point(alpha = 0.5)

# wins per game vs fielding errors

Teams %>% filter(yearID %in% c(1961, 2001)) %>%
  mutate(Wins_per_game = W/G, Fielding_error_per_game = E/G) %>%
  ggplot(aes(Fielding_error_per_game, Wins_per_game)) + geom_point(alpha = 0.5)

# triples per game vs doubles per game

Teams %>% filter(yearID %in% c(1961, 2001)) %>%
  mutate(triples_per_game = X3B/G, doubles_per_game = X2B/G) %>%
  ggplot(aes(triples_per_game, doubles_per_game)) + geom_point(alpha = 0.5)

