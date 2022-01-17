---
title             : "The psychology of risk and power: Power desires and sexual choices"
shorttitle        : "Risk and Power"

author: 
  - name          : "Ithurburn, Andrew"
    affiliation   : "1"
    corresponding : yes    # Define only one corresponding author
    address       : "7 George Square, Edinburgh, EH8 9JZ"
    email         : "a.ithurburn@sms.ed.ac.uk"
    role:         # Contributorship roles (e.g., CRediT, https://casrai.org/credit/)
      - Conceptualization
      - Writing - Original Draft Preparation
      - Writing - Review & Editing
  - name          : "Moore, Adam"
    affiliation   : "1"
    role:
      - Writing - Review & Editing

affiliation:
  - id            : "1"
    institution   : "The University of Edinburgh"

authornote: |
  University of Edinburgh Department of Psychology

abstract: |
 
  
  <!-- https://tinyurl.com/ybremelq -->
  
keywords          : "keywords"
wordcount         : !expr wordcountaddin::word_count("DoPL and Spite.Rmd")

bibliography      : [C:\\Users\\s1932788\\OneDrive\\Documents\\1_UoE\\Research\\PhD\\Literature Review\\bibtex\\references.bib]

floatsintext      : no
figurelist        : no
tablelist         : no
footnotelist      : no
linenumbers       : yes
mask              : no
draft             : no
mainfont: "Times New Roman" 
always_allow_html: true
header-includes:
  - \raggedbottom
documentclass     : "apa7"
csl               : "apa-cv.csl"
classoption       : "man"
output            : papaja::apa6_pdf
---

```{r setup, include = FALSE}
library("papaja")
r_refs("r-references.bib")
analysisDF <- read.csv("analysisDF.csv")
df_time <- read.csv("Experiment_2_Dataset_clean.csv")
df_time <- df_time[-1:-2,]
library(lubridate) 
average_completion <- mean(as.numeric(df_time$Duration..in.seconds.))
stdv_DF <- sd(as.numeric(df_time$Duration..in.seconds.))

```

```{r analysis-preferences, include = FALSE}
# Seed for random number generation
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
```

# Introduction
Every day individuals make decisions be they mundane such as which cereal to eat in the morning to the more complex of which job should they accept. The consequences for making those decisions can be equally complex. Some decisions are more difficult to quantify and understand while others can be relatively easy like choosing what cereal to eat in the morning. However, some are increasingly more difficult to model. For example, two adult males (or a man and a woman) who are intending to have sex must decide whether or not to have sex with or without a condom. The consequences can have lasting effects depending on what the couple chooses. 
*Issue*

*Spitefulness* 
\TeX this is a test 

*DoPL*

*Dominance*
  The dominance motive is one of the more researched methods and well depicted power motives. Individuals with a dominance orientation display the more primal of human behavior. These individuals will seek power through direct methods such as asserting dominance, control over resources, or physically assaulting someone [@johnson2012; @winter1993]. Early research in dominance motives has shown that acts of dominance ranging from asserting physical dominance over another to physical displays of violence has been shown in many mammalian species, including humans (citation needed).\ 
  Individuals high in dominance are often high in machiavellianism, narcissism, and often are prone to risky behavior (discussion further in the next section). Continued research has hinted at a possible tendency for males to display these dominant seeking traits more than females (citation needed). When high dominance individuals assert themselves they are doing so to increase their own individual sense of power (citation needed). Asserting ones own sense of dominance over another can be a dangerous task. In the animal kingdom it can often leader to injury. While, in humans asserting dominance can take a multitude of actions such as leering behaviors, physical distance, or other non-verbal methods to display dominance (citation needed). Power from a dominance perspective is often never bestowed upon someone. Often, high dominance individuals will take control and hold onto it.

