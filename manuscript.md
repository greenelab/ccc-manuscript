---
title: A machine learning-based dependence coefficient for gene expression analysis
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2021-12-24'
author-meta:
- Milton Pividori
- Marylyn D. Ritchie
- Diego H. Milone
- Casey S. Greene
header-includes: |-
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta name="dc.title" content="A machine learning-based dependence coefficient for gene expression analysis" />
  <meta name="citation_title" content="A machine learning-based dependence coefficient for gene expression analysis" />
  <meta property="og:title" content="A machine learning-based dependence coefficient for gene expression analysis" />
  <meta property="twitter:title" content="A machine learning-based dependence coefficient for gene expression analysis" />
  <meta name="dc.date" content="2021-12-24" />
  <meta name="citation_publication_date" content="2021-12-24" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Milton Pividori" />
  <meta name="citation_author_institution" content="Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA" />
  <meta name="citation_author_orcid" content="0000-0002-3035-4403" />
  <meta name="twitter:creator" content="@miltondp" />
  <meta name="citation_author" content="Marylyn D. Ritchie" />
  <meta name="citation_author_institution" content="Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA" />
  <meta name="citation_author_orcid" content="0000-0002-1208-1720" />
  <meta name="twitter:creator" content="@MarylynRitchie" />
  <meta name="citation_author" content="Diego H. Milone" />
  <meta name="citation_author_institution" content="Research Institute for Signals, Systems and Computational Intelligence (sinc(i)), Universidad Nacional del Litoral, Consejo Nacional de Investigaciones Científicas y Técnicas (CONICET), Santa Fe CP3000, Argentina" />
  <meta name="citation_author_orcid" content="0000-0003-2182-4351" />
  <meta name="twitter:creator" content="@d1001" />
  <meta name="citation_author" content="Casey S. Greene" />
  <meta name="citation_author_institution" content="Center for Health AI, University of Colorado School of Medicine, Aurora, CO 80045, USA" />
  <meta name="citation_author_institution" content="Department of Biochemistry and Molecular Genetics, University of Colorado School of Medicine, Aurora, CO 80045, USA" />
  <meta name="citation_author_orcid" content="0000-0001-8713-9213" />
  <meta name="twitter:creator" content="@GreeneScientist" />
  <link rel="canonical" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/" />
  <meta property="og:url" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/" />
  <meta property="twitter:url" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/" />
  <meta name="citation_fulltext_html_url" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/" />
  <meta name="citation_pdf_url" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/fe500e3e5bb262f939c7fc30936c550c4a0d9df8/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/fe500e3e5bb262f939c7fc30936c550c4a0d9df8/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/fe500e3e5bb262f939c7fc30936c550c4a0d9df8/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...






