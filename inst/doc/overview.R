## ----setup, include = FALSE, cache = FALSE-------------------------------
knitr::opts_chunk$set(error = TRUE)

## ----eval = FALSE--------------------------------------------------------
#  devtools::install_github("wenyixia/gameday")

## ------------------------------------------------------------------------
library(gameday)

## ------------------------------------------------------------------------
gday()

## ------------------------------------------------------------------------
gday("Predators")
gday("Nashville")

## ------------------------------------------------------------------------
#gday("Seattle")

## ------------------------------------------------------------------------
gday("VANCOUVER")
gday("vancouver")

## ------------------------------------------------------------------------
gday("Flames", "2014-11-16")

## ------------------------------------------------------------------------
#gday("Flames", "201-411-116")

## ------------------------------------------------------------------------
scores()

## ------------------------------------------------------------------------
scores("2014-11-19")

## ------------------------------------------------------------------------
#scores("201-411-19")

