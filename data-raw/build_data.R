
# Read then save data
pals <- read.csv("data-raw/bitpals.csv", as.is=T) %>%
  filter(!is.na(order))

# Build data
usethis::use_data(pals, overwrite=T, internal=T)