<small><em>
This manuscript
([permalink](https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/fe500e3e5bb262f939c7fc30936c550c4a0d9df8/))
was automatically generated
from [greenelab/clustermatch-gene-expr-manuscript@fe500e3](https://github.com/greenelab/clustermatch-gene-expr-manuscript/tree/fe500e3e5bb262f939c7fc30936c550c4a0d9df8)
on December 24, 2021.
</em></small>

[
<i class="fas fa-scroll fa-lg"></i> **Draft**<br>
This manuscript version is work-in-progress
]{.banner .lightgrey}

## Authors



+ **Milton Pividori**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-3035-4403](https://orcid.org/0000-0002-3035-4403)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [miltondp](https://github.com/miltondp)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [miltondp](https://twitter.com/miltondp)<br>
  <small>
     Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA
     · Funded by The Gordon and Betty Moore Foundation GBMF 4552; The National Human Genome Research Institute (R01 HG010067)
  </small>

+ **Marylyn D. Ritchie**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-1208-1720](https://orcid.org/0000-0002-1208-1720)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [MarylynRitchie](https://twitter.com/MarylynRitchie)<br>
  <small>
     Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA
  </small>

+ **Diego H. Milone**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-2182-4351](https://orcid.org/0000-0003-2182-4351)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [dmilone](https://github.com/dmilone)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [d1001](https://twitter.com/d1001)<br>
  <small>
     Research Institute for Signals, Systems and Computational Intelligence (sinc(i)), Universidad Nacional del Litoral, Consejo Nacional de Investigaciones Científicas y Técnicas (CONICET), Santa Fe CP3000, Argentina
  </small>

+ **Casey S. Greene**<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0001-8713-9213](https://orcid.org/0000-0001-8713-9213)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [cgreene](https://github.com/cgreene)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [GreeneScientist](https://twitter.com/GreeneScientist)<br>
  <small>
     Center for Health AI, University of Colorado School of Medicine, Aurora, CO 80045, USA; Department of Biochemistry and Molecular Genetics, University of Colorado School of Medicine, Aurora, CO 80045, USA
     · Funded by The Gordon and Betty Moore Foundation (GBMF 4552); The National Human Genome Research Institute (R01 HG010067); The National Cancer Institute (R01 CA237170)
  </small>



## Abstract {.page_break_before}




## Introduction


## Results


### A robust and efficient not-only-linear dependence coefficient

Clustermatch is a dependance coefficient that can compute a similarity measure between any pair of variables, either with numerical or categorical values [@doi:10.1093/bioinformatics/bty899].
The method assumes that if there is a relationship between two variables/features describing $n$ data points/objects, then the clusterings on those $n$ objects derived using each variable individually should match (see Methods).
Although different clustering algorithms can be applied to one-dimensional data [@Jenks1967], we used quantiles to efficiently separate data points into different clusters (i.e., the median separates numerical data into two clusters).
Since in Clustermatch the data is categorized into clusters, numerical and categorical data can be naturally integrated since clusters do not need an order.
Once all internal partitions from each variable are generated, the Clustermatch coefficient is defined as the maximum adjusted Rand index (ARI) [@doi:10.1007/BF01908075] between them.
We previously compared Clustermatch [@doi:10.1093/bioinformatics/bty899] with the Maximal Information Coefficient (MIC) [@doi:10.1126/science.1205438] and Distance Correlation (DC) [@doi:10.1214/009053607000000505], two popular nonlinear correlation coefficients.
In addition to outperforming these two methods in a simulated scenario with different noise levels, Clustermatch was also significantly superior on computational complexity, making it the only practical not-only-linear coefficient for real and large datasets such as gene expression compendia.
Therefore, in this study we will only focus on Clustermatch and two widely used ones: Pearson and Spearman.


![
**Different types of relationships in data.**
Each panel contains a set of simulated data points described by two variables: $x$ and $y$.
The first row shows the Anscombe's quartet with four different datasets (from Anscombe I to IV) with 11 data points each.
The second row contains another set of general patterns with 100 data points each.
Each panel shows the correlation value using the Pearson ($r$), Spearman ($r_s$) and Clustermatch ($c$) coefficients.
Vertical and horizontal lines show how Clustermatch separated data points using $x$ and $y$, respectively.
](images/intro/relationships.svg "Different types of relationships in data"){#fig:datasets_rel width="100%"}


In Figure @fig:datasets_rel, we show how Pearson ($r$), Spearman ($r_s$) and Clustermatch ($c$) behave on different data patterns, where red lines indicate how Clustermatch clusters data points using each feature individually (either $x$ or $y$).
In the first row of the figure, the Anscombe's quartet [@doi:10.1080/00031305.1973.10478966] is shown, which comprises four synthetic datasets with completely different patterns but exactly the same data statistics (mean, standard deviation and Pearson's correlation).
This kind of simulated data, including also the "Datasaurus" [@url:http://www.thefunctionalart.com/2016/08/download-datasaurus-never-trust-summary.html; @doi:10.1145/3025453.3025912; @doi:10.1111/dsji.12233], are frequently used as a reminder of the importance of going beyond simple statistics, where either undesirable patterns (such as outliers) or desirable ones (such as non-linear relationships reflecting real and complex biological relationships) can be masked by these numbers.
For example, Anscomble I seems to show a noisy but clear linear pattern, similar to Anscombe III where the linearity is perfect besides one outlier.
For these two patterns, Clustermatch separates these data points using two clusters (one red line for each variable $x$ and $y$), yielding 1.0, the maximum value, correctly identying the relationship.
Anscombe II seems to follow a quadratic distribution, and this is reflected in the Clustermatch with a lower yet non-zero value of 0.34.
Anscombe IV shows a vertical line where $x$ values are almost contant except for one outlier.
This outlier does not influece Clustermatch as it does for Pearson or Spearman, and thus $c=0.00$ (the minimim value) indicates no association for this variable pair because it does not fit the Clustermatch assumption: the two clusters formed with $x$ (approximately separated by $x=13$) do not match well the three clusters formed with $y$.
The Pearson's correlation coefficient is the same across all these Anscombe's examples ($r=0.82$) whereas Spearman is always above or equal to 0.50.
The reason for this behavior is that these coefficients are based on data statistics such as the mean, standard deviation and, in the case of Spearman, data rankings, and this falls short in dealing with noisy data.


The second row of Figure @fig:datasets_rel shows other simulated relationships with general nonlinear patterns, some of which were previously observed in gene expression data [@doi:10.1126/science.1205438; @doi:10.3389/fgene.2019.01410; @doi:10.1091/mbc.9.12.3273].
For the random/independent pair of variables, all coefficients correctly agree with a value close to zero.
In this case, Clustermatch separates data points into five clusters using $x$ and two using $y$, which do not match thus yielding $c=0.01$.
For the other three examples (quadratic, noncoexistence and two-lines), Pearson and Spearman generally fail to capture a clear pattern between variables $x$ and $y$.
These patterns also show how Clustermatch uses different degrees of complexity to capture the relationships.
For the noncoexistence pattern, where for instance one gene ($x$) might be expressed while the other one ($y$) is inhibited, Clustermatch only needs two clusters for both variables, similarly to a linear relationship (Anscombe I and III).
For the quadratic pattern, Clustermatch separates $x$ into more clusters (four in this case) to reach the maximum ARI.
The two-lines example shows two embedded linear relationships, not detected by either Pearson or Spearman, and for which Clustermatch separates in eight clusters for $x$ and six for $y$.


Datasets such as Anscombe or "Datasaurus" highlight the need of visualization before drawing conclusions on summary statistics alone.
Although extra steps such as visual analyses are always mandatory, larger datasets make it impossible to perform manual assessment on each, for example, gene pair.
More advanced techniques, such as Clustermatch, could reduce the number of false positives/negatives to focus human validation on patterns that are more likely to be real.
Clustermatch has only one parameter: $k_{\mathrm{max}}$, which is 10 by default, is the maximum number of internal clusters that the algorithm will use when partitioning data points using each variable.
As we showed in the examples above, this parameter can control the level of complexity the end-user desires to capture.
A value of $k_{\mathrm{max}}=2$ makes the coefficient more leaned towards linear patterns, whereas higher values can detect other, more complex kinds of relationships.
We found that $k_{\mathrm{max}}=10$ approximates well the coefficient values for different types of patterns [@doi:10.1093/bioinformatics/bty899] while balancing computing time and keeping a close-to-zero value for random data, which is guaranteed by the adjusted-for-chance property of ARI [@Vinh2010].


In the next sections we compare there coefficients on real gene expression data and highlight some complex and potentially interesting relationships.


## Discussion


## Methods

### Clustermatch algorithm

<!-- 
Latex algorithm available in:
https://www.overleaf.com/read/dsyjdrdjqjcp

1. Download PDF from Overleaf
2. pdfcrop clustermatch_algorithm.pdf clustermatch_algorithm.pdf
3. pdf2svg clustermatch_algorithm.pdf clustermatch_algorithm.svg
 -->

![
](images/intro/clustermatch_algorithm.svg "Clustermatch algorithm"){#fig:cm_algor width="75%"}

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


## Acknowledgements


## Supplementary material
