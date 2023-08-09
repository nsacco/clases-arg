# Set working directory to the Project Directory.

if (!require(here)) {install.packages("here", dependencies = T)}; library(here)
here::here()

if (!require(usethis)) {install.packages("usethis", dependencies = T)}; library(usethis)

usethis::use_blank_slate()

if (!require(pacman)) {install.packages("pacman", dependencies = T)}; library(pacman)

devtools::install_github("DiogoFerrari/occupar")

remotes::install_github("wilkelab/cowplot")
install.packages("colorspace", repos = "http://R-Forge.R-project.org")
remotes::install_github("clauswilke/colorblindr")

# Load / Install Required Packages
p_load(tidyverse, bookdown, foreign, devtools, ggplot2, flextable, devtools, grDevices, formatR, rmarkdown, kableExtra, eph, vembedr, modeest, summarytools, extrafont, showtext, jtools, ggthemes, knitr, car, occupar, huxtable, sf, colorblindr)




