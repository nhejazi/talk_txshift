get_truth <- function(n_obs = 1e6,     # sample size
                      w_mean = 3,      # mean of W when Gaussian
                      w_prob = 0.6,    # proportion of W = 1 in group
                      tx_mult = 2,     # multiplier effect of W=1 on treatment
                      delta = 0.5) {
  # baseline covariate -- simple, binary
  W <- cbind(rnorm(n_obs, w_mean, sd = 1), rbinom(n_obs, 1, w_prob),
             rbinom(n_obs, 1, w_prob / 2))

  ## create treatment based on binary baseline W
  A <- rnorm(n_obs, mean = tx_mult * rowSums(W[, -1]), sd = 1)

  # create outcome as a function of A, W + white noise
  Qbar_Aplusdelta_W <- as.numeric(plogis(rowMeans(W) - (A + delta)))
  return(mean(Qbar_Aplusdelta_W))
}
