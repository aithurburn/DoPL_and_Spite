prior_function <- function(modelName) {
  options(scipen = 999)
  bmodFrame <- brms::posterior_samples({{modelName}})
  newFrame <- t(bmodFrame)
  Mean <- data.frame(matrixStats::rowMeans2(matrix(as.numeric(unlist(newFrame)), nrow=nrow(newFrame))))
  colnames(Mean) <- "Mean"
  SD <- data.frame(matrixStats::rowSds(matrix(as.numeric(unlist(newFrame)), nrow=nrow(newFrame))))
  colnames(SD) <- "SD"
  rownames(Mean) <- colnames(brms::posterior_samples({{modelName}}))
  rownames(SD) <- colnames(brms::posterior_samples({{modelName}}))
  df2 <- cbind(Mean, SD)
  df2 <- data.frame(t(df2))
}
9 + 1

