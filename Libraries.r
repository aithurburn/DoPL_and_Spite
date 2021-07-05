library('languageserver')
set.seed(42)
knitr::opts_chunk$set(cache.extra = knitr::rand_seed)
library(DT)
library(ggplot2)
library(ggthemes)
library(tidyverse)
library(papaja)
library(brms)
library(rstan)
library(bayestestR)
library(sjPlot)
library(psych)
library(BayesFactor)
library(bayesplot)
library(kableExtra)


library(ggcorrplot)
library(ggprism)

options(mc.corrs = parallel::detectCores()) # can run chains in parallel with each other
rstan_options(auto_write = TRUE)
options(control = list(adapt_delta = 0.99999))
options(brms.backend = "cmdstanr")

bayesplot::bayesplot_theme_set(theme_apa())
locfunc <- function(data, to){
  which(colnames({{data}})=={{to}})
}

lfunc <- function(dataset, to, from) {
  loc1 <- which(colnames({{dataset}}) == {{to}})
  loc2 <- which(colnames({{dataset}}) == {{from}})
  length({{dataset}}[loc1:loc2])
}
theme_set(theme_apa(base_size = 12))