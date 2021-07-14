demographicQuestions <- c("Age", "Gender", "Ethnicity", "Eth.ori", "Edu")
sjsQuestions <- c("SJS.1", "SJS.2", "SJS.3")
srpsQuestions <- c(
    "SRPS.1", "SRPS.2", "SRPS.3", "SRPS.4", "SRPS.5", "SRPS.6", "SRPS.7",
    "SRPS.8", "SRPS.9", "SRPS.10", "SRPS.11", "SRPS.12", "SRPS.13", "SRPS.14",
    "SRPS.15", "SRPS.17", "SRPS.18", "SRPS.19", "SRPS.20", "SRPS.21", "SRPS.22",
    "SRPS.23", "SRPS.24"
)

srps.rcQuestions <- c(
    "SRPS.1", "SRPS.2", "SRPS.3", "SRPS.4", "SRPS.5", "SRPS.6", "SRPS.7",
    "SRPS.8", "SRPS.9", "SRPS.10", "SRPS.11", "SRPS.12", "SRPS.13", "SRPS.14",
    "SRPS.15"
)

srps.dmQuestions <- c(
    "SRPS.17", "SRPS.18", "SRPS.19", "SRPS.20", "SRPS.21", "SRPS.22", "SRPS.23",
    "SRPS.24"
)

ssesQuestions <- c(
    "SSES.1", "SSES.2", "SSES.3", "SSES.4", "SSES.5", "SSES.6", "SSES.7",
    "SSES.8", "SSES.9", "SSES.10"
)


spiteQuestions <- c(
    "Spite.1", "Spite.2", "Spite.3", "Spite.4", "Spite.5", "Spite.6", "Spite.7",
    "Spite.8", "Spite.9", "Spite.10", "Spite.11", "Spite.12", "Spite.13",
    "Spite.14", "Spite.15", "Spite.16"
)


Vign.Sex <- c("Vign.1", "Vign.2", "Vign.4", "Vign.7", "Vign.10")
Vign.noSex <- c("Vign.3", "Vign.5", "Vign.6", "Vign.8", "Vign.9")
Vign.Overall <- c(
    "Vign.1", "Vign.2", "Vign.4", "Vign.7", "Vign.10", "Vign.3", "Vign.5",
    "Vign.6", "Vign.8", "Vign.9"
)

Real.Sex <- c("Real.1", "Real.2", "Real.4", "Real.7", "Real.10")
Real.noSex <- c("Real.3", "Real.5", "Real.6", "Real.8", "Real.9")
Real.Overall <- c(
    "Real.1", "Real.2", "Real.4", "Real.7", "Real.10", "Real.3", "Real.5",
    "Real.6", "Real.8", "Real.9"
)

doplQuestions <- c(
    "DoPL_1", "DoPL_6", "DoPL_11", "DoPL_13", "DoPL_14", "DoPL_16", "DoPL_5",
    "DoPL_7", "DoPL_8", "DoPL_12", "DoPL_17", "DoPL_18", "DoPL_2", "DoPL_3",
    "DoPL_4", "DoPL_9", "DoPL_10", "DoPL_15"
)

dominanceQuestions <- c("DoPL_2", "DoPL_3", "DoPL_4", "DoPL_9", "DoPL_10", "DoPL_15")
prestigeQuestions <- c("DoPL_5", "DoPL_7", "DoPL_8", "DoPL_12", "DoPL_17", "DoPL_18")
leadershipQuestions <- c("DoPL_1", "DoPL_6", "DoPL_11", "DoPL_13", "DoPL_14", "DoPL_16")

UMSQuestions <- c(
    "UMS_1", "UMS_2", "UMS_3", "UMS_4", "UMS_5", "UMS_6", "UMS_7", "UMS_8",
    "UMS_9", "UMS_11", "UMS_12"
)
UMSIntimacyQuestions <- c("UMS_11", "UMS_12")
UMSAffiliationQuestions <- c(
    "UMS_1", "UMS_2", "UMS_3", "UMS_4", "UMS_5", "UMS_6", "UMS_7", "UMS_8",
    "UMS_9"
)

savedQuestionsBefore <- c(
    "subjectID", "Age", "Duration..in.seconds.", "Gender", "Ethnicity",
    "Eth.ori", "Edu", "DoPLSum", "dominanceSum", "prestigeSum", "leadershipSum",
    "UMSSum", "UMSIntimacySum", "UMSAffiliationSum", "sjsSum", "ssesSum",
    "Spite", "Vign.Sex", "Vign.noSex", "Vign.Ovr.Score", "Real.Sex", "Real.noSex",
    "Real.Ovr.Score", "srps.rc.rescale", "srps.dm.rescale", "srps.sum.rescale",
    "Power", "Vign.1", "Vign.2", "Vign.3", "Vign.4", "Vign.5", "Vign.6",
    "Vign.7", "Vign.8", "Vign.9", "Vign.10", "Real.1", "Real.2", "Real.3",
    "Real.4", "Real.5", "Real.6", "Real.7", "Real.8", "Real.9", "Real.10"
)

savedQuestionsAfter <- c(
    "subjectID", "Age", "Duration..in.seconds.", "Gender", "Ethnicity",
    "Eth.ori", "Edu", "DoPLSum", "dominanceSum", "prestigeSum", "leadershipSum",
    "UMSSum", "UMSIntimacySum", "UMSAffiliationSum", "sjsSum", "ssesSum",
    "Spite", "Vign.Sex", "Vign.noSex", "Vign.Ovr.Score", "Real.Sex", "Real.noSex",
    "Real.Ovr.Score", "srps.rc.rescale", "srps.dm.rescale", "srps.sum.rescale",
    "Content", "Vignette", "Justification", "Realism", "Power"
)
genderresults <- plyr::count(experimenttwoDS$Gender)
genderresults$freq[2]