*Prestige*
  Contrary to the dominance motivation of using intimidation and aggression to gain more power, a prestige motivation or prestige in general is bestowed upon an individual from others in the community (citation needed). Differently from the dominance motivation, a prestige motivation is generally unique to the human species (citation needed). Do in part to ancestral human groups being smaller hunter-gatherer societies, individuals that displayed and used important behaviors beneficial to the larger group were often valued and admired by the group. Therein, the social group bestows the authority onto the individual. Generally, this type of behavior can be passively achieved by the prestigious individual. However, this does not remove the intent of the actor in that they too can see prestige from the group, but method of achieving that social status greatly differs from that of dominance seeking individuals.\
  Apart from dominance motivated individuals that continually have to fight for their right to have power over others, individuals that seek or were given power through a prestige motivation are not generally challenged in the same sense as dominant individuals. Displaying behaviors that the community would see as beneficial would indere them into the community making the survival of the community as a whole better (citation needed). Evolutionarily this would increase viability of the prestigious individual and their genes. Similar to the dominance perspective, the prestige perspective overall increases the power and future survivability of the individual. However, due to the natural difference between prestige and dominance, dominance seeking individuals are challenged more often resulting in more danger to their position (citation).\

*Leadership*
Apart from dominance and prestige, leadership raises some interesting questions on deference and why individuals would defer to others in power. Psychologically, leadership is the deference to authority and working together towards a shared common goal [@vanvugt2006]

#	*Methods*
*Participants*: Participants were a convenience sample of 82 (Mage = `r mean(analysisDF$Age)`, SD = `r sd(analysisDF$Age)`) individuals from Prolific Academic crowdsourcing platform (“www.prolific.co”). Requirements for participation were: (1) be 18 years of age or older and (2) and as part of Prolific Academics policy, have a prolific rating of 90 or above. Participants received £4 or £8 an hour as compensation for completing the survey.  The University of Edinburgh’s Research Ethics Committee approved all study procedures (approval reference number: 330-1920/1). 

### *Materials*:
*Demographic Questionnaire*:
Prior to the psychometric scales, participants are asked to share their demographic characteristics (e.g., age, gender, ethnicity, ethnic origin, and educational attainment). 

*Dominance, Prestige, and Leadership Orientation*. 
The 18-item Dominance, Prestige, and Leadership scale [DoPL; @suessenbach2019], is used to measure dominance, prestige, and leadership orientation. Each question corresponds to one of the three domains. Each domain is scored across six unique items related to those domains (e.g., "I relish opportunities in which I can lead others" for leadership) rated on a scale from 0 (Strongly disagree) to 5 (Strongly agree). Internal consistency reliability for the current sample is $

*Spitefulness Scale*. 
The Spitefulness scale [@marcus2014] is a measure with seventeen one sentence vignettes to assess the spitefulness of participants. The original spitefulness scale has 31-items. In the original Marcus and colleagues’ paper, fifteen were removed. For the present study however, 4-items were removed because they did not meet the parameters for the study i.e., needed to be dyadic, more personal. Three reverse scored items from the original thirty-one were added after meeting the requirements. Example questions included, "It might be worth risking my reputation in order to spread gossip about someone I did not like." and,and "Part of me enjoys seeing the people I do not like fail even if their failure hurts me in some way." Items are scored on a 5-point scale ranging from 1 (“Strongly disagree”) to 5 (“Strongly agree”). Higher spitefulness scores represent higher acceptance of spiteful attitudes. 

*Sexuality Self-Esteem Subscale*: 
The Sexuality Self-Esteem subscale (SSES; @snell1989) is a subset of the Sexuality scale that measures the overall self-esteem of participants. Due to the nature of the study, the sexuality subscale was chosen from the overall 30-item scale. The 10-items chosen reflected questions on the sexual esteem of participants on a 5-point scale of +2 (Agree) and -2 (Disagree). For ease of online use the scale was changed to 1 (“Disagree”) and 5 (“Agree”), data analysis will follow the sexuality scale scoring procedure. Example questions are, “I am a good sexual partner,” and “I sometimes have doubts about my sexual competence.” Higher scores indicate a higher acceptance of high self-esteem statements. 

*Sexual Jealousy Subscale*:
The Sexual Jealousy subscale by @worley2014 are 3-items from the 12-item Jealousy scale. The overall jealousy scale measures jealousy in friendships ranging from sexual to companionship. The 3-items are “I would worry about my partner being sexually unfaithful to me.”, “I would suspect there is something going on sexually between my partner and their friend.”, and “I would suspect sexual attraction between my partner and their friend.” The items are scored on a 5-point scale ranging from 1 (“Strongly disagree”) to 5 (“Strongly agree”). Higher scores indicate a tendency to be more sexually jealous. 

