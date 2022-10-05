---
documentclass: scrartcl
title: "Evaluating treatment efficacy in vaccine clinical trials with two-phase designs using stochastic-interventional causal effects"
subtitle: "Applied Statistics Seminar, Institute for Quantitative Social Science, Harvard University"
author: "[Nima Hejazi](https://nimahejazi.org)"
date: "05 October 2022"
geometry: "left=2.5cm,right=2.5cm,top=3.2cm,bottom=3.2cm"
output: pdf_document
---

In clinical trials randomizing participants to active vs. control conditions and
following study units until the occurrence of a primary clinical endpoint,
evaluating the efficacy of a quantitative exposure (e.g., drug dosage,
drug-induced biomarker activity) is often challenging, as statistical
innovations in causal inference have historically focused on estimands
compatible only with binary or categorical exposures. Stochastic-interventional
effects, which measure the causal effect attributable to perturbing the
exposure's natural (i.e., observed) value, provide an interpretable solution.
Unfortunately, their use in vaccine efficacy trials requires extra care, for
such trials measure immunologic biomarkers – useful for understanding the
mechanisms by which vaccines confer protection or as surrogate endpoints in
future trials – via outcome-dependent two-phase sampling (e.g., case-cohort)
designs. These biased, outcome-dependent sampling designs have earned their
popularity: they circumvent the administrative burden of collecting potentially
expensive biomarker measurements on all study units without limiting
opportunities to detect important biomarkers that may be mechanistically
informative of the disease or infection process. We outline a semiparametric
biased sampling correction that allows for asymptotically efficient inference on
a causal vaccine efficacy measure defined by contrasting assignments of study
units to active vs. control while simultaneously hypothetically shifting
biomarker expression in the active condition, yielding a causal dose-response
analysis informative of next-generation vaccine efficacy and useful for
transporting efficacy from a source pathogen strain (e.g., SARS-CoV-2 at
outbreak) to variants of concern (e.g., Omicron BA.4/BA.5). We present the
results of applying this approach in an analysis of the U.S. Government
/ COVID-19 Prevention Network’s COVE (Moderna) COVID-19 vaccine efficacy
clinical trial.
