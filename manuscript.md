---
title: An efficient not-only-linear dependence coefficient based on machine learning
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2022-02-07'
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
  <meta name="dc.title" content="An efficient not-only-linear dependence coefficient based on machine learning" />
  <meta name="citation_title" content="An efficient not-only-linear dependence coefficient based on machine learning" />
  <meta property="og:title" content="An efficient not-only-linear dependence coefficient based on machine learning" />
  <meta property="twitter:title" content="An efficient not-only-linear dependence coefficient based on machine learning" />
  <meta name="dc.date" content="2022-02-07" />
  <meta name="citation_publication_date" content="2022-02-07" />
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
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/83e12ce9c09e4f99010a116aa61f4b0c0843f59f/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/83e12ce9c09e4f99010a116aa61f4b0c0843f59f/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/83e12ce9c09e4f99010a116aa61f4b0c0843f59f/manuscript.pdf" />
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
([permalink](https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/83e12ce9c09e4f99010a116aa61f4b0c0843f59f/))
was automatically generated
from [greenelab/clustermatch-gene-expr-manuscript@83e12ce](https://github.com/greenelab/clustermatch-gene-expr-manuscript/tree/83e12ce9c09e4f99010a116aa61f4b0c0843f59f)
on February 7, 2022.
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

Clustermatch is a dependence coefficient that can compute a similarity measure between any pair of variables, either with numerical or categorical values [@doi:10.1093/bioinformatics/bty899].
The method assumes that if there is a relationship between two variables/features describing $n$ data points/objects, then the clusterings on those $n$ objects derived using each variable individually should match (see Methods).
Although different clustering algorithms can be applied to one-dimensional data [@Jenks1967], we used quantiles to efficiently separate data points into different clusters (i.e., the median separates numerical data into two clusters).
Since in Clustermatch the data is categorized into clusters, numerical and categorical data can be naturally integrated since clusters do not need an order.
Once all clusterings from each variable are generated, the Clustermatch coefficient is defined as the maximum adjusted Rand index (ARI) [@doi:10.1007/BF01908075] between them.
We previously compared Clustermatch [@doi:10.1093/bioinformatics/bty899] with the Maximal Information Coefficient (MIC) [@doi:10.1126/science.1205438] and Distance Correlation (DC) [@doi:10.1214/009053607000000505], two popular nonlinear correlation coefficients.
Clustermatch outperformed these two methods in a simulated scenario with several relationship types (linear and nonlinear) and noise levels.
Clustermatch was also significantly superior in computational complexity, making it the only practical not-only-linear coefficient for real and large datasets such as gene expression compendia.
This study focused on RNA-seq data from GTEx v8 and compared which patterns were detected or missed by these coefficients.


![
**Different types of relationships in data.**
Each panel contains a set of simulated data points described by two variables: $x$ and $y$.
The first row shows Anscombe's quartet with four different datasets (from Anscombe I to IV) and 11 data points each.
The second row contains a set of general patterns with 100 data points each.
Each panel shows the correlation value using the Pearson ($p$), Spearman ($s$) and Clustermatch ($c$) coefficients.
Vertical and horizontal lines show how Clustermatch partitioned data points using $x$ and $y$, respectively.
](images/intro/relationships.svg "Different types of relationships in data"){#fig:datasets_rel width="100%"}


In Figure @fig:datasets_rel, we show how Pearson ($p$), Spearman ($s$) and Clustermatch ($c$) behave on different data patterns, where red lines indicate how Clustermatch clusters data points using each feature individually (either $x$ or $y$).
In the first row of the figure, the classic Anscombe's quartet [@doi:10.1080/00031305.1973.10478966] is shown, which comprises four synthetic datasets with entirely different patterns but the same data statistics (mean, standard deviation and Pearson's correlation).
This kind of simulated data, recently revisited with the "Datasaurus" [@url:http://www.thefunctionalart.com/2016/08/download-datasaurus-never-trust-summary.html; @doi:10.1145/3025453.3025912; @doi:10.1111/dsji.12233], are frequently used as a reminder of the importance of going beyond simple statistics, where either undesirable patterns (such as outliers) or desirable ones (such as nonlinear relationships reflecting real and complex biological relationships) can be masked by summary statistics.
For example, Anscombe I seems to show a noisy but clear linear pattern, similar to Anscombe III where the linearity is perfect besides one outlier.
For these two patterns, Clustermatch separates data points using two clusters (one red line for each variable $x$ and $y$), yielding 1.0, the maximum value, correctly identifying the relationship.
Anscombe II seems to follow a quadratic relationship interpreted as a linear pattern by Pearson and Spearman, whereas Clustermatch yields a lower yet non-zero value of 0.34.
Anscombe IV shows a vertical line where $x$ values are almost constant except for one outlier.
This outlier does not influence Clustermatch as it does for Pearson or Spearman.
Thus $c=0.00$ (the minimum value) correctly indicates no association for this variable pair because, besides the outlier, for a single value of $x$ there are ten different values for $y$.
This variable pair does not fit the Clustermatch assumption: the two clusters formed with $x$ (approximately separated by $x=13$) do not match the three clusters formed with $y$.
The Pearson's correlation coefficient is the same across all these Anscombe's examples ($p=0.82$), whereas Spearman is always above or equal to 0.50.
The reason for this behavior is that these coefficients are based on data statistics such as the mean, standard deviation and, in the case of Spearman, data rankings, and these fall short in dealing with noisy data.


The second row of Figure @fig:datasets_rel shows other simulated relationships with general nonlinear patterns, some of which were previously observed in gene expression data [@doi:10.1126/science.1205438; @doi:10.3389/fgene.2019.01410; @doi:10.1091/mbc.9.12.3273].
For the random/independent pair of variables, all coefficients correctly agree with a value close to zero.
In this case, Clustermatch separates data points into different numbers of clusters which, when compared to each other, all give an ARI very close to zero (in fact, the maximum value $c=0.01$, is reached with five clusters using $x$ and two using $y$).
For the other three examples (quadratic, non-coexistence and two-lines), Pearson and Spearman generally fail to capture a clear pattern between variables $x$ and $y$.
These patterns also show how Clustermatch uses different degrees of complexity to capture the relationships.
For the non-coexistence pattern, where for instance one gene ($x$) might be expressed while the other one ($y$) is inhibited, Clustermatch only needs two clusters for both variables, similarly to a linear relationship (Anscombe I and III).
For the quadratic pattern, Clustermatch separates $x$ into more clusters (four in this case) to reach the maximum ARI.
The two-lines example shows two embedded linear relationships with different slopes, which either Pearson or Spearman does not detect ($p=-0.12$ and $s=0.05$, respectively).
Here, Clustermatch increases the complexity of the model by using eight clusters for $x$ and six for $y$, resulting in $c=0.31$.


Datasets such as Anscombe or "Datasaurus" highlight the need for visualization before drawing conclusions on summary statistics alone.
Although extra steps such as visual analyses are always necessary, larger datasets make it impossible to perform a manual assessment on each, for example, gene pair.
More advanced yet interpretable techniques, such as Clustermatch, could reduce the number of false positives/negatives to focus human validation on patterns that are more likely to be real.
Clustermatch has only one parameter: $k_{\mathrm{max}}$, the maximum number of internal clusters that the algorithm will use when partitioning data points.
As we showed in the examples above, this parameter can control the level of complexity the end-user desires to capture.
A value of $k_{\mathrm{max}}=2$ makes the coefficient more leaned towards linear patterns, whereas higher values can detect other, more complex kinds of relationships.
We found that $k_{\mathrm{max}}=10$ (the default value) approximates well the coefficient values for different types of patterns [@doi:10.1093/bioinformatics/bty899] while balancing computing time and always keeping a close-to-zero value for random data, which is guaranteed by the adjusted-for-chance property of ARI [@Vinh2010].


The following sections compare the coefficients on real gene expression data and highlight some complex and potentially interesting relationships that only Clustermatch detects.


### Clustermatch detects linear and nonlinear patterns in human transcriptomic data

![
**Distribution of coefficient values on gene expression (GTEx v8, whole blood).**
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/dist-main.svg "Distribution of coefficient values"){#fig:dist_coefs width="100%"}


We used gene expression data from GTEx v8 across different tissues.
We selected the top 5,000 genes with the largest variance for our initial analyses on whole blood and then computed the pairwise correlation matrix using Pearson, Spearman and Clustermatch.
In Figure @fig:dist_coefs a, we show how the pairwise correlation values distribute, where Clustermatch (mean=0.14, median=0.08, sd=0.15) has a much more skewed distribution than Pearson (mean=0.31, median=0.24, sd=0.24) and especially Spearman (mean=0.39, median=0.37, sd=0.26).
Coefficients reach 70% of gene pairs at $c=0.18$, $p=0.44$ and $s=0.56$ (Figure @fig:dist_coefs b).
Clustermatch and Spearman tend to agree more than any of these with Pearson, although many gene pairs seem to have a relatively higher value for Clustermatch (Figures @fig:dist_coefs c).


![
**Intersection of gene pairs with high and low coefficient values (GTEx v8, whole blood).**
**a)** UpSet plot with six categories (rows) grouping the 30% of the highest (green triangle) and lowest (red triangle) correlation values for each method.
Columns show different intersections of categories grouped by agreements and disagreements.
**b)** Hexagonal binning plots with examples of gene pairs where Clustermatch ($c$) disagrees with Pearson ($p$) and Spearman ($s$).
For each method, green and red triangles indicate if the gene pair obtained a correlation among the top (green) or bottom (red) 30% of correlation values.
No triangle means that the correlation value for the gene pair is between the 30th and 70th percentiles (neither low nor high).
A logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/upsetplot-main.svg "Intersection of gene pairs"){#fig:upsetplot_coefs width="100%"}


A closer inspection of gene pairs detected and missed by these coefficients revealed the ability of Clustermatch to capture more complex yet biologically meaningful patterns.
For this, we analyzed the agreements and disagreements by obtaining for each coefficient the top 30% of gene pairs with the largest correlation values ("high" set) and the bottom 30% ("low" set), resulting in six potentially overlapping categories.
An UpSet plot [@doi:10.1109/TVCG.2014.2346248] is shown in Figure @fig:upsetplot_coefs a, where the intersections of these six categories allowed to precisely identify the gene expression patterns captured and missed by each coefficient.
For most cases, the three coefficients agree on whether there is a strong linear correlation (42.1%) and whether there is no relationship (34.3%).
This is crucial because it implies that the user will not miss important linear patterns in expression data when using Clustermatch.
The figure also confirms that Clustermatch and Spearman agree more on highly correlated pairs (4.0% in "high", and 7.0% in "low") than any of these with Pearson (all between 0.3%-3.5% for "high", and 2.8%-5.5% for "low").
Regarding disagreements, more than 20 thousand gene pairs (20,987) with a high Clustermatch value are not highly ranked by any other coefficients.
There are also gene pairs with a high Pearson value with either low Clustermatch (1,075) or low Clustermatch and low Spearman values (531).
However, these cases mostly seem to be driven by outliers (Figure @fig:upsetplot_coefs b).
Clustermatch does not miss gene pairs highly ranked by Spearman.


Figure @fig:upsetplot_coefs b shows individual gene pairs among the top five of each intersection category in the "Disagreements" group where Clustermatch disagrees with either Pearson, Spearman or both.
The first three gene pairs at the top (*IFNG* / *SDS*, *JUN* / *APOC1*, and *ZDHHC12* / *CCL18*), with a high Clustermatch and low Pearson coefficient, seem to follow a non-coexistence relationship: in samples where one of the genes is highly (slightly) expressed, the other is slightly (highly) activated, suggesting a potential inhibiting effect.
The next three gene pairs (*UTY* / *KDM6A*, *RASSF2* / *CYTIP*, and *AC068580.6* / *KLHL21*) follow patterns combining either two linear or one linear and one constant relationships.
In particular, genes *UTY* and *KDM6A*, paralogs, show a nonlinear relationship with a subset of samples following a robust linear pattern and another subset having a constant expression of one gene.
This relationship is explained by the fact that *UTY* is in chromosome Y (Yq11) whereas *KDM6A* is in chromosome X (Xp11), and samples with a linear pattern are males, and those with no expression for *UTY* are females.
This combination of linear and constant patterns is captured by Clustermatch ($c=0.29$, above the 80th percentile) but not by Pearson ($p=0.24$, below the 55th percentile) or Spearman ($s=0.10$, below the 15th percentile).
Furthermore, the same gene pair pattern is highly ranked by Clustermatch in all other tissues in GTEx, except for female-specific organs (Figure @fig:gtex_tissues:kdm6a_uty).


![
**Scatter plots of genes *KDM6A* and *UTY* across different GTEx tissues.**
Clustermatch correctly captures the relationship in all GTEx tissues, and here we show nine of them in the first three rows.
The last row shows three female-specific organs, where Clustermatch correctly finds no association.
](images/coefs_comp/kdm6a_vs_uty/gtex-KDM6A_vs_UTY.svg "KDM6A and UTY across different GTEx tissues"){#fig:gtex_tissues:kdm6a_uty width="95%"}


To study the other gene pairs found by the correlation coefficients, we used tissue-specific gene networks from GIANT [@pmcid:PMC4828725], where nodes represent genes and each edge a functional relationship weighted with a probability of interaction between two genes.
GIANT networks were built from 987 genome-scale data sets across approximately 38,000 conditions, including expression and different interaction measurements such as gene co-expression (using Pearson correlation), protein-interaction, transcription factor regulation, and chemical and genetic perturbations and microRNA target profiles from the Molecular Signatures Database (MSigDB [@pmid:16199517]).
Figure @fig:giant_gene_pairs shows blood-specific networks for each gene pair (Figure @fig:upsetplot_coefs b) for which genes are present in GIANT models.
Two large black nodes in the top-left and bottom-right corners represent our gene pairs.
A green edge means a close-to-zero probability of interaction, whereas a red edge represents a strong predicted relationship between two genes.
Interestingly, gene pairs highly ranked by Clustermatch are part of very cohesive networks.
For example, the average probability of gene connections with *IFNG* / *SDS* is very high, at least 0.79 for all other genes shown.
This minimum average with *JUN* / *APOC1* is 0.56, for *ZDHHC12* / *CCL18* is 0.34 (where *ZDHHC12* shows the weakest links although *CCL18* is strongly connected), and for *RASSF2* / *CYTIP* is 0.76.
Predicted networks for the two gene pairs prioritized by Pearson are much less cohesive, suggesting that the high correlation is mostly driven by outliers.
For example, the minimum/maximum average of interaction probabilities with *MYOZ1* / *TNNI2* is only 0.11/0.12, and for *PYGM* / *TPM2* is 0.13/0.24.


![
**Predicted tissue-specific networks from GIANT for each gene pairs prioritized by correlation coefficients.**
A node represents a gene and an edge the probability that two genes are part of the same biological process in a blood-related cell type (indicated at the top of each subfigure).
A maximum of 15 genes are shown for each subfigure.
The GIANT web application automatically determined a minimum weight for edges to be shown.
These analyses can be performed online using the following links:
*IFNG* / *SDS* [@url:https://hb.flatironinstitute.org/gene/10993+3458];
*JUN* / *APOC1* [@url:https://hb.flatironinstitute.org/gene/3725+341]
*ZDHHC12* / *CCL18* [@url:https://hb.flatironinstitute.org/gene/6362+84885]
*RASSF2* / *CYTIP* [@url:https://hb.flatironinstitute.org/gene/9770+9595]
*MYOZ1* / *TNNI2* [@url:https://hb.flatironinstitute.org/gene/58529+7136]
*PYGM* / *TPM2* [@url:https://hb.flatironinstitute.org/gene/5837+7169]
](images/coefs_comp/giant_networks/main.svg "GIANT network interaction"){#fig:giant_gene_pairs width="100%"}

<!--
MENTION THE IMPORTANCE OF CLUSTERMATCH TO CONTRUCT COHESIVE GENE CLUSTERS: https://humanbase.readthedocs.io/en/latest/modules.html
-->

<!--
SDS / IFNG:
    https://hb.flatironinstitute.org/gene/10993+3458
    expressed in leukocyte, blood, lymphocyte, spleen
    serine seems to be essential for T cell expansion: https://www.cell.com/cell-metabolism/pdfExtended/S1550-4131(16)30644-1

JUN / APOC1:
    https://hb.flatironinstitute.org/gene/3725+341
    both expressed in blood, liver, leukocyte
    both seem to be very related to the regulation of immune response
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