*Sexual Relationship Power Scale*: 
The Sexual Relationship Power Scale (SRPS; @pulerwitz2000) is a 23-item scale that measures the overall power distribution in a sexually active relationship. The SRPS is split into the Relationship Control Factor/Subscale (RCF) and the Decision-Making Dominance Factor/Subscale (DMDF). The RCF measures the relationship between the partners on their agreement with statements such as, “If I asked my partner to use a condom, he [they] would get violent.”, and “I feel trapped or stuck in our relationship.” Items from the RCF are scored on a 4-point scale ranging from 1 (“Strongly agree”) to 4 (“Strongly disagree”). Lower scores indicate an imbalance in the relationship where the participant indicates they believe they have less control in the relationship.\
	The DMDF measures the dominance level of sexual and social decisions in the relationship. Example questions include, “Who usually has more say about whether you have sex?”, and “Who usually has more say about when you talk about serious things?” Items on the DMDF are scored on a 3-item scale of 1 (“Your Partner”), 2 (“Both of You Equally”), and 3 (“You”). Higher scores indicate more dominance by the participant in the relationship. 
	
*Scenario Realism Question*: 
Following Worley and Samp in their 2014 paper on using vignettes/scenarios in psychological studies, a question asking the participant how realistic or how much they can visualize the scenario is. The 1-item question is “This type of situation is realistic.” The item is scored on a 5-point scale of the participants agreement with the above statement, 1 (“Strongly agree”) to 5 (“Strongly disagree”). Higher scores indicate disagreement with the statement and reflects the belief that the scenario is not realistic. 

*Spiteful Vignettes*: 
After participants complete the above scales, they are presented with 10-hypothetical vignettes. Each vignette was written to reflect a dyadic or triadic relationship with androgynous names to control for gender. Five vignettes have a sexual component while five are sexually neutral. An example vignette is, 

>“Casey and Cole have been dating for 6 years. A year ago, they both moved into a new flat together just outside of the city. Casey had an affair with Cole's best-friend. Casey had recently found out that they had an STI that they had gotten from Cole's best-friend. Casey and Cole had sex and later Cole found out they had an STI.”

For each vignette, the participant is asked to rate each vignette on how justified they believe the primary individual, Casey in the above, is with their spiteful reaction. Scoring ranges from 1 (“Not justified at all”) to 5 (“Being very justified”). Higher scores overall indicate higher agreement with spiteful behaviors.

### *Procedure*: 
Participants were recruited on Prolific Academic. Participants must be 18-years of age or older, restriction by study design and Prolific Academic’s user policy. The published study is titled, “Moral Choice and Behavior.” The study description follows the participant information sheet including participant compensation. Participants were asked to accept their participation in the study. Participants were then automatically sent to the main survey (Qualtrics, Inc.).\
Once participants accessed the main survey, they were presented with the consent form for which to accept they responded with selecting “Yes.”. Participants were then asked to provide demographic characteristics such as gender, ethnicity, and educational attainment. Participants would then complete in order, the spitefulness scale, the sexual relationship power scale, the sexual jealousy subscale, and sexuality self-esteem subscale. Next, participants were presented ten vignettes where they were instructed to rate on the level of justification for the action carried out in the vignette. After each vignette, participants would rate the realism of the scenario. Upon completion of the survey (median completion time 20 minutes *SD* = 10 Minutes 30 seconds), participants were shown a debriefing message and shown the contact information of the Primary Investigator (Andrew Ithurburn). Participants were then compensated at £8/hr. via Prolific Academic. 

###	 *Data Analysis*: 
Demographic characteristics were analyzed using a one-way analysis for continuous variables (age) and Chi-squares tests for categorical variables (sex, ethnicity, ethnic origin, and educational attainment). Means and standard deviations were calculated for the surveys along with correlational analyses (e.g., spitefulness, SESS, SRPS, SJS). 
Bayesian multilevel models were used to test differences between levels of justifications of vignettes that are either sexually or non-sexually vindictive in behavior. Model 1 

# Results

# Discussion


\newpage

# References

\begingroup
\setlength{\parindent}{-0.5in}
\setlength{\leftskip}{0.5in}

<div id="refs" custom-style="Bibliography"></div>
\endgroup
