install.packages("tidyquant")
install.packages("dplyr")

library(tidyquant)
library(dplyr)

tickers <- c("GGBR4.SA", "GOLL4.SA", "PRIO3.SA", "EGIE3.SA", "MGLU3.SA" )

start = "2018-01-01"
end = "2022-11-22"

prices <- tq_get(tickers, 
                  from = start,
                  to = end)

View(prices)

teste1 <- prices  %>%  
  filter(symbol == "EGIE3.SA")

teste2 <- prices  %>%  
  filter(symbol == "GOLL4.SA")

teste3 <- prices  %>%  
  filter(symbol == "PRIO3.SA")

teste4 <- prices  %>%  
  filter(symbol == "GGBR4.SA")

teste5 <- prices  %>%  
  filter(symbol == "MGLU3.SA")

Media_EGIE3 <- mean(teste1$close, na.rm = TRUE)
Media_GOLL4 <- mean(teste2$close, na.rm = TRUE)
Media_PRIO3 <- mean(teste3$close, na.rm = TRUE)
Media_GGBR4 <- mean(teste4$close, na.rm = TRUE)
Media_MGLU3 <- mean(teste5$close, na.rm = TRUE)

View(Media_EGIE3)
View(Media_GOLL4)
View(Media_PRIO3)
View(Media_GGBR4)
View(Media_MGLU3)

