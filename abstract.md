---
documentclass: scrartcl
title: "Characterizing immune correlates of protection in vaccine efficacy trials with stochastic-interventional effects"
subtitle: "Longitudinal Causal Mediation, European Causal Inference Meeting"
author: "[Nima Hejazi](https://nimahejazi.org), Harvard T.H. Chan School of Public Health"
date: "20 April 2023"
geometry: "left=2.5cm,right=2.5cm,top=3.2cm,bottom=3.2cm"
output: pdf_document
---

In clinical trials randomizing participants to active vs. control conditions and
following units until the occurrence of a primary clinical endpoint, evaluating
the efficacy of a quantitative treatment (e.g., drug dosage) is often difficult.
Stochastic-interventional effects, which measure the causal effect of perturbing
the treatment's observed value, provide an interpretable solution; yet, their
use in vaccine trials requires care, for such trials measure immunologic
biomarkers -- useful for understanding the mechanisms by which vaccines confer
protection or as surrogate endpoints -- via outcome-dependent two-phase sampling
(e.g., case-cohort) designs. These biased sampling designs have earned their
popularity: they circumvent the economic burden of measuring biomarkers on all
study units without limiting opportunities to detect mechanistically informative
biomarkers. We discuss a semiparametric biased sam pling correction allowing for
asymptotically efficient inference on a causal vaccine efficacy measure, defined
by contrasting assignments of study units to active vs. control while also
shifting observed biomarker expression in the active condition, yielding
a causal dose-response analysis informative of next-generation vaccine efficacy
and of transporting efficacy from an index strain of a pathogen (e.g.,
SARS-CoV-2 D614G) to variants of concern (e.g., Omicron BA.5). We present the
results of applying this approach in the COVE efficacy trial of Moderna's
mRNA-1273 COVID-19 vaccine.
