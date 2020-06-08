options(scipen=999)
library(here)
library(tidyverse)
library(data.table)
library(latex2exp)
library(patchwork)
library(ggsci)
library(grid)
library(gridExtra)
source(here("R", "txshift_get-truth.R"))
n_obs <- c(500, 1000, 2500)
truth <- get_truth()

effic_pi_hal <- readRDS(here("data", "txshift-sims",
                             "01-sim_res-eff_tmle-pi_hal.rds"))
effic_pi_glm <- readRDS(here("data", "txshift-sims",
                             "02-sim_res-eff_tmle-pi_glm.rds"))
ineffic_pi_hal <- readRDS(here("data", "txshift-sims",
                               "03-sim_res-ineff_tmle-pi_hal.rds"))
ineffic_pi_glm <- readRDS(here("data", "txshift-sims",
                               "04-sim_res-ineff_tmle-pi_glm.rds"))
estimators <- c("Efficient w/ HAL", "Efficient w/ GLM",
                "Inefficient w/ HAL", "Inefficient w/ GLM")

# (1) compare bias
bias_effic_pi_hal <- lapply(effic_pi_hal, colMeans) %>%
    lapply(., `[[`, "param_est") %>%
    unlist() %>%
    `-` (truth)

bias_effic_pi_glm <- lapply(effic_pi_glm, colMeans) %>%
    lapply(., `[[`, "param_est") %>%
    unlist() %>%
    `-` (truth)

bias_ineffic_pi_hal <- lapply(ineffic_pi_hal, colMeans) %>%
    lapply(., `[[`, "param_est") %>%
    unlist() %>%
    `-` (truth)

bias_ineffic_pi_glm <- lapply(ineffic_pi_glm, colMeans) %>%
    lapply(., `[[`, "param_est") %>%
    unlist() %>%
    `-` (truth)

bias_temp <- as_tibble(rbind(bias_effic_pi_hal, bias_effic_pi_glm,
                             bias_ineffic_pi_hal, bias_ineffic_pi_glm))
bias_vals <- as_tibble(cbind(bias_temp, estimators)) %>%
    gather(estimators) %>%
    select(value)
bias_table <- expand.grid(estimators, n_obs) %>%
    cbind(bias_vals)
colnames(bias_table) <- c("Estimator", "n_obs", "bias")
bias_table <- bias_table %>%
    as_tibble() %>%
    mutate(
      Estimator = as.character(Estimator),
      Estimator = str_replace(Estimator, "Efficient", "Eff."),
      Estimator = str_replace(Estimator, "Inefficient", "Ineff."),
      Estimator = str_remove(Estimator, "w/ ")
    )

p_bias <- ggplot(bias_table,
                 aes(x = as.factor(n_obs), y = bias, group = Estimator)) +
    geom_hline(yintercept = 0, linetype = "dashed", color = "blue",
               size = 2) +
    geom_point(aes(color = Estimator), size = 7) +
    scale_color_lancet() +
    xlab("sample size") +
    ylab("bias") +
    ggtitle("Bias of IPCW-TML Estimators") +
    theme_bw() +
    theme(legend.background = element_rect(fill = "gray90", size = .25,
                                           linetype = "dotted"),
          #legend.title = element_text(colour = "red", size = 25),
          legend.title = element_blank(),
          legend.text = element_text(size = 18),
          legend.position = "bottom",
          text = element_text(size = 22),
          axis.text.x = element_text(colour = 'black', size = 25),
          axis.text.y = element_text(colour = 'black', size = 25))

pdf(here("Figs", "txshift-sims", "bias_plot.pdf"))
p_bias
dev.off()


# (2) compare bias inflated by root-n
n_bias_effic_pi_hal <- bias_effic_pi_hal * sqrt(n_obs)
n_bias_effic_pi_glm <- bias_effic_pi_glm  * sqrt(n_obs)
n_bias_ineffic_pi_hal <- bias_ineffic_pi_hal * sqrt(n_obs)
n_bias_ineffic_pi_glm <- bias_ineffic_pi_glm * sqrt(n_obs)

