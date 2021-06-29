
#---- Priors for  Initial Bayesian Analysis "Confirmatory"

prior_m0 <- prior(normal(0, 1), class = "Intercept")

prior_m1 <- c(prior(normal(0,1), class = 'Intercept'),
              prior(normal(0.0754, 0.0559), class = 'b', coef = "Spite_z"),
              prior(normal(0.151, 0.0723), class = b, coef = "Spite_z:ContentSexual"))

prior_m2 <- c(prior(normal(0,1), class = 'Intercept'),
              prior(normal(0.0754, 0.0559), class = 'b', coef = "Spite_z"),
              prior(normal(0.151, 0.0723), class = b, coef = "Spite_z:ContentSexual"))

prior_m3 <- c(prior(normal(0,1), class = 'Intercept'),
              prior(normal(0.0754, 0.0559), class = 'b', coef = "Spite_z"),
              prior(normal(0.151, 0.0723), class = b, coef = "Spite_z:ContentSexual"))

prior_m4 <- c(prior(normal(0,1), class = 'Intercept'),
              prior(normal(0.0754, 0.0559), class = 'b', coef = "Spite_z"),
              prior(normal(0.151, 0.0723), class = b, coef = "Spite_z:ContentSexual"))


#---- Priors for DoPL motives predicting endorsement of risky behavior, in addition to spitefulness

prior_dm0 <- c(prior(normal(0, 1), class = "Intercept"))

prior_dm1 <- c(prior(normal(0, 1), class = "Intercept"),
               prior(normal(-0.015, 0.9821), class = "b", coef = "Dominance_z:Gender"),
               prior(normal(0.046, 0.977), class = "b", coef = "Gender:Leadership_z"), 
               prior(normal(0.053, 0.986), class = "b", coef = "Gender:Prestige_z"),
               prior(normal(3.000, 0.986), class = "b", coef = "Dominance_z"),
               prior(normal(-1.913, 0.978), class = "b", coef = "Leadership_z"),
               prior(normal(0.0884, 0.977), class = "b", coef = "Prestige_z"))

prior_dm2 <- c(prior(normal(0, 1), class = "Intercept"),
               prior(normal(-0.015, 0.9821), class = "b", coef = "Dominance_z:Gender"),
               prior(normal(0.046, 0.977), class = "b", coef = "Gender:Leadership_z"), 
               prior(normal(0.053, 0.986), class = "b", coef = "Gender:Prestige_z"),
               prior(normal(3.000, 0.986), class = "b", coef = "Dominance_z"),
               prior(normal(-1.913, 0.978), class = "b", coef = "Leadership_z"),
               prior(normal(0.0884, 0.977), class = "b", coef = "Prestige_z"))

prior_dm4 <- c(prior(normal(0, 1), class = "Intercept"),
               prior(normal(-0.015, 0.9821), class = "b", coef = "Dominance_z:Gender"),
               prior(normal(0.046, 0.977), class = "b", coef = "Gender:Leadership_z"), 
               prior(normal(0.053, 0.986), class = "b", coef = "Gender:Prestige_z"),
               prior(normal(3.000, 0.986), class = "b", coef = "Dominance_z"),
               prior(normal(-1.913, 0.978), class = "b", coef = "Leadership_z"),
               prior(normal(0.0884, 0.977), class = "b", coef = "Prestige_z"))

prior_dm5 <- c(prior(normal(0, 1), class = "Intercept"),
               #---- Sexual Content
               prior(normal(0, 1), class = "b", coef = "ContentSexual"),
               prior(normal(0, 1), class = "b", coef = "ContentSexual:Gender:Leadership_z"),
               prior(normal(0, 1), class = "b", coef = "ContentSexual:Leadership_z"),
               prior(normal(0, 1), class = "b", coef = "ContentSexual:Prestige_z"),
               #---- Dominance
               prior(normal(1, 1), class = "b", coef = "Dominance_z:ContentSexual"),
               prior(normal(-0.015, 0.982), class = "b", coef = "Dominance_z:Gender"),
               prior(normal(0, 1), class = "b", coef = "Dominance_z:Realism_z"),
               #---- Spitefulness
               prior(normal(0.0754, 0.0559), class = "b", coef = "Spite_z"),
               prior(normal(0.046, 0.977), class = "b", coef = "Gender:Leadership_z"),
               prior(normal(0.053, 0.986), class = "b", coef = "Gender:Prestige_z"))




