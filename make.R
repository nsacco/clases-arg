# Set working directory to the Project Directory.

if (!require(here)) {install.packages("here", dependencies = T)}; library(here)
here::here()

if (!require(usethis)) {install.packages("usethis", dependencies = T)}; library(usethis)

usethis::use_blank_slate()

if (!require(pacman)) {install.packages("pacman", dependencies = T)}; library(pacman)

# Load / Install Required Packages
p_load(tidyverse, bookdown, foreign, devtools, ggplot2, flextable, devtools, grDevices)

