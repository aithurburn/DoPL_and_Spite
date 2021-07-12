
mutate_at(vars(locfunc(experiment_two_DS, "Spite.1"):locfunc(experiment_two_DS, "Spite.13")), 
~as.numeric(recode(., "Strongly disagree" = 1, "Disagree" = 2, "Neither agree nor disagree" = 3, "Agree" = 4, "Strongly agree" = 5, "Strongly Disagree" = 1, "Somewhat disagree" = 2))) %>%
  mutate_at(vars(locfunc(experiment_two_DS, "Spite.14"):locfunc(experiment_two_DS, "Spite.16")), 
  ~as.numeric(recode(., "Strongly disagree" = 5, "Disagree" = 4, "Neither agree nor disagree" = 3, "Agree" = 2, "Strongly agree" = 1, "Strongly Disagree" = 5)))