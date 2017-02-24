## ---- message=F, eval = F------------------------------------------------
#  
#  devtools::install_github("robertmyles/tidyrss")
#  

## ---- eval = F-----------------------------------------------------------
#  library(tidyRSS)
#  
#  rss <- tidyfeed("http://andrewgelman.com/feed/")
#  

## ---- eval = F-----------------------------------------------------------
#  library(tidytext)
#  library(dplyr)
#  library(ggplot2)
#  library(lubridate)
#  
#  data("stop_words")
#  
#  rss_t <- rss %>%
#    unnest_tokens(word, item_title) %>%
#    anti_join(stop_words) %>%
#    inner_join(get_sentiments("bing"), by = "word") %>%
#    mutate(week = week(item_date))
#  
#  ggplot(rss_t, aes(x = sentiment)) +
#    geom_bar(aes(fill = sentiment), colour = "black") +
#    theme_classic() +
#    scale_fill_manual(values = c("#616161", "#FFD700"))

