library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_violin(alpha = 0.8, color = "white", linewidth = 0.4) +
  geom_boxplot(width = 0.12, fill = "white", alpha = 0.9, outlier.shape = NA) +
  scale_fill_brewer(palette = "Set2", guide = "none") +
  scale_y_log10(labels = scales::label_dollar()) +
  labs(
    title = "The Price of a Cut",
    subtitle = "Diamond prices vary widely within each cut grade",
    x = "Cut grade",
    y = "Price (log scale)"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold"),
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", diamonds_plot, width = 10, height = 7, dpi = 300, bg = "white")
