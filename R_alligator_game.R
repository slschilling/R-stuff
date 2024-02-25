if (!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
pacman::p_load(pacman, party, rio, tidyverse)


(dfAli <- import("C:/Users/steph/Dropbox/PC (2)/Desktop/R Programming Exercise Files/data/alligatordata.csv") %>% as_tibble())
g <- dfAli %>% ggplot(aes(gamewin))  # Specify what to graph


g + 
  +   geom_bar(fill = "#1D76B5") +  # Color bars (blue)
  +   coord_flip() +                # Flip coordinates
 +   labs(                         # Add titles & labels
  +     title    = "Alligator Game Losers and Winners", 
    +     subtitle = "Those who beat the game v. those that did not",
    +     caption  = "(Alligator game data)",
    +     y        = "Number of players",
    +     x        = "1 = Winners  0 = Losers")