n_bias_temp <- as_tibble(rbind(n_bias_effic_pi_hal, n_bias_effic_pi_glm,
                               n_bias_ineffic_pi_hal, n_bias_ineffic_pi_glm))
n_bias_vals <- as_tibble(cbind(n_bias_temp, estimators)) %>%
    gather(estimators) %>%
    select(value)
n_bias_table <- expand.grid(estimators, n_obs) %>%
    cbind(n_bias_vals)
colnames(n_bias_table) <- c("Estimator", "n_obs", "bias")
n_bias_table <- n_bias_table %>%
    as_tibble() %>%
    mutate(
      Estimator = as.character(Estimator),
      Estimator = str_replace(Estimator, "Efficient", "Eff."),
      Estimator = str_replace(Estimator, "Inefficient", "Ineff."),
      Estimator = str_remove(Estimator, "w/ ")
    )

p_scaled_bias <- ggplot(n_bias_table,
                        aes(x = as.factor(n_obs), y = bias,
                            group = Estimator)) +
    geom_hline(yintercept = 0, linetype = "dashed", color = "blue",
               size = 2) +
    geom_point(aes(color = Estimator), size = 7) +
    scale_color_lancet() +
    xlab("sample size") +
    ylab(TeX("$\\sqrt{n} \\cdot$ bias")) +
    ggtitle(TeX("$\\sqrt{n}$ Bias of IPCW-TML Estimators")) +
    theme_bw() +
    theme(legend.background = element_rect(fill = "gray90", size = .25,
                                           linetype = "dotted"),
          #legend.title = element_text(colour = "red", size = 16),
          legend.title = element_blank(),
          legend.text = element_text(size = 18),
          legend.position = "bottom",
          text = element_text(size = 22),
          axis.text.x = element_text(colour = 'black', size = 25),
          axis.text.y = element_text(colour = 'black', size = 25))

pdf(here("Figs", "txshift-sims", "bias_scaled_plot.pdf"))
p_scaled_bias
dev.off()


# (3) compare variances for relative efficiency of comparable estimators
var_eff_hal <- lapply(effic_pi_hal, colMeans) %>%
    lapply(., `[[`, "param_var") %>%
    unlist()

var_eff_glm <- lapply(effic_pi_glm, colMeans) %>%
    lapply(., `[[`, "param_var") %>%
    unlist()

var_ineff_hal <- lapply(ineffic_pi_hal, colMeans) %>%
    lapply(., `[[`, "param_var") %>%
    unlist()

var_ineff_glm <- lapply(ineffic_pi_glm, colMeans) %>%
    lapply(., `[[`, "param_var") %>%
    unlist()

(rel_eff_hal <- var_eff_hal / var_ineff_hal)
(rel_eff_glm <- var_eff_glm / var_ineff_glm)
rel_eff_table <- as_tibble(cbind(rel_eff_glm, rel_eff_hal, n_obs)) %>%
    gather(n_obs) %>%
    select(value) %>%
    cbind(., expand.grid(n_obs, c("GLM", "HAL"))) %>%
    as.data.table() %>%
    setnames(., c("Relative Efficiency", "n_obs", "Estimator Type"))

p_rel_eff <- ggplot(rel_eff_table,
                    aes(x = as.factor(n_obs), y = `Relative Efficiency`,
                        group = `Estimator Type`)) +
    geom_hline(yintercept = 1, linetype = "dashed", color = "blue",
               size = 2) +
    geom_point(aes(color = `Estimator Type`), size = 7) +
    scale_color_lancet() +
    xlab("sample size") +
    ylab(TeX(paste("relative efficiency",
                   "$\\left(\\frac{Var_{eff}}{Var_{ineff}}\\right)$"))) +
    ggtitle("Relative Efficiency Comparison") +
    theme_bw() +
    theme(legend.background = element_rect(fill = "gray90", size = .25,
                                           linetype = "dotted"),
          legend.position = "bottom",
          legend.title = element_text(colour = "red", size = 25),
          text = element_text(size = 22),
          axis.text.x = element_text(colour = 'black', size = 25),
          axis.text.y = element_text(colour = 'black', size = 25))

pdf(here("Figs", "txshift-sims", "rel_efficiency_plot.pdf"))
p_rel_eff
dev.off()

