install.packages("ggplot2")
library(ggplot2)

Item <- c("Item A", "Item B", "Item C", "Item D")
Valor <- c(234, 432, 531, 133)
Quantidade <- c(33, 23, 11, 52)

Tabela <- data.frame(Item, Valor, Quantidade)

View(Tabela)

g2 <- ggplot(Tabela, aes(x = Quantidade, y = Valor, colour = Item))+
  geom_point()

g3 <- ggplot(Tabela, aes(x = Quantidade, y = Valor, shape = Item))+
  geom_point()

g4 <- ggplot(Tabela, aes(x = Quantidade, y = Valor))+
  geom_point()+
  facet_grid(~Item)

g5 <- ggplot(Tabela, aes(x = Quantidade, y = Valor))+
  geom_point()+
  facet_wrap(~Item)

g6 <- ggplot(Tabela, aes(x = Quantidade, y = Valor))+
  geom_point()+
  facet_wrap(~Item)+
  theme_dark()

g7 <- ggplot(Tabela, aes(x = Quantidade, y = Valor))+
  geom_point()+
  theme(panel.grid = element_blank(),
        panel.spacing = unit(100, "cm"),
        axis.text = element_text(size = 2, colour = "black"),
        axis.ticks.length = unit(.2, "cm"),
        panel.border = element_rect(colour = "red", fill = NA, size = 0.5 ))+
  labs(x = "Quantidade_Ajustada", y = "Valor_Ajustado")+
  geom_smooth(method = "lm", se = F)
  
g8 <- ggplot(Tabela, aes(x = Item, y = Quantidade))+
  geom_bar(stat = "summary",
           fun = mean,
           position = "dodge")

g9 <- ggplot(Tabela, aes(x = Item, y = Quantidade, group = 1))+
  geom_line(color = "green", size = 3)+
  geom_point(color = "black", size = 3)+
  ggtitle("Gráfico de teste")








