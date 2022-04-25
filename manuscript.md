---
title: An efficient not-only-linear correlation coefficient based on machine learning
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2022-04-25'
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
  <meta name="dc.title" content="An efficient not-only-linear correlation coefficient based on machine learning" />
  <meta name="citation_title" content="An efficient not-only-linear correlation coefficient based on machine learning" />
  <meta property="og:title" content="An efficient not-only-linear correlation coefficient based on machine learning" />
  <meta property="twitter:title" content="An efficient not-only-linear correlation coefficient based on machine learning" />
  <meta name="dc.date" content="2022-04-25" />
  <meta name="citation_publication_date" content="2022-04-25" />
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
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/c8f78eca62b55bec2594f92a05203c13095af188/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/c8f78eca62b55bec2594f92a05203c13095af188/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/c8f78eca62b55bec2594f92a05203c13095af188/manuscript.pdf" />
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
([permalink](https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/c8f78eca62b55bec2594f92a05203c13095af188/))
was automatically generated
from [greenelab/clustermatch-gene-expr-manuscript@c8f78ec](https://github.com/greenelab/clustermatch-gene-expr-manuscript/tree/c8f78eca62b55bec2594f92a05203c13095af188)
on April 25, 2022.
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

Correlation coefficients are widely used to identify relevant patterns in data.
In transcriptomics, genes with correlated expression often share functions or are part of disease-relevant biological processes.
Here we introduce the Clustermatch Correlation Coefficient (CCC), an efficient, easy-to-use and not-only-linear coefficient based on machine learning models.
We show that CCC can capture biologically meaningful linear and nonlinear patterns missed by standard, linear-only correlation coefficients (Pearson and Spearman).
CCC captures general patterns in data by comparing clustering solutions derived from each variable individually while being much faster than state-of-the-art coefficients such as the Maximal Information Coefficient (MIC).
When applied to human gene expression data, CCC identifies robust linear relationships while detecting nonlinear patterns associated with sex differences that are not captured by linear-only coefficients.
Gene pairs highly ranked by CCC but not detected by linear-only coefficients showed high probabilities of interaction in tissue-specific networks built from protein-protein interaction, transcription factor regulation, and chemical and genetic perturbations.
CCC is a highly-efficient, next-generation not-only-linear correlation coefficient that can readily be applied to genome-scale data and other domains across different data types.


## Introduction

New technologies have vastly improved data collection, generating a deluge of information across different disciplines.
This large amount of data provides new opportunities to address unanswered scientific questions, provided we have efficient tools that implement sufficiently complex models to discover underlying patterns.
Correlation analysis is an essential statistical technique for discovering relationships between variables [@pmid:21310971].
Correlation coefficients are often used in exploratory data mining techniques, such as clustering or community detection algorithms, to compute a similarity value between a pair of objects of interest such as genes [@pmid:27479844] or morpho-agronomic traits in crop plans [@doi:10.1093/bioinformatics/bty899].
Correlation methods are also used in supervised tasks, for example, for feature selection to improve prediction accuracy [@pmid:27006077; @pmid:33729976].
The Pearson correlation coefficient is ubiquitously deployed across application domains and diverse scientific areas.
Even minor and significant improvements in these techniques could have enormous consequences in industry and research.


In transcriptomics, many analyses start with estimating the correlation between genes.
More sophisticated approaches built on correlation analysis can suggest gene function [@pmid:21241896], aid in discovering common and cell lineage-specific regulatory networks [@pmid:25915600], and capture important interactions in a living organism that can uncover molecular mechanisms in other species [@pmid:21606319; @pmid:16968540].
The analysis of large RNA-seq datasets [@pmid:32913098; @pmid:34844637] can also reveal complex transcriptional mechanisms underlying human diseases [@pmid:27479844; @pmid:31121115; @pmid:30668570; @pmid:32424349; @pmid:34475573].
Since the introduction of the omnigenic model of complex traits [@pmid:28622505; @pmid:31051098], gene-gene relationships are playing an increasingly important role in genetic studies of human diseases [@pmid:34845454; @doi:10.1101/2021.07.05.450786; @doi:10.1101/2021.10.21.21265342; @doi:10.1038/s41588-021-00913-z], even in specific fields such as polygenic risk scores [@doi:10.1016/j.ajhg.2021.07.003].
In this context, recent approaches combine disease-associated genes from genome-wide association studies (GWAS) with gene co-expression networks to prioritize "core" genes directly affecting diseases [@doi:10.1186/s13040-020-00216-9; @doi:10.1101/2021.07.05.450786; @doi:10.1101/2021.10.21.21265342].
These core genes are not captured by standard statistical methods but are believed to be part of disease-relevant and highly-interconnected regulatory networks.
Therefore, more advanced correlation coefficients could dramatically improve the identification of more attractive candidate drug targets in the precision medicine field.


The Pearson and Spearman correlation coefficients are widely used because they reveal intuitive relationships and can be computed quickly.
However, they can only capture linear or monotonic patterns (referred to as linear-only), missing complex yet essential relationships.
The Maximal Information Coefficient (MIC) [@pmid:22174245] or Distance Correlation (DC) [@doi:10.1214/009053607000000505] were proposed as metrics that capture nonlinear patterns.
However, their computational complexity makes them impractical for big data and even moderately sized datasets.
We previously developed Clustermatch, a method for cluster analysis that significantly outperformed Pearson, Spearman, MIC and DC in detecting simulated linear and nonlinear relationships with varying noise levels [@doi:10.1093/bioinformatics/bty899].
Here we introduce the Clustermatch Correlation Coefficient (CCC), an efficient not-only-linear coefficient that works across quantitative and qualitative variables.
CCC has a single parameter that balances the complexity of relationships found and computation time.
To assess its performance, we applied our method to gene expression data from the Genotype-Tissue Expression v8 (GTEx) project across different tissues [@doi:10.1126/science.aaz1776].
CCC captured both strong linear relationships and novel nonlinear patterns associated with sex as a biological variable, which were entirely missed by standard coefficients.
We also show that the CCC is most similar to MIC, although it is much faster to compute.
Gene pairs detected in expression data by CCC had higher interaction probabilities in tissue-specific gene networks from the Genome-wide Analysis of gene Networks in Tissues (GIANT) [@doi:10.1038/ng.3259].
Furthermore, its ability to efficiently handle diverse data types (including numerical and categorical features) reduces preprocessing steps and makes it appealing to analyze large and heterogeneous repositories.


## Results


### A robust and efficient not-only-linear dependence coefficient

The Clustermatch Correlation Coefficient (CCC) provides a similarity measure between any pair of variables, either with numerical or categorical values.
The method assumes that if there is a relationship between two variables/features describing $n$ data points/objects, then the partitioning of those $n$ objects derived by clustering each variable alone should match.
In the case of numerical values, CCC uses quantiles to efficiently separate data points into different clusters (e.g., the median separates numerical data into two clusters).
Once all partitions are generated according to each variable, CCC is defined as the maximum adjusted Rand index (ARI) [@doi:10.1007/BF01908075] between them, ranging between 0 and 1.
Details of the CCC algorithm can be found in [Methods](#sec:ccc_algo).


First, we examined how the Pearson ($p$), Spearman ($s$) and CCC ($c$) correlation coefficients behaved on different simulated data patterns.
In the first row of Figure @fig:datasets_rel, we examine the classic Anscombe's quartet [@doi:10.1080/00031305.1973.10478966], where red lines indicate how CCC clusters data points using each variable/feature individually (either $x$ or $y$).
Anscombe's quartet comprises four synthetic datasets with different patterns but the same data statistics (mean, standard deviation and Pearson's correlation).
This kind of simulated data, recently revisited with the "Datasaurus" [@url:http://www.thefunctionalart.com/2016/08/download-datasaurus-never-trust-summary.html; @doi:10.1145/3025453.3025912; @doi:10.1111/dsji.12233], is used as a reminder of the importance of going beyond simple statistics, where either undesirable patterns (such as outliers) or desirable ones (such as biologically meaningful nonlinear relationships) can be masked by summary statistics alone.

![
**Different types of relationships in data.**
Each panel contains a set of simulated data points described by two variables: $x$ and $y$.
The first row shows Anscombe's quartet with four different datasets (from Anscombe I to IV) and 11 data points each.
The second row contains a set of general patterns with 100 data points each.
Each panel shows the correlation value using Pearson ($p$), Spearman ($s$) and the CCC ($c$).
Vertical and horizontal lines show how CCC partitioned data points using $x$ and $y$, respectively.
](images/intro/relationships.svg "Different types of relationships in data"){#fig:datasets_rel width="100%"}

For example, Anscombe I contains a noisy but clear linear pattern, similar to Anscombe III where the linearity is perfect besides one outlier.
In these two examples, CCC separates data points using two clusters (one red line for each variable $x$ and $y$), yielding 1.0, indicating a strong relationship.
Anscombe II seems to follow a quadratic relationship and is interpreted as linear by Pearson and Spearman.
In contrast, CCC yields a lower yet non-zero value of 0.34, reflecting a more complex relationship than a linear pattern.
Anscombe IV shows a vertical line where $x$ values are almost constant except for one outlier.
This outlier does not influence CCC as it does for Pearson or Spearman.
Thus $c=0.00$ (the minimum value) correctly indicates no association for this variable pair because, besides the outlier, for a single value of $x$ there are ten different values for $y$.
This variable pair does not fit the CCC assumption: the two clusters formed with $x$ (approximately separated by $x=13$) do not match the three clusters formed with $y$.
The Pearson's correlation coefficient is the same across all these Anscombe's examples ($p=0.82$), whereas Spearman is always above or equal to 0.50.
These simulated datasets show that both Pearson and Spearman are powerful in detecting linear patterns.
However, any deviation in this assumption (like nonlinear relationships or outliers) affects their robustness.
One reason for this behavior is that these coefficients are based on data statistics alone, such as the mean, standard deviation or simple rankings, which seem to fall short in dealing with noisy data or more complex patterns.


The second row of Figure @fig:datasets_rel shows other simulated relationships with general nonlinear patterns, some previously observed in gene expression data [@doi:10.1126/science.1205438; @doi:10.3389/fgene.2019.01410; @doi:10.1091/mbc.9.12.3273].
For the random/independent pair of variables, all coefficients correctly agree with a value close to zero.
The non-coexistence pattern, correctly captured by all coefficients, represents a case where one gene ($x$) might be expressed while the other one ($y$) is inhibited, highlighting a potentially strong biological relationship (such as a microRNA negatively regulating another gene).
For the other two examples (quadratic and two-lines), Pearson and Spearman do not capture the nonlinear pattern between variables $x$ and $y$.
These patterns also show how CCC uses different degrees of complexity to capture the relationships.
For the quadratic pattern, for example, CCC separates $x$ into more clusters (four in this case) to reach the maximum ARI.
The two-lines example shows two embedded linear relationships with different slopes, which neither Pearson nor Spearman detect ($p=-0.12$ and $s=0.05$, respectively).
Here, CCC increases the complexity of the model by using eight clusters for $x$ and six for $y$, resulting in $c=0.31$.


### The CCC reveals linear and nonlinear patterns in human transcriptomic data

Here we compare the coefficients on real gene expression data and highlight some complex and biologically interesting relationships that only CCC detects.
We used gene expression data from GTEx v8 across different tissues.
We selected the top 5,000 genes with the largest variance for our initial analyses on whole blood and then computed the correlation matrix between genes using Pearson, Spearman and CCC (see [Methods](#sec:data_gtex)).


In Figure @fig:dist_coefs a, we show how the correlation values distribute, where CCC (mean=0.14, median=0.08, sd=0.15) has a much more skewed distribution than Pearson (mean=0.31, median=0.24, sd=0.24) and Spearman (mean=0.39, median=0.37, sd=0.26).
The cumulative histogram in Figure @fig:dist_coefs b shows that coefficients reach 70% of gene pairs at $c=0.18$, $p=0.44$ and $s=0.56$.
A 2D histogram plot comparing each coefficient is shown in Figures @fig:dist_coefs c, where CCC and Spearman tend to agree more than any of these with Pearson.

![
**Distribution of coefficient values on gene expression (GTEx v8, whole blood).**
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/dist-main.svg "Distribution of coefficient values"){#fig:dist_coefs width="100%"}


A closer inspection of gene pairs that were either prioritized or disregarded by these coefficients revealed their ability to capture different patterns.
For this, we analyzed the agreements and disagreements by obtaining, for each coefficient, the top 30% of gene pairs with the largest correlation values ("high" set) and the bottom 30% ("low" set), resulting in six potentially overlapping categories.
An UpSet plot [@doi:10.1109/TVCG.2014.2346248] is shown in Figure @fig:upsetplot_coefs a, where the intersections of these six categories allowed to precisely identify the gene expression patterns captured and missed by each coefficient.

![
**Intersection of gene pairs with high and low correlation coefficient values (GTEx v8, whole blood).**
**a)** UpSet plot with six categories (rows) grouping the 30% of the highest (green triangle) and lowest (red triangle) values for each coefficient.
Columns show different intersections of categories grouped by agreements and disagreements.
**b)** Hexagonal binning plots with examples of gene pairs where CCC ($c$) disagrees with Pearson ($p$) and Spearman ($s$).
For each method, green and red triangles indicate if the gene pair is among the top (green) or bottom (red) 30% of coefficient values.
No triangle means that the correlation value for the gene pair is between the 30th and 70th percentiles (neither low nor high).
A logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/upsetplot-main.svg "Intersection of gene pairs"){#fig:upsetplot_coefs width="100%"}

For most cases, the three coefficients agreed on whether there is a strong correlation (42.1%) or there is no relationship (34.3%).
Since Pearson and Spearman are linear-only, and CCC can also capture these patterns, it would be relatively safe to assume that these highly correlated gene pairs represent strong linear patterns.
These results are crucial because it suggests that the user will not miss important linear patterns in expression data when using CCC.
CCC and Spearman agree more on either highly or poorly correlated pairs (4.0% in "high", and 7.0% in "low") than any of these with Pearson (all between 0.3%-3.5% for "high", and 2.8%-5.5% for "low").
In summary, CCC agrees with either Pearson or Spearman in 90.5% of gene pairs by assigning a high or a low correlation value.
Regarding disagreements (right part of Figure @fig:upsetplot_coefs a), more than 20 thousand gene pairs (20,987) with a high CCC value are not highly ranked by any other coefficient.
There are also gene pairs with a high Pearson value and either low CCC (1,075), low Spearman (87) or both low CCC and low Spearman values (531).
However, these cases mostly seem to be driven by potential outliers (Figure @fig:upsetplot_coefs b, and analyzed below).
CCC does not miss gene pairs highly ranked by Spearman.
We also compared the Maximal Information Coefficient (MIC) in a small random sample of this data (see [Supplementary Material](#sec:mic)), given its higher computational complexity.
We found that CCC behaves very similarly to MIC, although CCC performs up to two orders of magnitude faster than this coefficient (see [Supplementary Material](#sec:time_test)).
This result is relevant because MIC, an advanced correlation coefficient able to capture general patterns beyond linear relationships, represented a significant step forward in correlation analysis research.
For example, MIC has been successfully used in various application domains [@pmid:33972855; @pmid:33001806; @pmid:27006077].
CCC, however, runs in a fraction of the time, making it a practical alternative for large data sets.


Next, we selected individual gene pairs where CCC disagreed with the rest.
We analyzed gene pairs among the top five of each intersection in the "Disagreements" group (Figure @fig:upsetplot_coefs a, right) where CCC disagrees with Pearson, Spearman or both.
The first three gene pairs at the top (*IFNG* - *SDS*, *JUN* - *APOC1*, and *ZDHHC12* - *CCL18*), with high CCC and low Pearson values, seem to follow a non-coexistence relationship: in samples where one of the genes is highly (slightly) expressed, the other is slightly (highly) activated, suggesting a potentially inhibiting effect.
The following three gene pairs (*UTY* - *KDM6A*, *RASSF2* - *CYTIP*, and *AC068580.6* - *KLHL21*) follow patterns combining either two linear or one linear and one independent relationships.
In particular, genes *UTY* and *KDM6A* (paralogs) show a nonlinear relationship where a subset of samples follows a robust linear pattern and another subset has a constant expression of one gene.
This relationship is explained by the fact that *UTY* is in chromosome Y (Yq11) whereas *KDM6A* is in chromosome X (Xp11), and samples with a linear pattern are males, whereas those with no expression for *UTY* are females.
This combination of linear and independent patterns is captured by CCC ($c=0.29$, above the 80th percentile) but not by Pearson ($p=0.24$, below the 55th percentile) or Spearman ($s=0.10$, below the 15th percentile).
Furthermore, the same gene pair pattern is highly ranked by CCC in all other tissues in GTEx, except for female-specific organs (Figure @fig:gtex_tissues:kdm6a_uty).

![
**Scatter plots of genes *KDM6A* and *UTY* across different GTEx tissues.**
CCC captures this nonlinear relationship in all GTEx tissues (nine examples are shown in the first three rows), except in female-specific organs (last row).
](images/coefs_comp/kdm6a_vs_uty/gtex-KDM6A_vs_UTY-main.svg "KDM6A and UTY across different GTEx tissues"){#fig:gtex_tissues:kdm6a_uty width="95%"}


### Replication of gene associations using tissue-specific gene networks from GIANT

We systematically analyzed the other gene pairs in Figure @fig:upsetplot_coefs to assess whether associations were replicated in other datasets besides GTEx.
This is challenging and prone to bias because linear-only correlation coefficients are usually used in gene co-expression analyses.
We used 144 tissue-specific gene networks from the Genome-wide Analysis of gene Networks in Tissues (GIANT) [@pmcid:PMC4828725; @url:https://hb.flatironinstitute.org], where nodes represent genes and each edge a functional relationship weighted with a probability of interaction between two genes (see [Methods](#sec:giant)).
Importantly, the version of GIANT used in this study did not include GTEx samples [@url:https://hb.flatironinstitute.org/data], making it an ideal case for replication.
These networks were built from expression and different interaction measurements, including protein-interaction, transcription factor regulation, chemical/genetic perturbations and microRNA target profiles from the Molecular Signatures Database (MSigDB [@pmid:16199517]).
We reasoned that if our highly-ranked gene pairs using three different coefficients in a single tissue (whole blood in GTEx, Figure @fig:upsetplot_coefs) represented real patterns, they should replicate across the multi-tissue, multi-cell type functional interaction networks in GIANT.
In addition to predicting a network with interactions for a pair of genes, the GIANT web application can also automatically detect a relevant tissue or cell type where genes are predicted to be specifically expressed (the approach uses a machine learning method introduced in [@doi:10.1101/gr.155697.113] and described in [Methods](#sec:giant)).
For example, we obtained the networks in blood and the automatically-predicted cell type for gene pairs *RASSF2* - *CYTIP* (CCC high, Figure @fig:giant_gene_pairs a) and *MYOZ1* - *TNNI2* (Pearson high, Figure @fig:giant_gene_pairs b).
In addition to the gene pair, the networks include other genes connected according to their probability of interaction (up to 15 additional genes are shown), which allows estimating whether genes are part of the same tissue-specific biological process.
Two large black nodes in each network's top-left and bottom-right corners represent our gene pairs.
A green edge means a close-to-zero probability of interaction, whereas a red edge represents a strong predicted relationship between the two genes.

![
**Analysis of GIANT tissue-specific predicted networks for gene pairs prioritized by correlation coefficients.**
**a-b)** Two gene pairs prioritized by correlation coefficients (from Figure @fig:upsetplot_coefs b) with their predicted networks in blood (left) and an automatically selected tissue/cell type (right) using the method described in [@doi:10.1101/gr.155697.113].
A node represents a gene and an edge the probability that two genes are part of the same biological process in a specific cell type.
A maximum of 15 genes are shown for each network.
The GIANT web application automatically determined a minimum interaction confidence (edges' weights) to be shown.
These networks can be analyzed online using the following links:
*RASSF2* - *CYTIP* [@url:https://hb.flatironinstitute.org/gene/9770+9595],
*MYOZ1* - *TNNI2* [@url:https://hb.flatironinstitute.org/gene/58529+7136].
**c)** Summary of predicted tissue/cell type networks for gene pairs exclusively prioritized by CCC and Pearson.
The first row combines all gene pairs where CCC is high and Pearson or Spearman are low.
The second row combines all gene pairs where Pearson is high and CCC or Spearman are low.
Bar plots (left) show the number of gene pairs for each predicted tissue/cell type.
Box plots (right) show the average probability of interaction between genes in these predicted tissue-specific networks.
Red indicates CCC-only tissues/cell types, blue are Pearson-only, and purple are shared.
](images/coefs_comp/giant_networks/top_gene_pairs-main.svg "GIANT network interaction on gene pairs"){#fig:giant_gene_pairs width="100%"}

In this example, genes *RASSF2* and *CYTIP* (Figure @fig:giant_gene_pairs a), with a high CCC value ($c=0.20$) and low Pearson and Spearman ($p=0.16$ and $s=0.11$), were both strongly connected to the blood network, with interaction scores of at least 0.63 and an average of 0.75 and 0.84, respectively (Supplementary Table @tbl:giant:weights).
The autodetected cell type for this pair was leukocytes, a blood-specific cell lineage, and interaction scores slightly improved over the blood network (Supplementary Table @tbl:giant:weights).
However, genes *MYOZ1* and *TNNI2*, with a very high Pearson value ($p=0.97$), moderate Spearman ($s=0.28$) and very low CCC ($c=0.03$), were predicted to belong to much less cohesive networks (Figure @fig:giant_gene_pairs b), with average interaction scores of 0.17 and 0.22 with the rest of the genes, respectively.
Additionally, the autodetected cell type (skeletal muscle) is not related to blood or one of its cell lineages.
These preliminary results suggested that CCC might be capturing blood-specific patterns missed by the other coefficients.


To confirm this trend, we performed a systematic evaluation using the top 100 gene pairs across intersections where CCC completely disagreed with the rest (CCC high and either of the rest low; or CCC low and either of the rest high).
For each gene pair prioritized in GTEx (whole blood), we autodetected a relevant cell type using GIANT to assess whether genes were predicted to be specifically expressed in a blood-relevant cell lineage.
For this, we took the top five more common autodetected cell types for each coefficient and assessed networks connectivity (see [Methods](#sec:giant)).
Notably, the top 5 predicted cell types for gene pairs highly ranked by CCC and not by the rest were all blood-specific (Figure @fig:giant_gene_pairs c, top left), including macrophage, leukocyte, natural killer cell, blood and mononuclear phagocyte.
The average probability of interaction between genes in these CCC-ranked networks was significantly higher than the other coefficients (Figure @fig:giant_gene_pairs c, top right), with all medians larger than 67% and first quartiles above 41% across predicted cell types.
In contrast, most Pearson's gene pairs were predicted to be specific to tissues unrelated to blood (Figure @fig:giant_gene_pairs c, bottom left), with skeletal muscle being the most common predicted tissue.
The interaction probabilities in these Pearson-ranked networks were also generally lower than in CCC, except for blood-specific gene pairs (Figure @fig:giant_gene_pairs c, bottom right).
These results show that most gene pairs exclusively detected by CCC in whole blood from GTEx were replicated in sophisticated network models trained without GTEx samples and including interaction measurements.
CCC-ranked gene pairs not only have high probabilities of belonging to the same biological process but were also predicted to be specifically expressed in blood cell lineages.
Conversely, most Pearson-ranked gene pairs were not predicted to be blood-specific, and their interaction probabilities were relatively low.
This lack of replication in GIANT suggests that top Pearson-ranked gene pairs in GTEx might be driven mainly by outliers, which is also suggested by the plots in Figure @fig:upsetplot_coefs b.


## Discussion

We introduced the Clustermatch Correlation Coefficient (CCC), an efficient not-only-linear machine learning-based method that captures more general patterns in data.
We applied it to gene expression data from GTEx v8 and found that our coefficient is robust to outliers and does not miss strongly linear gene-gene relationships.
Moreover, CCC also captured complex and biologically meaningful relationships completely missed by standard coefficients.
For instance, CCC exclusively detected gene pairs from the sex chromosomes following complex nonlinear patterns.
These examples, in particular, highlight the importance of considering sex as a biological variable and the critical role that not-only-linear coefficients can play in capturing sex-specific differences.
We also replicated gene pairs prioritized by CCC in GTEx using tissue-specific gene networks from GIANT trained without GTEx samples.
We found that top CCC-ranked gene pairs in whole blood from GTEx were predicted in GIANT to be part of the same biological mechanism and specifically expressed in cell lineages from blood, even though CCC did not have access to any cell lineage-specific information.
This suggests that CCC can disentangle intricate cell lineage-specific transcriptional patterns missed by linear-only coefficients.
CCC derives scores very well aligned with MIC while being much more computationally efficient and thus practical for use in large modern datasets.
Our method is conceptually easy to interpret and has a single parameter that controls the complexity of the detected relationships while also balancing compute time.


Datasets such as Anscombe or "Datasaurus" highlight the value of visualization instead of relying on simple data summaries.
While visual analysis is helpful, for many datasets examining each possible relationship is infeasible, and this is where more sophisticated and robust correlation coefficients are necessary.
Advanced yet interpretable coefficients like CCC can focus human interpretation on patterns that are more likely to reflect real biology.
The complexity of these patterns might reflect heterogeneity in samples that mask clear relationships between variables.
For example, genes *UTY* - *KDM6A* (from sex chromosomes), detected by CCC, have a strong linear relationship but only in a subset of samples (males), which was not captured by linear-only coefficients.
This example highlights the importance of considering sex as a biological variable (SABV) [@doi:10.1038/509282a] to avoid overlooking important differences between men and women, for example, in disease manifestations [@doi:10.1210/endrev/bnaa034; @doi:10.1038/s41593-021-00806-8].
In transcriptome studies, a not-only-linear correlation coefficient like CCC could identify significant sex-specific differences in gene expression that are entirely missed by linear-only coefficients.


It is well-known that biomedical research is biased towards a small fraction of human genes [@pmid:17620606; @pmid:17472739].
Some genes analyzed in this study (Figure @fig:upsetplot_coefs b), such as *SDS* (12q24) and *ZDHHC12* (9q34), were previously found to have a relatively lower number of publications that were explained by a small set of chemical, physical and biological features [@pmid:30226837].
A gene co-expression analysis on large compendia and beyond linear patterns could shed light on the function of understudied genes.
For example, gene *KLHL21* (1p36) and the novel RNA gene *AC068580.6* (*ENSG00000235027*, in 11p15) have a high CCC value and are missed by the other coefficients.
*KLHL21* was suggested as a potential therapeutic target for hepatocellular carcinoma [@pmid:27769251] and other cancers [@pmid:29574153; @pmid:35084622].
Its nonlinear correlation with *AC068580.6* might unveil other important players in cancer initiation or progression, potentially in subsets of samples with specific characteristics (as suggested in Figure @fig:upsetplot_coefs b).


Not-only-linear correlation coefficients might also be helpful in the field of genetic studies.
In this context, genome-wide association studies (GWAS) have been successful in understanding the molecular basis of common diseases by estimating the association between genotype and phenotype [@doi:10.1016/j.ajhg.2017.06.005].
However, the estimated effect sizes of genes identified with GWAS are generally modest, and they explain only a fraction of the phenotype variance, hampering the clinical translation of these findings [@doi:10.1038/s41576-019-0127-1].
Recent theories, like the omnigenic model for complex traits [@pmid:28622505; @pmid:31051098], argue that these observations are explained by highly-interconnected gene regulatory networks, with some core genes having a more direct effect on the phenotype than others.
Using this omnigenic perspective, we and others [@doi:10.1101/2021.07.05.450786; @doi:10.1186/s13040-020-00216-9; @doi:10.1101/2021.10.21.21265342] have shown that integrating gene co-expression networks in genetic studies could potentially identify core genes that are missed by linear-only models alone like GWAS.
Our results suggest that building these networks with more advanced and efficient correlation coefficients could better estimate gene co-expression profiles and thus more accurately identify these core genes.
Approaches like CCC could play a significant role in the precision medicine field by providing the computational tools to focus on more promising genes representing potentially better candidate drug targets.


Our analyses have some limitations.
We worked on a sample with the top variable genes to keep computation time feasible.
Although CCC is much faster than MIC, Pearson and Spearman are still the most computationally efficient since they only rely on simple data statistics.
However, as we have shown, this significantly limits their ability beyond linear patterns.
Even with this small sample of genes, our results confirm that the advantages of using more advanced coefficients like CCC can help detect and study more intricate molecular mechanisms.
Although we only used GTEx, we could still find complex and meaningful patterns within this homogeneous set of samples.
The application of CCC on larger compendia, such as recount3 [@pmid:34844637] with thousands of heterogeneous samples across different conditions, can reveal other potentially meaningful gene interactions.
The single parameter of CCC, $k_{\mathrm{max}}$, controls the complexity of patterns found and also the compute time.
We used $k_{\mathrm{max}}=10$ in our analyses which, given our results, seems to be enough to find both linear and more complex patterns.
A more comprehensive analysis of the most optimal values for this parameter could provide insights to adjust it for different applications.


While linear and rank-based correlation coefficients are exceptionally fast to calculate, not all relevant patterns in biological datasets are linear.
For example, patterns associated with sex as a biological variable are not apparent to the linear-only coefficients that we evaluated but are revealed by not-only-linear methods.
Not-only-linear coefficients can also disentangle intricate yet relevant patterns from expression data alone that were replicated in models integrating different data modalities.
CCC, in particular, is highly parallelizable, and we anticipate efficient GPU-based implementations that could make it even faster.
The CCC is an efficient, next-generation correlation coefficient that is highly effective in transcriptome analyses and potentially useful in a broad range of other domains.


## Methods

The code needed to reproduce all of our analyses and generate the figures is available in [https://github.com/greenelab/clustermatch-gene-expr](https://github.com/greenelab/clustermatch-gene-expr).
We provide scripts to download the required data and run all the steps.
A Docker image is provided to use the same runtime environment.



### The CCC algorithm {#sec:ccc_algo}

The Clustermatch Correlation Coefficient (CCC) computes a similarity value $c \in \left[0,1\right]$ between any pair of numerical or categorical features/variables $\mathbf{x}$ and $\mathbf{y}$ measured on $n$ objects.
CCC assumes that if two features $\mathbf{x}$ and $\mathbf{y}$ are similar, then the partitioning of the $n$ objects using each feature separately should match.
For example, given $\mathbf{x}=(1.1, 2.7, 3.2, 4.0)$ and $\mathbf{y}=10x=(11, 27, 32, 40)$ for $n=4$, partitioning each variable into two clusters ($k=2$) using their medians (2.95 for $\mathbf{x}$ and 29.5 for $\mathbf{y}$) would result in partition $\pi^{\mathbf{x}}=(1, 1, 2, 2)$ for $\mathbf{x}$, and partition $\pi^{\mathbf{y}}=(1, 1, 2, 2)$ for $\mathbf{y}$.
Suppose we compute the agreement between $\pi^{\mathbf{x}}$ and $\pi^{\mathbf{y}}$ using any measure of similarity between partitions, like the adjusted Rand index (ARI) [@doi:10.1007/BF01908075].
In that case, it will return the maximum value (1.0 in the case of ARI).
For CCC, a given value of $k$ might not be the right one to find a relationship between two features.
For instance, in the quadratic example in Figure @fig:datasets_rel, CCC returns a value of 0.36 (grouping objects in four clusters using one feature and two using the other).
If we used only two clusters instead, CCC would return a similarity value of 0.02.
The CCC algorithm (shown below) searches for this optimal number of clusters given a maximum $k$, which is its single parameter $k_{\mathrm{max}}$.

![
](images/intro/ccc_algorithm/ccc_algorithm.svg "CCC algorithm"){width="80%"}

The main function of the algorithm, `ccc`, generates a list of partitionings $\Omega^{\mathbf{x}}$ and $\Omega^{\mathbf{y}}$ (lines 14 and 15), for each feature $\mathbf{x}$ and $\mathbf{y}$.
Then, it computes the ARI between each partition in $\Omega^{\mathbf{x}}$ and $\Omega^{\mathbf{y}}$ (line 16), and then it keeps the pair that generates the maximum ARI.
Finally, since ARI does not have a lower bound (it could return negative values, which in our case are not meaningful), CCC always returns a value between 0 and 1 (line 17).


Since CCC only needs a pair of partitions to compute a similarity value, any type of feature that can be used to perform clustering/grouping of the $n$ objects is supported.
If the feature is numerical (lines 2 to 5 in the `get_partitions` function), then quantiles are used for clustering (for example, the median generates $k=2$ clusters of objects), from $k=2$ to $k=k_{\mathrm{max}}$.
If the feature is categorical (lines 7 to 9), the categories are used to group objects together.
Consequently, since features are internally categorized into clusters, numerical and categorical variables can be naturally integrated since clusters do not need an order.
Although not developed in this study, CCC provides a framework where not only 1-dimensional variables can be compared (such as genes across $n$ samples) but, in theory, also random vectors (multivariate random variables) such as an image.


For all our analyses we used $k_{\mathrm{max}}=10$.
This means that for each gene pair, 18 partitions are generated (9 for each gene, from $k=2$ to $k=10$), and 81 ARI comparisons are performed.
Smaller values of $k_{\mathrm{max}}$ can reduce computation time, although at the expense of missing more complex, general relationships.
Our examples in Figure @fig:datasets_rel suggest that using $k_{\mathrm{max}}=2$ would force CCC to find linear-only patterns, which could be a valid use case scenario where only this kind of relationships are desired.
In addition, $k_{\mathrm{max}}=2$ implies that only two partitions are generated, and only one ARI comparison is performed.
In this regard, our Python implementation of CCC allows some flexibility in specifying $k_{\mathrm{max}}$.
For instance, instead of the maximum $k$ (an integer), the parameter could be a custom list of integers: for example, `[2, 5, 10]` will partition the data into two, five and ten clusters.


For a single pair of features (genes in our study), generating partitions or computing their similarity can be parallelized with CCC.
We used three CPU cores in our analyses to speed up the computation of CCC.
A future improved implementation of CCC could potentially use graphical processing units (GPU) to parallelize its computation further.


A Python implementation of CCC (optimized with `numba` [@doi:10.1145/2833157.2833162]) can be found in our Github repository [@url:https://github.com/greenelab/clustermatch-gene-expr], as well as a package published in the Python Package Index (PyPI) that can be easily installed.


### Gene expression data, preprocessing and sampling {#sec:data_gtex}

We downloaded GTEx v8 data for all tissues, normalized using TPM (transcripts per million), and focused our primary analysis on whole blood, which has a good sample size (755).
We selected the top 5,000 genes from whole blood with the largest variance after standardizing with $log(x + 1)$ to avoid a bias towards highly-expressed genes.
We then computed Pearson, Spearman and CCC on these 5,000 genes across all 755 samples on the TPM-normalized data, generating a pairwise similarity matrix of size 5,000 x 5,000.
To reduce the time to compute MIC and compare it with the other coefficients, we randomly sampled 100,000 gene pairs from all possible combinations in the set of 5,000 top variable genes ($n * (n-1) / 2=12497500$).


### Maximal Information Coefficient (MIC) {#sec:methods:mic}

We used the Python package `minepy` [@doi:10.1093/bioinformatics/bts707; @url:https://github.com/minepy/minepy] (version 1.2.5) to estimate the MIC coefficient.
In GTEx v8 (whole blood), we ran MIC (the original implementation using the heuristic estimator ApproxMaxMI [@doi:10.1126/science.1205438]) with the default parameters `alpha=0.6`, `c=15` and `estimator='mic_approx'`.
For our computational complexity analyses (see [Supplementary Material](#sec:time_test)), we also ran a new optimized implementation called MIC<sub>e</sub> [@Reshef2016] provided by `minepy` (using parameter `estimator='mic_e'`).


### Tissue-specific network analyses using GIANT {#sec:giant}

We accessed tissue-specific gene networks of GIANT using both the web interface and web services provided by HumanBase [@url:https://hb.flatironinstitute.org].
The GIANT version used in this study included 987 genome-scale datasets with approximately 38,000 conditions from around 14,000 publications.
Details on how these networks were built are described in [@doi:10.1038/ng.3259].
Briefly, tissue-specific gene networks were built using gene expression data (without GTEx samples [@url:https://hb.flatironinstitute.org/data]) from the NCBI's Gene Expression Omnibus (GEO) [@doi:10.1093/nar/gks1193], protein-protein interaction (BioGRID [@pmc:PMC3531226], IntAct [@doi:10.1093/nar/gkr1088], MINT [@doi:10.1093/nar/gkr930] and MIPS [@pmc:PMC148093]), transcription factor regulation using binding motifs from JASPAR [@doi:10.1093/nar/gkp950], and chemical and genetic perturbations from MSigDB [@doi:10.1073/pnas.0506580102].
Gene expression data were log-transformed, and the Pearson correlation was computed for each gene pair, normalized using the Fisher's z transform, and z-scores discretized into different bins.
Gold standards for tissue-specific functional relationships were built using expert curation and experimentally derived gene annotations from the Gene Ontology.
Then, one naive Bayesian classifier for each of the 144 tissues was trained using these gold standards.
Finally, these classifiers were used to estimate the probability of tissue-specific interactions for each gene pair.


For each pair of genes prioritized in our study using GTEx, we used GIANT through HumanBase to obtain
1) a predicted gene network for blood (manually selected to match whole blood in GTEx) and
2) a gene network with an automatically predicted tissue using the method described in [@doi:10.1101/gr.155697.113] and provided by HumanBase web interfaces/services.
Briefly, the tissue prediction approach trains a machine learning model using comprehensive transcriptional data with human-curated markers of different cell lineages (e.g., macrophages) as gold standards.
Then, these models are used to predict other cell lineage-specific genes.
In addition to reporting this predicted tissue or cell lineage, we computed the average probability of interaction between all genes in the network retrieved from GIANT.
Following the default procedure used in GIANT, we included the top 15 genes with the highest probability of interaction with the queried gene pair for each network. 


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


<!-- ## Acknowledgements -->


## Supplementary material

### Comparison with the Maximal Information Coefficient (MIC) on gene expression data {#sec:mic}

We compared all the coefficients in this study with the MIC [@pmid:22174245], a popular nonlinear method that can find complex relationships in data, although very computationally intensive [@doi:10.1098/rsos.201424].
To circumvent this limitation of MIC, we took a small random sample of 100,000 gene pairs from all possible pairwise comparisons of our 5,000 highly variable genes from whole blood in GTEx v8.
Then we performed the analysis on the distribution of coefficients (the same as in the main text), shown in Figure @fig:dist_coefs_mic.
We verified that CCC and MIC behave similarly in this dataset, with essentially the same distribution but only shifted.
Figure @fig:dist_coefs_mic c shows that these two coefficients relate almost linearly, and both compare very similarly with Pearson and Spearman.

![
**Distribution of MIC values on a small sample from whole blood (GTEx v8) and comparison with other methods.**
We randomly sampled 100,000 gene pairs (approximately 1% of the total) from our set of 5,000 genes.
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/mic/dist-main.svg "Distribution of MIC values"){#fig:dist_coefs_mic width="100%"}



### Computational complexity of coefficients {#sec:time_test}

We also compared CCC with the other coefficients in terms of computational complexity.
Although CCC and MIC identify the same gene pairs in the gene expression data (see [here](#sec:mic)), the use MIC in large datasets remains limited due to its very long computation time, despite some methodological/implementation improvements [@doi:10.1093/bioinformatics/bts707; @doi:10.1371/journal.pone.0157567; @doi:10.4137/EBO.S13121; @doi:10.1038/srep06662; @doi:10.1098/rsos.201424].
The original MIC implementation uses ApproxMaxMI, a computationally demanding heuristic estimator [@doi:10.1126/science.1205438].
Recently, a more efficient implementation called MIC<sub>e</sub> was proposed [@Reshef2016].
These two MIC estimators are provided by the `minepy` package [@doi:10.1093/bioinformatics/bts707], a C implementation available for Python, which we used here.
We compared all these coefficients in terms of computation time on randomly generated variables of different sizes, which simulates a scenario of gene expression data with different numbers of conditions.
Differently from the rest, our method CCC allows us to easily parallelize the computation of a single gene pair (see [Methods](#sec:ccc_algo)), so we also tested the cases using 1 and 3 CPU cores.
Figure @fig:time_test shows the time in seconds (left) and its log scale (right).

![
**Computational complexity of all correlation coefficients on simulated data.**
We simulated variables/features with varying data sizes (from 100 to a million, $x$-axis).
The plots show the average time taken for each coefficient (in seconds on the left and log scale on the right) on ten repetitions (1000 repetitions were performed for data size 100).
CCC was run using 1 and 3 CPU cores.
MIC and MIC<sub>e</sub> did not finish running in a reasonable amount of time for data sizes of 10,000 and 100,000, respectively.
](images/coefs_comp/time_test/time_test-main.svg "Computation time for CCC and MIC"){#fig:time_test width="100%"}

As we already expected, Pearson and Spearman were the fastest, given that they only need to compute basic summary statistics from the data.
For example, Pearson is three orders of magnitude faster than CCC.
Among the nonlinear coefficients, CCC was faster than the two MIC variations (up to two orders of magnitude), with the only exception in very small data sizes.
The difference is important because both MIC variants were implemented in C [@doi:10.1093/bioinformatics/bts707], a high-performance programming language, whereas CCC was implemented in Python (optimized with `numba`).
For a data size of a million, the multi-core CCC was twice as fast as the single-core CCC.
This suggests that new implementations using more advanced processing units (such as GPUs) are feasible and could make CCC reach speeds closer to Pearson.



### Tissue-specific gene networks with GIANT


| | **Interaction confidence** <!-- $colspan="7" -->    | | | | | | |
|:------:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
| | **Blood** <!-- $colspan="3" --> | | | **Predicted cell type** <!-- $colspan="4" --> | | | |
| **Gene** |  **Min.** | **Avg.** | **Max.** |  **Cell type** | **Min.** | **Avg.** | **Max.** |
| *IFNG* | 0.19 | 0.42 | 0.54 | Natural killer cell<!-- $rowspan="2" --> | 0.74 | 0.90 | 0.99 |
| *SDS* | 0.18 | 0.29 | 0.41 | 0.65 | 0.81 | 0.94<!-- $removenext="2" --> |
| <!-- $colspan="7" --> |||||||
| *JUN* | 0.26 | 0.68 | 0.97 | Mononuclear phagocyte<!-- $rowspan="2" --> | 0.36 | 0.73 | 0.94 |
| *APOC1* | 0.22 | 0.47 | 0.77 | 0.29 | 0.50 | 0.80<!-- $removenext="2" --> |
| <!-- $colspan="7" --> |||||||
| *ZDHHC12* | 0.05 | 0.07 | 0.10 | Macrophage<!-- $rowspan="2" --> | 0.03 | 0.12 | 0.33 |
| *CCL18* | 0.74 | 0.79 | 0.86 | 0.36 | 0.70 | 0.90<!-- $removenext="2" --> |
| <!-- $colspan="7" --> |||||||
| *RASSF2* | 0.63 | 0.75 | 0.90 | Leukocyte<!-- $rowspan="2" --> | 0.69 | 0.75 | 0.88 |
| *CYTIP* | 0.63 | 0.84 | 0.91 | 0.76 | 0.84 | 0.91<!-- $removenext="2" --> |
| <!-- $colspan="7" --> |||||||
| *MYOZ1* | 0.09 | 0.17 | 0.37 | Skeletal muscle<!-- $rowspan="2" --> | 0.11 | 0.11 | 0.12 |
| *TNNI2* | 0.10 | 0.22 | 0.44 | 0.10 | 0.11 | 0.12<!-- $removenext="2" --> |
| <!-- $colspan="7" --> |||||||
| *PYGM* | 0.02 | 0.04 | 0.14 | Skeletal muscle<!-- $rowspan="2" --> | 0.01 | 0.02 | 0.04 |
| *TPM2* | 0.05 | 0.56 | 0.80 | 0.01 | 0.28 | 0.47<!-- $removenext="2" --> |

Table: Network statistics of six gene pairs shown in Figure @fig:upsetplot_coefs b for blood and predicted cell types.
Only gene pairs present in GIANT models are listed.
For each gene in the pair (first column), the minimum, average and maximum interaction coefficients with the other genes in the network are shown.
{#tbl:giant:weights}


<!-- ![
**Predicted tissue-specific networks from GIANT for six gene pairs prioritized by correlation coefficients.**
Gene pairs are from Figure @fig:upsetplot_coefs b.
A node represents a gene and an edge the probability that two genes are part of the same biological process in a specific cell type.
The cell type for each gene network was automatically predicted using [@doi:10.1101/gr.155697.113], and it is indicated at the top-right corner of each network.
A maximum of 15 genes are shown for each subfigure.
The GIANT web application automatically determined a minimum interaction confidence (edges' weights) to be shown.
All these analyses can be performed online using the following links:
*IFNG* - *SDS* [@url:https://hb.flatironinstitute.org/gene/10993+3458],
*JUN* - *APOC1* [@url:https://hb.flatironinstitute.org/gene/3725+341],
*ZDHHC12* - *CCL18* [@url:https://hb.flatironinstitute.org/gene/6362+84885],
*RASSF2* - *CYTIP* [@url:https://hb.flatironinstitute.org/gene/9770+9595],
*MYOZ1* - *TNNI2* [@url:https://hb.flatironinstitute.org/gene/58529+7136],
*PYGM* - *TPM2* [@url:https://hb.flatironinstitute.org/gene/5837+7169].
The GIANT web-server was accessed on April 4, 2022.
](images/coefs_comp/giant_networks/auto_selected_tissues/main.svg "GIANT network interaction"){#fig:giant_gene_pairs:pred_tissue width="100%"} -->
