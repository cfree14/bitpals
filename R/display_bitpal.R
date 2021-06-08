
#' Display Bit's color palettes
#'
#' Display Bit's color palettes.
#'
#' @example
#' display_bitpals()
#' @export
display_bitpals <- function(){

  # Expand pals
  pals_exp <- pals %>%
    complete(theme, order, fill=list(color="white", hex_code="#FFFFFF")) %>%
    arrange(theme, order)

  # Dunkin
  cols_draw <- pals_exp %>% filter(theme=="dunkin") %>% pull(hex_code)
  g1 <- ggplot(pals_exp %>% filter(theme=="dunkin"), mapping=aes(y=theme, x=order, fill=as.character(order))) +
    geom_raster() +
    labs(x="", y="") +
    scale_x_continuous(breaks=1:7) +
    scale_fill_manual(values=cols_draw) +
    theme_bw() +
    theme(legend.position = "none")
  g1

  # Seinfeld
  cols_draw <- pals_exp %>% filter(theme=="seinfeld") %>% pull(hex_code)
  g2 <- ggplot(pals_exp %>% filter(theme=="seinfeld"), mapping=aes(y=theme, x=order, fill=as.character(order))) +
    geom_raster() +
    labs(x="", y="") +
    scale_x_continuous(breaks=1:7) +
    scale_fill_manual(values=cols_draw) +
    theme_bw() +
    theme(legend.position = "none")
  g2

  # Monopoly
  cols_draw <- pals_exp %>% filter(theme=="monopoly") %>% pull(hex_code)
  g3 <- ggplot(pals_exp %>% filter(theme=="monopoly"), mapping=aes(y=theme, x=order, fill=as.character(order))) +
    geom_raster() +
    labs(x="", y="") +
    scale_x_continuous(breaks=1:7) +
    scale_fill_manual(values=cols_draw) +
    theme_bw() +
    theme(legend.position = "none")
  g3

  # Merge
  g <- gridExtra::grid.arrange(g1, g2, g3, ncol=1)
  print(g)

}
