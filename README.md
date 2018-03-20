## Talk: _Robust Nonparametric Inference for Stochastic Interventions Under Censoring_

> Materials for a presentation given at a session of the Biostatistics seminar
> series, in the Spring 2018 semester, at the University of California, Berkeley

---

### Abstract

Quite often, analytic techniques from statistical causal inference consider
deterministic interventions, in which, for each unit, the value of the treatment
is set to a fixed value. Under violations of the assumption of positivity, the
evaluation of such interventions faces a host of problems, including
non-identification and inefficiency. Prior work has proposed a flexible solution
--- stochastic shift interventions, under which, in the simplest case, for each
unit, a value of the treatment is set as an additive shift of the observed
treatment value. What's more, in real-life applications, data analyses are often
further complicated by aberrations in the structure of the available data such
as censoring, which severely limits the inferential conclusions that can be
extracted from the data. Building on much previous work, we present a novel
approach for such settings: an augmented targeted maximum likelihood estimator
for interventions that shift observed values of the treatment, with consistency
and efficiency guarantees even in the presence of censoring, and we show that
this estimator enjoys these essential theoretical properties by way of a form of
multiple robustness inherited from its constituent parts. After providing a
general characterization of shift interventions and a related causal parameter,
we explore the effects of censoring on estimators in these settings and present
this augmented targeted nonparametric estimator, which attains fast convergence
rates even when incorporating flexible machine learning estimators. To conclude,
we introduce a recent software implementation --- the "txshift" R package ---
and apply these methods to obtain efficient inference on a parameter defined as
the overall risk of HIV infection in the vaccine arm of an efficacy trial, under
different posited shifts of the distribution of an immune response biomarker
away from its observed distribution in the efficacy trial. This provides a
variable importance measure (VIM) for ranking multiple immune response
biomarkers, where the same shift in distribution for each biomarker is posited,
and the VIM for a given biomarker is the estimated vaccine efficacy resulting
from the shift. This VIM provides a highly interpretable way to rank immune
responses for their utility as immunogenicity study endpoints in future HIV-1
vaccine trials that evaluate putatively improved versions of a given vaccine.

This is joint work with [David C. Benkeser
(Emory)](https://www.benkeserstatistics.com/),
[Mark J. van der Laan (UC Berkeley)](https://www.stat.berkeley.edu/~laan),
[Peter B. Gilbert
(FHCRC)](https://www.fredhutch.org/en/labs/profiles/gilbert-peter.html), and
[Holly Janes
(FHCRC)](https://www.fredhutch.org/en/labs/profiles/janes-holly.html).

---

### Resources
* Slides are available [here](https://goo.gl/LAoDUJ) (for presentation only).

* Slides with notes are available [here](https://goo.gl/Vq6v5o) (printer
   friendly).

* Software: R package `txshift`, available on
    [GitHub](https://github.com/nhejazi/txshift).
    <!-- and [CRAN](https://CRAN.R-project.org/package=txshift). -->

---

## License [![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/) <br/>

To the extent possible under law, [Nima
Hejazi](https://www.stat.berkeley.edu/~nhejazi) has waived all copyright and
related or neighboring rights to &ldquo;[Robust Nonparametric Inference for
Stochastic Interventions Under
Censoring](https://www.stat.berkeley.edu/~nhejazi/present/2018_berkeley_txshift.pdf)&rdquo;.
This work is published from the United States.

