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

egie3 <- prices  %>%
  filter(symbol == "EGIE3.SA")

goll4 <- prices  %>%
  filter(symbol == "GOLL4.SA")

prio3 <- prices  %>%
  filter(symbol == "PRIO3.SA")

ggbr4 <- prices  %>%
  filter(symbol == "GGBR4.SA")

mglu3 <- prices  %>%
  filter(symbol == "MGLU3.SA")

mean_egie3 <- mean(egie3$close, na.rm = TRUE)
median_egie3 <- median(egie3$close, na.rm = TRUE)

min_egie3 <- min(egie3$close)

mean_goll4 <- mean(goll4$close, na.rm = TRUE)
median_goll4 <- median(goll4$close, na.rm = TRUE)
max_goll4 <- max(goll4$close)
min_goll4 <- min(goll4$close)

mean_prio3 <- mean(prio3$close, na.rm = TRUE)
median_prio3 <- median(prio3$close, na.rm = TRUE)
max_prio3 <- max(prio3$close)
min_prio3 <- min(prio3$close)

mean_ggbr4 <- mean(ggbr4$close, na.rm = TRUE)
median_ggbr4 <- median(ggbr4$close, na.rm = TRUE)
max_ggbr4 <- max(ggbr4$close)
min_ggbr4 <- min(ggbr4$close)

mean_mglu3 <- mean(mglu3$close, na.rm = TRUE)
median_mglu3 <- median(mglu3$close, na.rm = TRUE)
max_mglu3 <- max(mglu3$close)
min_mglu3 <- min(mglu3$close)

Índices <- c('Media', 'Mediana', 'Valor máximo', 'Valor mínimo')
EGIE3 <- c(mean_egie3, median_egie3, max_egie3, min_egie3)
GOLL4 <- c(mean_goll4, median_goll4, max_goll4, min_goll4)
PRIO3 <- c(mean_prio3, median_prio3, max_prio3, min_prio3)
GGBR4 <- c(mean_ggbr4, median_ggbr4, max_ggbr4, min_ggbr4)
MGLU3 <- c(mean_mglu3, median_mglu3, max_mglu3, min_mglu3)


sell_day_egie3 <- egie3[which.max(egie3$close),]
buy_day_egie3 <- egie3[which.min(egie3$close),]
View(buy_day_egie3$date)
View(sell_day_egie3$date)

sell_day_mglu3 <- mglu3[which.max(mglu3$close),]
buy_day_mglu3 <- mglu3[which.min(mglu3$close),]
View(buy_day_mglu3$date)
View(sell_day_mglu3$date)

sell_day_goll4 <- goll4[which.max(goll4$close),]
buy_day_goll4 <- goll4[which.min(goll4$close),]
View(buy_day_goll4$date)
View(sell_day_goll4$date)

sell_day_prio3 <- prio3[which.max(prio3$close),]
buy_day_prio3 <- prio3[which.min(prio3$close),]
View(buy_day_prio3$date)
View(sell_day_prio3$date)

sell_day_ggbr4 <- ggbr4[which.max(ggbr4$close),]
buy_day_ggbr4 <- ggbr4[which.min(ggbr4$close),]
View(buy_day_ggbr4$date)
View(sell_day_ggbr4$date)

acoes <- c("egie3", "mglu3", "goll4", "prio3", "ggbr4")

venda <- list(egie3[which.max(egie3$close),], mglu3[which.max(mglu3$close),], goll4[which.max(goll4$close),], prio3[which.max(prio3$close),],  ggbr4[which.max(ggbr4$close),])
compra <- list(egie3[which.min(egie3$close),], mglu3[which.min(mglu3$close),], goll4[which.min(goll4$close),], prio3[which.min(prio3$close),],  ggbr4[which.min(ggbr4$close),])
