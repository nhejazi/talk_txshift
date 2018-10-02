# Talk: Causal Inference and Variable Importance with Stochastic Interventions

---

### Abstract

Perhaps too often, work in statistical causal inference focuses on the effect of
deterministic interventions, under which, for each unit, the magnitude of the
treatment is set to a fixed value. Under violations of the assumption of
positivity, the evaluation of such interventions faces a host of problems, among
them non-identification and inefficiency. Prior work has proposed a flexible
solution: stochastic shift interventions, under which, in the simplest case, for
each unit, the treatment is set to be an additive shift of the observed value of
the treatment. What's more, in real-life applications, data analyses are often
further complicated by pragmatic sub-sampling schemes, the effects of which
cannot safely be ignored when drawing statistical inferences. Building on much
previous work, we present a novel approach for such settings --- an augmented
targeted maximum likelihood estimator for interventions that shift observed
values of the treatment, with consistency and efficiency guarantees even in the
presence of multi-stage sampling, and we show that this estimator enjoys these
essential theoretical properties by way of a form of multiple robustness
inherited from its constituent parts. After providing a general characterization
of shift interventions, we illustrate the utility of employing our proposed
nonparametric estimator via simulation studies, showing that it attains fast
convergence rates even when incorporating machine learning estimators; moreover,
we introduce a recent software implementation (the "txshift" R package) and
apply this methodology in an investigation of the effects of immune response
biomarkers on HIV vaccine efficacy, contrasting our proposed approach with
several classical techniques. Specifically, we show that our proposed method
obtains efficient inference on a parameter defined as the overall risk of HIV
infection in the vaccine arm of an efficacy trial, under various posited shifts
of the distribution of an immune response biomarker away from its observed
distribution in the efficacy trial. Our proposed technique provides a highly
interpretable variable importance measure for ranking multiple immune responses
based on their utility as immunogenicity study endpoints in future HIV-1 vaccine
trials that evaluate putatively improved versions of the vaccine.

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

