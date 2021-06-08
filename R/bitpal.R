
#' Get a fun color palette
#'
#' Color palettes based on Dunkin Donuts, Seinfeld, and Monopoly.
#'
#' @param pal Name of the color palette ("dunkin", "seinfeld", or "monopoly")
#' @param n Number of colors to return
#' @return A character vector of hex codes
#' @examples
#' # Retrieve some bitpals
#' bitpal(pal="monopoly", n=7)
#' bitpal(pal="dunkin", n=4)
#' bitpal(pal="seinfeld", n=5)
#' # Use some bitpals
#' data <- data.frame(product=c("Strawberry spinkle donut", "Iced coffee", "Munchkin", "Boston creme"),
#'                    points=c(100, 85, 80, 10))
#' ggplot(data, aes(y=product, x=points, fill=product)) +
#'   geom_bar(stat="identity") +
#'   labs(x="Deliciousness points", y="", title="Tracey's opinion of Dunkin products") +
#'   scale_fill_manual(values=bitpal("dunkin", n=nrow(data)), guide=F) +
#'   theme_bw()
#' @export
bitpal <- function(pal, n) {

  # Get colors
  cols <- pals$hex_code[pals$theme==pal][1:n]

  # N colors available
  n_avail <- length(pals$hex_code[pals$theme==pal])
  if(n>n_avail){warning(paste("Only", n_avail, "colors are available in the", pal, "palette."))}

  # Return colors
  return(cols)

}
