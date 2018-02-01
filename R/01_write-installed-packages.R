## deja vu from yesterday!

library(tidyverse)
library(here)
library(devtools)

## create a data frame of your installed packages

inst_pkg <- installed.packages() %>% as_tibble()
glimpse(inst_pkg)

## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

inst_pkg <- inst_pkg %>%
  select(Package, LibPath, Version, Priority, Built)

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

write_csv(inst_pkg, here("data", "installed-packages.csv"), append = FALSE)

## when this script works, stage & commit it and the csv file
## PUSH!
