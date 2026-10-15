result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.25, size = 1) +
  scale_color_brewer(palette = "Set2") +
  scale_y_log10(labels = scales::label_dollar()) +
  labs(
    title = "A Diamond's Price",
    subtitle = "Price rises with carat, with variation across cut grades",
    x = "Carat",
    y = "Price (log scale)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    legend.position = "bottom",
    plot.title = element_text(face = "bold")
  )

ggsave("diamonds-1.png", diamonds_plot, width = 10, height = 7, dpi = 300, bg = "white")
