library(dplyr)
readr::read_csv("packages.csv",
  col_types = "cc",
  col_names = c("Package", "Version")
 ) %>%
  filter(Package != "Package") %>%
  arrange(stringr::str_rank(Package)) %>%
  readr::write_csv("packages-alphabetical.csv", quote = "all")

# library(data.table)
# dat <- read.csv("packages.csv", header = FALSE)
# colnames(dat) <- c("Package", "Version")
# # Remove accidental inclusion of c("Package", "Version") as a row
# dat <- subset(dat, Package != "Package")
# dat <- data.table(dat)
# # data.table setorder() sorts in C-locale
# setorder(dat, Package)
# write.csv(dat, file = "packages-alphabetical.csv", row.names = FALSE)
