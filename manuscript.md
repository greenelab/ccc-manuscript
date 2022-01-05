---
title: A machine learning-based dependence coefficient for gene expression analysis
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2022-01-05'
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
  <meta name="dc.date" content="2022-01-05" />
  <meta name="citation_publication_date" content="2022-01-05" />
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
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/abe8f12222610137395e475c39405d569c88077e/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/abe8f12222610137395e475c39405d569c88077e/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/abe8f12222610137395e475c39405d569c88077e/manuscript.pdf" />
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
([permalink](https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/abe8f12222610137395e475c39405d569c88077e/))
was automatically generated
from [greenelab/clustermatch-gene-expr-manuscript@abe8f12](https://github.com/greenelab/clustermatch-gene-expr-manuscript/tree/abe8f12222610137395e475c39405d569c88077e)
on January 5, 2022.
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


### Clustermatch detects linear and nonlinear patterns in human transcriptomic data

![
**Distribution of coefficient values on gene expression (GTEx v8, whole blood).**
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)**/**d)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/dist-main.svg "Distribution of coefficient values"){#fig:dist_coefs width="100%"}


We used gene expression data from GTEx v8 and selected the top five tissues with more sample size: muscle (skeletal), whole blood, skin (sun exposed), adipose (subcutaneous) and artery (tibial).
For each of these tissues, we selected the top 5,000 genes with largest variance, and then computed the pairwise correlation matrix using Pearson, Spearman and Clustermatch.
In Figure @fig:dist_coefs a, we show how the pairwise correlation values distribute in whole blood, where Clustermatch (mean=0.14, median=0.08, sd=0.15) has a much more skewed distribution than Pearson (mean=0.31, median=0.24, sd=0.24) and especially Spearman (mean=0.39, median=0.37, sd=0.26).
Each coefficient reaches 70% of gene pairs at $c=0.18$, $r=0.44$ and $r_s=0.56$ (Figure @fig:dist_coefs b, respectively.
When we directly compare each coefficient with each other, the agreement between Clustermatch and Spearman is higher than any of these with Pearson (Figures @fig:dist_coefs c and d).


![
**Intersection of gene pairs with high and low coefficient values (GTEx v8, whole blood).**
**a)** UpSet plot with six categories (rows) with the highest and lowest 30% correlation values.
Columns show different intersections of categories grouped by agreements and disagreements.
**b)** Hexagonal binning plots with examples of gene pairs where Clustermatch ($c$) disagrees with Pearson ($r$) and Spearman ($r_s$).
A logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/upsetplot-main.svg "Intersection of gene pairs"){#fig:upsetplot_coefs width="100%"}


A closer inspection of gene pairs detected and missed by these coefficients revealed the ability of Clustermatch to capture more complex yet biologically meaningful patterns.
For this, we analyzed the agreements and disagreements by obtaining for each coefficient the top 30% of gene pairs with the largest correlation values (a "high" set) and the bottom 30% ("low"), resulting in six potentially overlapping categories.
An UpSet plot [@doi:10.1109/TVCG.2014.2346248] is shown in Figure @fig:upsetplot_coefs a, where the intersections of these six categories allowed to precisely identify the gene expression patterns captured and missed by each coefficient.
The three coefficients agree more on gene pairs with a high correlation value (42.1%) than on those with no relationship (34.3%).
The figure also confirms that Clustermatch and Spearman agree more on highly correlated pairs (4.0% in "high", and 7.0% in "low") than any of these with Pearson (all between 0.3%-3.5% for "high", and 2.8%-5.5% for "low").
Regarding disagreements, there are thousands of gene pairs with a high Clustermatch value that are not detected by the other coefficients.
There are also gene pairs with a high Pearson value that have either low Clustermatch (1,075) or low Clustermatch and low Spearman values (531).
However, these cases mostly seem to be driven by outliers (Figure @fig:upsetplot_coefs b).
No gene pairs highly ranked by Spearman are missed by Clustermatch.


In Figure @fig:upsetplot_coefs b, we show individual examples of gene pairs where Clustermatch disagrees with Pearson, Spearman or both.
Genes *UTY* (chromosome Y) and *KDM6A* (chromosome X), which are paralogs, show a nonlinear relationship with a subset of samples (males) following a strong linear pattern, and another subset (females) having a constant expression of one gene (*UTY* is zero in this case, as expected).
This combination of linear and constant patterns is captured by Clustermatch ($c=0.29$) but not by Pearson and Spearman ($r=0.24$, $r_s=0.10$).
Clustermatch also correctly identifies this gene pair pattern in all other tissues in GTEx with the exception of female-specific organs (Supplementary Figures @fig:gtex_tissues:kdm6a_uty).
Another composite relationship is present for genes *RASSF2* (20p13) and *CYTIP* (2q24.1) which show two clear linear patterns.
These two genes are strongly expressed in white blood cells, both in myeloid and lymphoid lineages, and using tissue-specific gene networks from GIANT [@pmcid:PMC4828725] we found strong evidence of interactions in these cell types (Supplementary Figure @fig:inter:rassf2_cytip).

<!--
SDS / IFNG:
    https://hb.flatironinstitute.org/gene/10993+3458
    expressed in leukocyte, blood, lymphocyte, spleen
    serine seems to be essential for T cell expansion: https://www.cell.com/cell-metabolism/pdfExtended/S1550-4131(16)30644-1

JUN / APOC1:
    https://hb.flatironinstitute.org/gene/3725+341
    both expressed in blood, liver, leukocyte
    both seem to be very related to the regulation of immune response

BAG3 / NRADDP:
    maybe remove this because NRADDP is pseudo gene
        and it is not present in GIANT

UTY / KDM6A:
    these are from chr Y and X
    easy explanation

RASSF2 / CYTIP:
    https://hb.flatironinstitute.org/gene/9770+9595
    both expressed in peripheral blood (super strong), leukocyte (super strong), blood, etc etc (super strong)

AC068... / KLHL21:
    maybe remove? I can't fine AC068... gene

the other two gene pairs detected by Pearson do not interact much in GIANT
 -->


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
](images/intro/clustermatch_algorithm.svg "Clustermatch algorithm"){width="75%"}

## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


## Acknowledgements


## Supplementary material

![
**Predicted interactions between *RASSF2* and *CYTIP* in white blood cells (leukocytes).**
Nodes represent genes and edges are the probability that the gene pair is part of the same biological process in leukocytes.
This analysis can be performed online using HumanBase [@url:https://hb.flatironinstitute.org/gene/9770+9595].
](images/coefs_comp/gtex_whole_blood/GIANT-CYTIP_vs_RASSF2-leukocyte.png "Interaction between RASSF2 and CYTIP"){#fig:inter:rassf2_cytip width="60%"}


![
**Scatter plots of genes *KDM6A* and *UTY* across different GTEx tissues.**
](images/coefs_comp/gtex-KDM6A_vs_UTY.svg "KDM6A and UTY across different GTEx tissues"){#fig:gtex_tissues:kdm6a_uty width="95%"}
