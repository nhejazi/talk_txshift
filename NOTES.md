## Outline for 02 April 2018 version

* Scientific question of interest:
  * Assessing vaccine efficacy through shifting of immunity biomarkers
  * Background on the 505 HVTN observational vaccine trial
  * Collaboration with Peter Gilbert and Holly Janes at Fred Hutch
* Background on assessing continuous treatment effects
  * Causal inference with treatment shifting...why?
    * Stochastic treatments as a generalization of dynamic treatments
    * How? Work by vdL and Ivan Diaz on the $\delta$ shift for treatments
    * Alternatives? New work by Edward Kennedy on shifting propensity scores
      * _Nice property: avoids positivity violations._
      * Bring up again as possible future collaboration
  * What happens when causal inference breaks down?
    * Variable importance alternatives: Antoine Chambaz's NPVI parameter
    * Does our formulation hold? Yes!
* Components of the $\delta$ shift treatment parameter:
  * Estimate the treatment mechanism as a density
    * Work by vdL and Diaz on estimating densities nonparametrically via hazards
    * Implementation in the condensier R package by Oleg Sofrygin
    * Important: Only shift the treatment for those observations for which there
        is support in $(A, W)$ -- that is, don't shift if $(A + \delta, W)$ is
        not well represented in the data
        * Violating this rule leads to positivity issues
        * Make the shift a function of $W$ (i.e., $\delta = d(W)$) so we don't
            shift for certain values of $W$
        * Intuition: It is not desirable to shift for certain groups of patients
            (e.g., might be sub-optimal to impose more heart medication on a
            specific sub-group, say, the elderly).
            * _Think of something in the context of the 505 trial_.
  * Interpretation: ...
  * Double robustness property: need only $g$ or $Q$ fit for efficiency
* Censored data: the IPCW-TMLE formulation of vdL and Sherri Rose
  * Censoring sucks -- I'd prefer playing in only the "full data world"
  * Augmenting chosen loss function with IPC weights for an IPCW-TMLE
  * This is a sort of "meta-TMLE" (e.g., C-TMLE, CV-TMLE, etc.) -- you can wrap
    around the TMLE for your favorite parameter
  * Just using IPC weighting results in an _inefficient_ IPCW-TMLE...but, we
      want efficiency too!
  * ...
  * ...
  * Present the extended EIF for the IPCW-TMLE, including the specific version
      for the treatment shift parameter
* ...
* Software plug: sl3 for modern Super Learning, tmle3 connector packages
  * txshift will be the first such connector package
  * check out the tlverse!
* ...
* Future work / extensions:
  * Applications to survival? Something about doing this with hazards
  * Use for assessing variable importance in high-dimensions, including C-TMLE
  * Assessing shifts of multiple treatments simultaneously?
  * Considering shifts of a different variety: extensions to the recent JASA
      paper of Edward Kennedy
  * Intuitive sensitivity analysis by extending Alex Luedtke's proposed approach
      --- simple extension by substituting continuous treatment quantities in
      for analogs for discrete dynamic interventions

