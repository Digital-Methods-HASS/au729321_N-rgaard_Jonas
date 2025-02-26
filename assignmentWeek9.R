
rooms <- c(1, 5, 2, 3, 1, NA, 3, 1, 3, 2, NA, 1, 8, 3, 1, 4, NA, 1, 3, 1, 2, 1, 7, 1, NA, 4, 3, 1, 7, 2, 1, NA, 1, 1, 3)

# 1)
q1 <- sum(na.omit(rooms < 2))
  # 13 elements are greater than 2.

# 2)
q2_1 <- typeof(rooms)
q2_2 <- class(rooms)
  # The typeof()-function reveals the data type to be "double".
  # The class()-function returns "numeric"

# 3)
q3_1 <- median(rooms)
q3_2 <- median(na.omit(rooms))
  # Because NA-values are in the rooms vector the median()-function will return 'NA'.
  # If the NA-values are left out the median is 2.

# 4)
download.file(
  "https://raw.githubusercontent.com/datacarpentry/r-socialsci/main/episodes/data/SAFI_clean.csv",
  "data/SAFI_clean.csv",
  mode = "wb"
)

install.packages("tidyverse")
install.packages("here")

library(tidyverse)
library(here)

# a)
interviews <- read_csv(here("data/SAFI_clean.csv"), na = "NULL")

# 5)
kongerækken <- read_csv2(here("data/Kongerækken-csv.csv", na = "NA"))

gns_regtid <- mean(na.omit(kongerækken$`Regerings år i alt`))
  # Den gennemsnitlige regeringstid er 19,96 år.

med_regtid <- median(na.omit(kongerækken$`Regerings år i alt`))
  # Regeringstidens median er 18,5 år.
