---
documentclass: scrartcl
title: "Using stochastic-interventional causal effects to evaluate treatment efficacy in clinical trials with two-phase designs"
subtitle: "Applied Statistics Seminar, Institute for Quantitative Social Science, Harvard University"
author: "[Nima Hejazi](https://nimahejazi.org)"
date: "05 October 2022"
geometry: "left=2.5cm,right=2.5cm,top=3.2cm,bottom=3.2cm"
output: pdf_document
---

In clinical trials randomizing participants to active vs. control conditions and
following study units until the occurrence of a primary clinical endpoint,
evaluating the efficacy of a quantitative exposure or mediator (e.g., drug
dosage, drug- or vaccine-induced biomarker activity) is challenging. This is
due, in part, to the fact that statistical innovations in causal inference have
historically focused on defining estimands compatible only with categorical (or
binary) variables. We will introduce the stochastic-interventional effects,
which measure the causal effect attributable to perturbing the exposure's
natural (i.e., observed or induced) value, focusing primarily on how these
effect definitions provide an interpretable and scientifically informative
solution. Unfortunately, the estimation of these, and other, estimands in
treatment or vaccine efficacy trials requires significant extra care, for such
trials measure immunologic biomarkers -- useful for understanding the mechanisms
by which vaccines confer protection or as surrogate endpoints in future trials
-- via two-phase sampling (e.g., case-cohort) designs. These biased,
outcome-dependent sampling designs have earned their popularity: they circumvent
the administrative burden of collecting potentially expensive biomarker
measurements on all study units without limiting opportunities to detect
biomarkers mechanistically informative of the disease or infection process. To
address this, we outline a semiparametric correction procedure that recovers,
(under two-phase, outcome-dependent sampling), population-level estimates, with
guarantees of asymptotically efficient inference (minimal variance), of
a causally informed vaccine efficacy measure defined by contrasting assignments
of study units to active vs. control conditions while simultaneously
hypothetically shifting biomarker expression in the active condition. This
results in a causal dose-response analysis informative of next-generation
vaccine efficacy and useful for transporting efficacy from a source pathogen
strain (e.g., SARS-CoV-2 at outbreak, i.e., D614G) to variants of concern (e.g.,
Delta). We present the results of applying this approach in an analysis of the
U.S. Government / COVID-19 Prevention Network’s COVE (Moderna) COVID-19 vaccine
efficacy clinical trial.
