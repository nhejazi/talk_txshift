# Talk: _Estimating Stochastic Intervention Effects with Censored Data_

> Materials for a presentation given at a session of the Biostatistics seminar
> series, in the Spring 2018 semester, at the University of California, Berkeley

---

### Abstract

DNA methylation is amongst the best studied of epigenetic mechanisms impacting
gene expression. While much attention has been paid to the proper normalization
of bioinformatical data produced by DNA methylation assays, linear models remain
the current standard for analyzing post-processed methylation data, for the ease
they afford for both statistical inference and scientific interpretation. We
present a new, general statistical algorithm for the model-free estimation of
the differential methylation of DNA CpG sites, complete with straightforward and
interpretable statistical inference for such estimates. The new approach
leverages variable importance measures, a class of parameters arising in causal
inference, in a manner that facilitates their use in obtaining targeted
estimates of the importance of each CpG site. The proposed procedure is
computationally efficient and self-contained, incorporating techniques to
isolate a subset of candidate CpG sites based on cursory evidence of
differential methylation and providing a multiple testing correction that
appropriately controls the False Discovery Rate in such multi-stage analysis
settings. The effectiveness of the new methodology is demonstrated by way of
data analysis with real DNA methylation data, and a recently developed R package
(`methyvim`; available via Bioconductor) that provides support for data analysis
with this methodology is introduced.

### Related
* Slides (for presentation only) are available [here](https://goo.gl/JDhSEg).

* Slides with notes are available [here](https://goo.gl/xabp3Q) (printer
   friendly).

* Software (R package): `methyvim`, available on
    [GitHub](https://github.com/nhejazi/methyvim) and
    [Bioconductor](https://bioconductor.org/packages/methyvim).

---

## License

To the extent possible under law, [Nima Hejazi](https://nimahejazi.org)
has waived all copyright and related or neighboring rights to
&ldquo;[Estimating Stochastic Intervention Effects with Censored
Data](https://www.stat.berkeley.edu/~nhejazi/present/2018_berkeley_txshift.pdf)&rdquo;.
This work is published from the United States.
<br/>
[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png)](http://creativecommons.org/publicdomain/zero/1.0/)

