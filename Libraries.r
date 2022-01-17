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

bibfile <- RefManageR::BibEntry(bibtype = "manual",
    title        = "R: A Language and Environment for Statistical
                  Computing",
  key = "rcore2021",
  author       = "{R Core Team}",
  organization = "R Foundation for Statistical Computing",
  address      = "Vienna, Austria",
  year         = "2021",
  url          = "https://www.R-project.org"
)
RefManageR::WriteBib(bibfile, file = 'C:\\Users\\s1932788\\OneDrive\\Documents\\1_UoE\\Research\\PhD\\LiteratureReview\\bibtex\\Library.bib', biblatex = T, append = T, verbose = T)

testingbrms <- brms::VarCorr(scale_corr)
options(scipen = 999, digits = 1)

corr.mod <- summary(scale.corr)

corr.mod <- corr.mod$rescor_pars

corr.mod.df <- as.data.frame(corr.mod)

corr_mod.df[, 3:4]

C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Metacognition.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Moral Judgment-New Moral Judgment.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Moral Judgment.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Personality-Narcissism.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Personality-Spitefulness.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Personality.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Power-Displays of power.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Power.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Risk-taking.bib, C:\Users\s1932788\OneDrive\Documents\1_UoE\Research\PhD\Experiments\Experiment 1\Experiment_2\rmd\references-PhD-Sexual Behavior.bib
