---
documentclass: scrartcl
title: "Using stochastic-interventional causal effects to evaluate treatment efficacy in clinical trials"
subtitle: "Applied Biostatistics Seminar, Massachusetts General Hospital"
author: "[Nima Hejazi](https://nimahejazi.org), Harvard T.H. Chan School of Public Health"
date: "01 December 2022"
geometry: "left=2.5cm,right=2.5cm,top=3.2cm,bottom=3.2cm"
output: pdf_document
---

In clinical trials randomizing participants to active vs. control conditions and
following study units until the occurrence of a primary clinical endpoint,
evaluating the efficacy of a quantitative exposure or mediator (e.g., drug
dosage, drug- or vaccine-induced biomarker activity) is challenging. This is
due, in part, to the fact that statistical innovations in causal inference have
historically focused on defining interpretable estimands compatible only with
categorical (or binary) treatments. We will introduce stochastic-interventional
causal effects, which provide a measure of the effect attributable to perturbing
a treatment's natural (i.e., observed or induced) value, focusing primarily on
how these effect definitions provide a scientifically informative solution when
working with quantitative (continuous-valued) intervention variables.
Unfortunately, the estimation of these, and other, estimands in treatment or
vaccine efficacy clinical trials often requires significant additional care, for
such trials measure immunologic biomarkers -- critical to understanding the
mechanisms by which vaccines confer protection or as surrogate endpoints in
future clinical trials -- via outcome-dependent two-phase sampling (e.g.,
case-cohort) designs. These biased sampling designs have earned their
popularity: they circumvent the administrative burden of collecting potentially
expensive biomarker measurements on all study units without limiting
opportunities to detect biomarkers mechanistically informative of the disease or
infection process. To address this, we outline a semiparametric correction
procedure that recovers population-level estimates (in spite of two-phase
sampling of the intervention variable), with guarantees of asymptotically
efficient inference (i.e., minimal variance within a suitable regularity class),
of a causally informed vaccine efficacy measure defined by contrasting
assignments of study units to active vs. control conditions while simultaneously
hypothetically shifting biomarker expression in the active condition. This
results in a _descriptive_ causal dose-response analysis informative of
next-generation vaccine efficacy and useful for bridging vaccine efficacy from
a source pathogen strain (e.g., SARS-CoV-2 at outbreak, i.e., D614G) to
reasonably similar variants of concern (e.g., Delta). We present the results of
applying this approach in an analysis of the joint U.S. Government and COVID-19
Prevention Network’s COVE COVID-19 vaccine efficacy clinical trial of Moderna's
two-dose mRNA-1273 vaccine.
