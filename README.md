# Talk: Nonparametric Inference on Stochastic Interventions

> Materials for a presentation given at a session of the Biostatistics seminar
> series, in the Spring 2018 semester, at the University of California, Berkeley

---

### Title

_Robust Nonparametric Inference for Stochastic Interventions Under Multi-Stage
Sampling_

### Abstract

Perhaps too often, the primary concern of statistical causal inference is the
effect of deterministic interventions, under which, for each unit, the magnitude
of the treatment is set to a fixed value. Under violations of the assumption of
positivity, the evaluation of such interventions faces a host of problems, among
them non-identification and inefficiency. Prior work has proposed a flexible
solution --- stochastic shift interventions, under which, in the simplest case,
for each unit, the treatment is set to be an additive shift of the observed
treatment value. What's more, in real-life applications, data analyses are often
further complicated by pragmatic sub-sampling schemes, the effects of which
cannot safely be ignored when drawing statistical inferences. Building on much
previous work, we present a novel approach for such settings: an augmented
targeted maximum likelihood estimator for interventions that shift observed
values of the treatment, with consistency and efficiency guarantees even in the
presence of censoring, and we show that this estimator enjoys these essential
theoretical properties by way of a form of multiple robustness inherited from
its constituent parts. After providing a general characterization of shift
interventions, we illustrate the utility of employing our proposed nonparametric
estimator via simulation studies, showing that it attains fast convergence rates
even when incorporating flexible machine learning estimators; moreover, we
introduce a recent software implementation --- the "txshift" R package --- and
apply this methodology in an investigation of the effects of immune response
biomarkers on HIV vaccine efficacy. Specifically, we show that our proposed
technique obtains efficient inference on a parameter defined as the overall risk
of HIV infection in the vaccine arm of an efficacy trial, under various posited
shifts of the distribution of an immune response biomarker away from its
observed distribution in the efficacy trial. This provides a highly
interpretable variable importance measure for ranking multiple immune responses
based on their utility as immunogenicity study endpoints in future HIV-1 vaccine
trials that evaluate putatively improved versions of a given vaccine.

This is joint work with [David C. Benkeser
(Emory)](https://www.benkeserstatistics.com/),
[Mark J. van der Laan (UC Berkeley)](https://www.stat.berkeley.edu/~laan),
[Peter B. Gilbert
(FHCRC)](https://www.fredhutch.org/en/labs/profiles/gilbert-peter.html), and
[Holly E. Janes
(FHCRC)](https://www.fredhutch.org/en/labs/profiles/janes-holly.html).

---

### Resources
* Slides are available [here](https://goo.gl/LAoDUJ) (for presentation only).

* Slides with notes are available [here](https://goo.gl/Vq6v5o) (printer
   friendly).

* Software: R package `txshift`, available [on
    GitHub](https://github.com/nhejazi/txshift).
    <!-- and [CRAN](https://CRAN.R-project.org/package=txshift). -->

---

## License

To the extent possible under law, [Nima
Hejazi](https://www.stat.berkeley.edu/~nhejazi) has waived all copyright and
related or neighboring rights to &ldquo;[Robust Nonparametric Inference for
Stochastic Interventions Under Multi-Stage
Sampling](https://www.stat.berkeley.edu/~nhejazi/present/2018_berkeley_txshift.pdf)&rdquo;.
This work is published from the United States.
<br/>
[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)

