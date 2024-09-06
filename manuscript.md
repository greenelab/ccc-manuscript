---
title: An efficient not-only-linear correlation coefficient based on clustering
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2024-09-06'
author-meta:
- Milton Pividori
- Marylyn D. Ritchie
- Diego H. Milone
- Casey S. Greene
header-includes: |
  <!--
  Manubot generated metadata rendered from header-includes-template.html.
  Suggest improvements at https://github.com/manubot/manubot/blob/main/manubot/process/header-includes-template.html
  -->
  <meta name="dc.format" content="text/html" />
  <meta property="og:type" content="article" />
  <meta name="dc.title" content="An efficient not-only-linear correlation coefficient based on clustering" />
  <meta name="citation_title" content="An efficient not-only-linear correlation coefficient based on clustering" />
  <meta property="og:title" content="An efficient not-only-linear correlation coefficient based on clustering" />
  <meta property="twitter:title" content="An efficient not-only-linear correlation coefficient based on clustering" />
  <meta name="dc.date" content="2024-09-06" />
  <meta name="citation_publication_date" content="2024-09-06" />
  <meta property="article:published_time" content="2024-09-06" />
  <meta name="dc.modified" content="2024-09-06T17:24:22+00:00" />
  <meta property="article:modified_time" content="2024-09-06T17:24:22+00:00" />
  <meta name="dc.language" content="en-US" />
  <meta name="citation_language" content="en-US" />
  <meta name="dc.relation.ispartof" content="Manubot" />
  <meta name="dc.publisher" content="Manubot" />
  <meta name="citation_journal_title" content="Manubot" />
  <meta name="citation_technical_report_institution" content="Manubot" />
  <meta name="citation_author" content="Milton Pividori" />
  <meta name="citation_author_institution" content="Department of Biomedical Informatics, University of Colorado School of Medicine, Aurora, CO 80045, USA" />
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
  <meta name="citation_author_institution" content="Department of Biomedical Informatics, University of Colorado School of Medicine, Aurora, CO 80045, USA" />
  <meta name="citation_author_orcid" content="0000-0001-8713-9213" />
  <meta name="twitter:creator" content="@GreeneScientist" />
  <link rel="canonical" href="https://greenelab.github.io/ccc-manuscript/" />
  <meta property="og:url" content="https://greenelab.github.io/ccc-manuscript/" />
  <meta property="twitter:url" content="https://greenelab.github.io/ccc-manuscript/" />
  <meta name="citation_fulltext_html_url" content="https://greenelab.github.io/ccc-manuscript/" />
  <meta name="citation_pdf_url" content="https://greenelab.github.io/ccc-manuscript/manuscript.pdf" />
  <link rel="alternate" type="application/pdf" href="https://greenelab.github.io/ccc-manuscript/manuscript.pdf" />
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/ccc-manuscript/v/3cd901ec21ce786fd3d662aaab5bee6f562a7af8/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/ccc-manuscript/v/3cd901ec21ce786fd3d662aaab5bee6f562a7af8/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/ccc-manuscript/v/3cd901ec21ce786fd3d662aaab5bee6f562a7af8/manuscript.pdf" />
  <meta property="og:type" content="article" />
  <meta property="twitter:card" content="summary_large_image" />
  <link rel="icon" type="image/png" sizes="192x192" href="https://manubot.org/favicon-192x192.png" />
  <link rel="mask-icon" href="https://manubot.org/safari-pinned-tab.svg" color="#ad1457" />
  <meta name="theme-color" content="#ad1457" />
  <!-- end Manubot generated metadata -->
bibliography:
- content/manual-references-2024-01-05.json
- content/manual-references.json
manubot-output-bibliography: output/references.json
manubot-output-citekeys: output/citations.tsv
manubot-requests-cache-path: ci/cache/requests-cache
manubot-clear-requests-cache: false
...



_A DOI-citable version of this manuscript is available at <https://doi.org/10.1016/j.cels.2024.08.005>_.

<!-- 
<small><em>
This manuscript
([permalink](https://greenelab.github.io/ccc-manuscript/v/3cd901ec21ce786fd3d662aaab5bee6f562a7af8/))
was automatically generated
from [greenelab/ccc-manuscript@3cd901e](https://github.com/greenelab/ccc-manuscript/tree/3cd901ec21ce786fd3d662aaab5bee6f562a7af8)
on September 6, 2024.
</em></small> -->



## Authors



+ **Milton Pividori**
  ^[✉](#correspondence)^<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-3035-4403](https://orcid.org/0000-0002-3035-4403)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [miltondp](https://github.com/miltondp)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [miltondp](https://twitter.com/miltondp)
    · ![Mastodon icon](images/mastodon.svg){.inline_icon width=16 height=16}
    [\@miltondp@genomic.social](https://genomic.social/@miltondp)
    <br>
  <small>
     Department of Biomedical Informatics, University of Colorado School of Medicine, Aurora, CO 80045, USA; Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA
     · Funded by The Gordon and Betty Moore Foundation GBMF 4552; The National Human Genome Research Institute (R01 HG010067); The National Human Genome Research Institute (K99/R00 HG011898); The Eunice Kennedy Shriver National Institute of Child Health and Human Development (R01 HD109765)
  </small>

+ **Marylyn D. Ritchie**
  <br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0002-1208-1720](https://orcid.org/0000-0002-1208-1720)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [MarylynRitchie](https://twitter.com/MarylynRitchie)
    <br>
  <small>
     Department of Genetics, Perelman School of Medicine, University of Pennsylvania, Philadelphia, PA 19104, USA
  </small>

+ **Diego H. Milone**
  <br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0003-2182-4351](https://orcid.org/0000-0003-2182-4351)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [dmilone](https://github.com/dmilone)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [d1001](https://twitter.com/d1001)
    <br>
  <small>
     Research Institute for Signals, Systems and Computational Intelligence (sinc(i)), Universidad Nacional del Litoral, Consejo Nacional de Investigaciones Científicas y Técnicas (CONICET), Santa Fe CP3000, Argentina
  </small>

+ **Casey S. Greene**
  ^[✉](#correspondence)^<br>
    ![ORCID icon](images/orcid.svg){.inline_icon width=16 height=16}
    [0000-0001-8713-9213](https://orcid.org/0000-0001-8713-9213)
    · ![GitHub icon](images/github.svg){.inline_icon width=16 height=16}
    [cgreene](https://github.com/cgreene)
    · ![Twitter icon](images/twitter.svg){.inline_icon width=16 height=16}
    [GreeneScientist](https://twitter.com/GreeneScientist)
    · ![Mastodon icon](images/mastodon.svg){.inline_icon width=16 height=16}
    [\@greenescientist@genomic.social](https://genomic.social/@greenescientist)
    <br>
  <small>
     Center for Health AI, University of Colorado School of Medicine, Aurora, CO 80045, USA; Department of Biomedical Informatics, University of Colorado School of Medicine, Aurora, CO 80045, USA
     · Funded by The Gordon and Betty Moore Foundation (GBMF 4552); The National Human Genome Research Institute (R01 HG010067); The National Cancer Institute (R01 CA237170); The Eunice Kennedy Shriver National Institute of Child Health and Human Development (R01 HD109765)
  </small>


::: {#correspondence}
✉ — Correspondence possible via [GitHub Issues](https://github.com/greenelab/ccc-manuscript/issues)
or email to
Milton Pividori \<milton.pividori@cuanschutz.edu\>, 
Casey S. Greene \<casey.s.greene@cuanschutz.edu\>.


:::


## Abstract {.page_break_before}

Correlation coefficients are widely used to identify patterns in data that may be of particular interest.
In transcriptomics, genes with correlated expression often share functions or are part of disease-relevant biological processes.
Here we introduce the Clustermatch Correlation Coefficient (CCC), an efficient, easy-to-use and not-only-linear coefficient based on clustering.
CCC assumes that if two features are similar, then the clustering of objects using each feature separately should match.
We show that CCC reveals biologically meaningful linear and nonlinear patterns missed by standard, linear-only correlation coefficients.
Moreover, CCC is much faster than state-of-the-art coefficients such as the Maximal Information Coefficient.
When applied to human gene expression data, CCC identifies robust linear relationships while detecting nonlinear patterns associated, for example, with sex differences that are not captured by linear-only coefficients.
Gene pairs highly ranked by CCC were enriched for interactions in integrated networks built from protein-protein interaction, transcription factor regulation, and chemical and genetic perturbations, suggesting that CCC could detect functional relationships that linear-only methods missed.
CCC is a highly-efficient, next-generation not-only-linear correlation coefficient that can readily be applied to genome-scale data and other domains across different data types.


## Introduction

New technologies have vastly improved data collection, generating a deluge of information across different disciplines.
This large amount of data provides new opportunities to address unanswered scientific questions, provided we have efficient tools capable of identifying multiple types of underlying patterns.
Correlation analysis is an essential statistical technique for discovering relationships between variables [@pmid:21310971].
Correlation coefficients are often used in exploratory data mining techniques, such as clustering or community detection algorithms, to compute a similarity value between a pair of objects of interest such as genes [@pmid:27479844] or disease-relevant lifestyle factors [@doi:10.1073/pnas.1217269109].
These coefficients are also used in supervised tasks, for example, for feature selection to improve prediction accuracy [@pmid:27006077; @pmid:33729976].
The Pearson correlation coefficient is ubiquitously deployed across application domains and diverse scientific areas.
Thus, even minor and significant improvements in these techniques could have enormous consequences in industry and research.


In transcriptomics, many analyses start with estimating the correlation between genes.
More sophisticated approaches built on correlation analysis can suggest gene function [@pmid:21241896], aid in discovering common and cell lineage-specific regulatory networks [@pmid:25915600], and capture important interactions in a living organism that can uncover molecular mechanisms in other species [@pmid:21606319; @pmid:16968540].
The analysis of large RNA-seq datasets [@pmid:32913098; @pmid:34844637] can also reveal complex transcriptional mechanisms underlying human diseases [@pmid:27479844; @pmid:31121115; @pmid:30668570; @pmid:32424349; @pmid:34475573].
Since the introduction of the omnigenic model of complex traits [@pmid:28622505; @pmid:31051098], gene-gene relationships are playing an increasingly important role in genetic studies of human diseases [@pmid:34845454; @doi:10.1038/s41467-023-41057-4; @doi:10.1101/2021.10.21.21265342; @doi:10.1038/s41588-021-00913-z], even in specific fields such as polygenic risk scores [@doi:10.1016/j.ajhg.2021.07.003].
In this context, recent approaches combine disease-associated genes from genome-wide association studies (GWAS) with gene co-expression networks to prioritize "core" genes directly affecting diseases [@doi:10.1186/s13040-020-00216-9; @doi:10.1038/s41467-023-41057-4; @doi:10.1101/2021.10.21.21265342].
These core genes are not captured by standard statistical methods but are believed to be part of highly-interconnected, disease-relevant regulatory networks.
Therefore, advanced correlation coefficients could immediately find wide applications across many areas of biology, including the prioritization of candidate drug targets in the precision medicine field.


The Pearson and Spearman correlation coefficients are widely used because they reveal intuitive relationships and can be computed quickly.
However, they are designed to capture linear or monotonic patterns (referred to as linear-only) and may miss complex yet critical relationships.
Novel coefficients have been proposed as metrics that capture nonlinear patterns such as the Maximal Information Coefficient (MIC) [@pmid:22174245] and the Distance Correlation (DC) [@doi:10.1214/009053607000000505].
MIC, in particular, is one of the most commonly used statistics to capture more complex relationships, with successful applications across several domains [@pmid:33972855; @pmid:33001806; @pmid:27006077].
However, the computational complexity makes them impractical for even moderately sized datasets [@pmid:33972855; @pmid:27333001].
Recent implementations of MIC, for example, take several seconds to compute on a single variable pair across a few thousand objects or conditions [@pmid:33972855].
We previously developed a clustering method for highly diverse datasets that outperformed approaches based on Pearson, Spearman, DC and MIC in detecting clusters of simulated linear and nonlinear relationships with varying noise levels [@doi:10.1093/bioinformatics/bty899].


Here we introduce the Clustermatch Correlation Coefficient (CCC), an efficient not-only-linear coefficient that works across quantitative and qualitative variables.
CCC has a single parameter that limits the maximum complexity of relationships found (from linear to more general patterns) and computation time.
CCC provides a high level of flexibility to detect specific types of patterns that are more important for the user, while providing safe defaults to capture general relationships.
We also provide an efficient CCC implementation that is highly parallelizable, allowing to speed up computation across variable pairs with millions of objects or conditions.
To assess its performance, we applied our method to gene expression data from the Genotype-Tissue Expression v8 (GTEx) project across different tissues [@doi:10.1126/science.aaz1776].
CCC captured both strong linear relationships and novel nonlinear patterns, which were entirely missed by standard coefficients.
For example, some of these nonlinear patterns were associated with sex differences in gene expression, suggesting that CCC can capture strong relationships present only in a subset of samples.
We also found that the CCC behaves similarly to MIC in several cases, although it is much faster to compute.
Gene pairs detected in expression data by CCC had higher interaction probabilities in tissue-specific gene networks from the Genome-wide Analysis of gene Networks in Tissues (GIANT) [@doi:10.1038/ng.3259].
Furthermore, its ability to efficiently handle diverse data types (including numerical and categorical features) reduces preprocessing steps and makes it appealing to analyze large and heterogeneous repositories.


## Results


### Overview of CCC: a not-only-linear correlation coefficient

![
**Different patterns across data types.**
Each panel contains a set of simulated datasets described by two generic variables.
**a)** The Anscombe's quartet with four different datasets (from Anscombe I to IV) with numerical variables $x$ and $y$, and 11 data points;
**b)** Four datasets with 100 data points;
**c)** Two datasets with categorical variables $w$ (with values "Orange" and "Blue") and $z$ (with values "A", "B" and "C"), and 100 data points;
**d)** Two datasets with categorical and numerical variables, and 100 data points.
Each panel shows the correlation value using: Pearson ($p$) and Spearman ($s$) for numerical variables only, and CCC ($c$) for both numerical and categorical;
their statistical significance is indicated with asterisks: $P<0.05$ (\*), $P<0.01$ (\*\*), and $P<0.001$ (\*\*\*).
For CCC, we computed the p-value using 10,000 permutations.
Vertical and horizontal red lines show how CCC clustered data points using $x$ and $y$, respectively.
For categorical variables, CCC uses the categories to cluster data points.
](images/intro/relationships.svg "Different patterns across data types"){#fig:datasets_rel width="100%"}


The CCC provides a similarity measure between any pair of variables, either with numerical or categorical values.
The method assumes that if there is a relationship between two variables/features describing $n$ data points/objects, then the **cluster**ings of those objects using each variable should **match**.
In the case of numerical values, CCC uses quantiles to efficiently separate data points into different clusters (e.g., the median separates numerical data into two clusters).
For categorical values, CCC uses the categories themselves to separate data points into different clusters (e.g., if feature "color" has three values, "red", "green", and "blue", then data will be clustered into three clusters defined by those colors).
Once all clusterings are generated according to each variable, we define the CCC as the maximum adjusted Rand index (ARI) [@doi:10.1007/BF01908075] between them, ranging between 0 and 1.
Details of the CCC algorithm can be found in [Methods](#sec:ccc_algo).


We examined how the Pearson ($p$), Spearman ($s$) and CCC ($c$) correlation coefficients behaved on different simulated data patterns.
Figure @fig:datasets_rel shows different types of relationships between two variables of different data types, where $x$ and $y$ are numerical and $w$ and $z$ are categorical.
For each variable pair, we show the coefficient values and their statistical significance, where asterisks indicate different $P$-values ($P$).
The red lines show how CCC clustered numerical data points using $x$ (vertical lines) and $y$ (horizontal lines).


In Figure @{fig:datasets_rel}a, we examine the classic Anscombe's quartet [@doi:10.1080/00031305.1973.10478966], which comprises four synthetic datasets with different patterns but the same data statistics (mean, standard deviation and Pearson's correlation).
This kind of simulated data, recently revisited with the "Datasaurus" [@url:http://www.thefunctionalart.com/2016/08/download-datasaurus-never-trust-summary.html; @doi:10.1145/3025453.3025912; @doi:10.1111/dsji.12233], is used as a reminder of the importance of going beyond simple statistics, where either undesirable patterns (such as outliers) or desirable ones (such as biologically meaningful nonlinear relationships) can be masked by summary statistics alone.
Anscombe I contains a noisy but clear linear pattern, similar to Anscombe III where the linearity is perfect besides one outlier.
In these two examples, CCC separates data points using two clusters (one red line for each variable $x$ and $y$), yielding a statistically significant value of $1.0$ (the maximum for CCC) and thus indicating a strong relationship.
Anscombe II seems to follow a partially quadratic relationship interpreted as linear by Pearson and Spearman.
In contrast, for this potentially undersampled quadratic pattern, CCC yields a lower and not statistically significant value of $0.34$, reflecting a more complex relationship than a linear pattern.
Anscombe IV shows a vertical line of data points where $x$ values are almost constant except for one outlier.
This outlier does not influence CCC (which correctly identifies no relationship) as it does for Pearson or Spearman, although only Pearson yields a statistically significant result.
Thus $c=0.00$ (the minimum value) correctly indicates no association for this variable pair because, besides the outlier, for a single value of $x$ there are ten different values for $y$.
This pair of variables does not fit the CCC assumption: the two clusters formed with $x$ (approximately separated by $x=13$) do not match the three clusters formed with $y$.
The Pearson's correlation coefficient is the same across all these Anscombe's examples ($p=0.82$), whereas Spearman is $0.50$ or greater.


We also simulated additional types of numerical relationships (Figure @{fig:datasets_rel}b), including some previously described from gene expression data [@doi:10.1126/science.1205438; @doi:10.3389/fgene.2019.01410; @doi:10.1091/mbc.9.12.3273].
For the random/independent pair of variables, all coefficients correctly agree with a value close to zero and $P>0.05$.
The non-coexistence pattern, captured by all coefficients, represents a case where one gene ($x$) might be expressed while the other one ($y$) is inhibited, highlighting a potentially strong biological relationship (such as a microRNA negatively regulating another gene).
For the other two examples (quadratic and two-lines), only CCC is able to yield a high and statistically significant correlation value, whereas Pearson and Spearman fail to capture these nonlinear patterns.
These relationships also show how CCC uses different degrees of complexity to capture the relationships.
For the quadratic pattern, for example, CCC separates $x$ into more clusters (four in this case) to reach the maximum ARI.
The two-lines example shows two embedded linear relationships with different slopes, which neither Pearson nor Spearman detect ($p=-0.12$ and $s=0.05$, respectively, both with $P>0.05$).
Here, CCC increases the complexity of the model by using eight clusters for $x$ and six for $y$, resulting in $c=0.31$ ($P<0.001$).


Furthermore, we also simulated categorical variables, which only CCC can handle.
Figure @{fig:datasets_rel}c shows two patterns between variables $w$ (with categories "Orange" and "Blue") and $z$ (with categories "A", "B" and "C").
The first case (Two-Categorical I) represents a random/independent pattern where categorical values in one variable are approximately uniformly distributed across the categorical values of the other variable.
Here, as expected, CCC yield a very low and non-significant value.
In the second case (Two-Categorical II), the category "Blue" of $w$ is overrepresented in data points with $z$ equal to "A" and, less strongly, the category "Orange" of $w$ is overrepresented in data points with $z$ equal to "B".
In this case, since CCC clusters data points using the categorical values, it detects that clusters of data points with $w$="Blue" match clusters with $z$="A", yielding a statistically significant $c=0.21$.
Figure @{fig:datasets_rel}d mixes a categorical variable ($z$) with a numerical one ($y$).
The first case (Categorical-Numerical I) represents a random/independent pattern where numerical values in $y$ are approximately uniformly distributed across the categorical values in $z$.
Similarly as in the other random/independent cases, CCC yields a very low and non-significant value, since the clusters formed by $y$ do not match the clusters (given by the categorical values) formed by $z$.
Conversely, in the second case (Categorical-Numerical II), clusters of data points with similar values in $y$ tend to have also similar categorical values in $z$.
In this example, for data points with $z$="A", we assigned $y \sim \mathcal{N}(0, 0.5^2)$, whereas for $z$="B" and "C", we assigned $y \sim \mathcal{N}(1, 0.25^2)$ and $y \sim \mathcal{N}(1, 0.75^2)$, respectively.
Here, CCC uses $y$ values to group data points into two clusters, and these clusters match the clusters obtained from $z$, yielding a statistically significant $c=0.30$.


### The CCC reveals linear and nonlinear patterns in human transcriptomic data

We next examined the characteristics of these correlation coefficients in gene expression data from GTEx v8 across different tissues.
For our initial analyses, we selected the top 5,000 genes with the largest variance on whole blood and then computed the correlation matrix between genes using Pearson, Spearman and CCC (see [Methods](#sec:data_gtex)).
Although we always considered the statistical significance of the coefficients, we focused on the strength of the association (i.e., the coefficient value) for our analyses.


We examined the distribution of each coefficient's absolute values in GTEx (Figure @fig:dist_coefs).
CCC (mean=0.14, median=0.08, sd=0.15) has a much more skewed distribution than Pearson (mean=0.31, median=0.24, sd=0.24) and Spearman (mean=0.39, median=0.37, sd=0.26).
The coefficients reach a cumulative set containing 70% of gene pairs at different values (Figure @{fig:dist_coefs}b), $c=0.18$, $p=0.44$ and $s=0.56$, suggesting that for this type of data, the coefficients are not directly comparable by magnitude, so we used ranks for further comparisons.
In GTEx v8, CCC values were closer to Spearman than either was to Pearson (Figure @{fig:dist_coefs}c).
We also compared with the Maximal Information Coefficient (MIC) (see [Methods](#sec:mic)), another advanced, not-only-linear correlation coefficient that has been successfully used in various application domains [@pmid:33972855; @pmid:33001806; @pmid:27006077].
We found that CCC behaved very similarly to MIC, although CCC was up to two orders of magnitude faster to run (see [Methods](#sec:time_test)).
These results suggest that our findings for CCC generalize to MIC, therefore, in the subsequent analyses we focus on CCC and linear-only coefficients.


![
**Distribution of coefficient values on gene expression (GTEx v8, whole blood).**
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/dist-main.svg "Distribution of coefficient values"){#fig:dist_coefs width="100%"}


A closer inspection of gene pairs that were either prioritized or disregarded by these coefficients revealed that they captured different patterns.
We analyzed the agreements and disagreements by obtaining, for each coefficient, the top 30% of gene pairs with the largest correlation values ("high" set) and the bottom 30% ("low" set), resulting in six potentially overlapping categories (Supplementary Files 1 and 2).
For most cases (76.4%), an UpSet analysis [@doi:10.1109/TVCG.2014.2346248] (Figure @{fig:upsetplot_coefs}a) showed that the three coefficients agreed on whether there is a strong correlation (42.1%) or there is no relationship (34.3%).
Since Pearson and Spearman are linear-only, and CCC can also capture these patterns, we expect that these concordant gene pairs represent clear linear patterns.
CCC and Spearman agree more on either highly or poorly correlated pairs (4.0% in "high", and 7.0% in "low") than any of these with Pearson (all between 0.3%-3.5% for "high", and 2.8%-5.5% for "low").
In summary, CCC agrees with either Pearson or Spearman in 90.5% of gene pairs by assigning a high or a low correlation value.

![
**Intersection of gene pairs with high and low correlation coefficient values (GTEx v8, whole blood).**
**a)** UpSet plot with six categories (rows) grouping the 30% of the highest (green triangle) and lowest (red triangle) values for each coefficient.
Columns show different intersections of categories grouped by agreements and disagreements.
**b)** Hexagonal binning plots with examples of gene pairs where CCC ($c$) disagrees with Pearson ($p$) and Spearman ($s$).
For each method, colors in the triangles indicate if the gene pair is among the top (green) or bottom (red) 30% of coefficient values.
No triangle means that the correlation value for the gene pair is between the 30th and 70th percentiles (neither low nor high).
The statistical significance is indicated with asterisks using the False Discovery Rate (FDR) adjusted $P$-values, calculated using the Benjamini and Hochberg method [@doi:10.1111/j.2517-6161.1995.tb02031.x]: $\mathrm{FDR}<0.05$ (\*), $\mathrm{FDR}<0.01$ (\*\*), and $\mathrm{FDR}<0.001$ (\*\*\*).
A logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/upsetplot-main.svg "Intersection of gene pairs"){#fig:upsetplot_coefs width="100%"}


While there was broad agreement, more than 20,000 gene pairs with a high CCC value were not highly ranked by the other coefficients ("Disagreements" group on the right of Figure @{fig:upsetplot_coefs}a).
There were also gene pairs with a high Pearson value and either low CCC (1,075), low Spearman (87) or both low CCC and low Spearman values (531).
No gene pairs were found to have a high Spearman value and a low CCC.
Considering the correlation values and their statistical significance, we analyzed gene pairs among the top ten of each intersection in the "Disagreements" group (Figure @{fig:upsetplot_coefs}a, right) where CCC disagrees with Pearson, Spearman or both.

![
**The expression levels of *KDM6A* and *UTY* display sex-specific associations across GTEx tissues.**
CCC captures this nonlinear relationship in all GTEx tissues (nine examples are shown in the first three rows), except in female-specific organs (last row).
](images/coefs_comp/kdm6a_vs_uty/gtex-KDM6A_vs_UTY-main.svg "KDM6A and UTY across different GTEx tissues"){#fig:gtex_tissues:kdm6a_uty width="95%"}


The first two gene pairs at the top of Figure @{fig:upsetplot_coefs}b (*IFNG* - *SDS*, with high CCC and Spearman, and low Pearson; *PRSS36* - *CCL18*, with high CCC and low Pearson) appear to follow a non-coexistence relationship: in samples where one of the genes is highly expressed, the other is slightly activated, suggesting a potentially inhibiting effect.
The following four gene pairs (*UTY* - *KDM6A*, *DDX3Y* - *KDM6A*, *RASSF2* - *CYTIP*, and *AC068580.6* - *KLHL21*) follow patterns combining either two linear or one linear and one independent relationships.
In particular, genes *UTY* - *KDM6A* (paralogs) and *DDX3Y* - *KDM6A* show a nonlinear relationship where a subset of samples follows a robust linear pattern and another subset has a constant (independent) expression of one gene.
The relationships in these two gene pairs are explained by sex differences in expression: *UTY* and *DDX3Y* are in chromosome Y (Yq11) whereas *KDM6A* is in chromosome X (Xp11), and therefore samples with a linear pattern are males, whereas those with no expression for *UTY* or *DDX3Y* are females.
Furthermore, for this sex-specific gene pair pattern, CCC yields a statistically significant coefficient value in 45 out of 47 tissues in GTEx, except for female-specific organs (Figure @fig:gtex_tissues:kdm6a_uty and @fig:gtex_tissues:kdm6a_ddx3y, and Supplementary File 3).
The gene pair *RASSF2* - *CYTIP* was replicated in an independent dataset as we explain later.
Even though we have not found a biological explanation for gene pair *AC068580.6* - *KLHL21* (there is limited information about *AC068580.6*, ENSG00000235027, a long non-coding RNA), its strong nonlinear connection with *KLHL21* (linked with some cancers [@pmid:27769251]) is robustly captured by CCC only.
Notably, these four gene pairs contain strong linear relationships and CCC is the only coefficient able to consistently capture these nonlinear patterns across a variety of tissues with a statistically significant and high correlation value.
Pearson and Spearman show a statistically significant correlation value for some of these gene pairs, although these values are low and would very likely not be prioritized for further research.
In addition, these two linear-only coefficients are unable to robustly capture the same pattern in other tissues (Figure @fig:gtex_tissues:kdm6a_uty and @fig:gtex_tissues:kdm6a_ddx3y, and Supplementary File 3).
For instance, although the three coefficients are statistically significant in whole blood for the gene pair *UTY* - *KDM6A*, Pearson and Spearman fail to capture the same pattern in the brain cerebellum, and in many cases, such as small intestine, the sign of the coefficient is negative despite the strong positive linear correlation among male samples (Figure @fig:gtex_tissues:kdm6a_uty).


Finally, the last two gene pairs in Figure @{fig:upsetplot_coefs}b are highly ranked by Pearson, but not by CCC or Spearman.
Although all coefficients are significant for the gene pair *MYOZ1* - *TNNI2*, the low CCC ($c=0.03$) and moderate Spearman ($s=0.28$) contrast with Pearson's ($p=0.97$), suggesting a statistically significant but very weak linear relationship.
The high and statistically significant Pearson value for *SCGB3A1* - *C19orf33* seems to be driven by outliers.


### Replication of gene associations using tissue-specific gene networks from GIANT

We sought to systematically analyze discrepant scores to assess whether associations were replicated in other datasets besides GTEx.
This is challenging and prone to bias because linear-only correlation coefficients are usually used in gene co-expression analyses.
Therefore, we used 144 tissue-specific gene networks from the Genome-wide Analysis of gene Networks in Tissues (GIANT) project [@pmcid:PMC4828725; @url:https://hb.flatironinstitute.org], where nodes represent genes and each edge a functional relationship weighted with a probability of interaction between two genes (see [Methods](#sec:giant)).
The version of GIANT used in this study did not include GTEx samples [@url:https://hb.flatironinstitute.org/data], making it an ideal case for replication.
These networks were built from expression and different interaction measurements, including protein-interaction, transcription factor regulation, chemical/genetic perturbations and microRNA target profiles from the Molecular Signatures Database (MSigDB [@pmid:16199517]).
We reasoned that statistically significant and highly-ranked gene pairs using three different coefficients in a single tissue (whole blood in GTEx, Figure @fig:upsetplot_coefs) that represented real patterns should often replicate in a corresponding tissue or related cell lineage using the multi-cell type functional interaction networks in GIANT.
In addition to predicting a network with interactions for a pair of genes, the GIANT web application can also automatically detect a relevant tissue or cell type where genes are predicted to be specifically expressed (the approach uses a machine learning method introduced in [@doi:10.1101/gr.155697.113] and described in [Methods](#sec:giant)).


As an example of our evaluation procedure, we obtained the networks in blood and the automatically-predicted cell type for gene pairs *RASSF2* - *CYTIP* (strong nonlinear pattern and CCC high, Figure @{fig:giant_gene_pairs}a) and *MYOZ1* - *TNNI2* (weak linear pattern and Pearson high, Figure @{fig:giant_gene_pairs}b).
In addition to the gene pair, the networks include other genes connected according to their probability of interaction (up to 15 additional genes are shown), which allows estimating whether genes are part of the same tissue-specific biological process.
Two large black nodes in each network's top-left and bottom-right corners represent our gene pairs.
A green edge means a close-to-zero probability of interaction, whereas a red edge represents a strong predicted relationship between the two genes.
In this example, genes *RASSF2* and *CYTIP* (Figure @{fig:giant_gene_pairs}a), with a high CCC value ($c=0.20$, above the 73th percentile) and low Pearson and Spearman ($p=0.16$ and $s=0.11$, below the 38th and 17th percentiles, respectively), were both strongly connected to the blood network, with interaction scores of at least 0.69 and an average of 0.77 and 0.85, respectively (Supplementary Table @tbl:giant:weights).
The autodetected cell type for this pair was leukocytes, and interaction scores were similar to the blood network (Supplementary Table @tbl:giant:weights).
However, genes *MYOZ1* and *TNNI2*, with a very high Pearson value ($p=0.97$), moderate Spearman ($s=0.28$) and very low CCC ($c=0.03$), were predicted to belong to much less cohesive networks (Figure @{fig:giant_gene_pairs}b), with average interaction scores of 0.17 and 0.22 with the rest of the genes, respectively.
Additionally, the autodetected cell type (skeletal muscle) is not related to blood or one of its cell lineages.
These preliminary results suggested that CCC might be capturing blood-specific patterns missed by the other coefficients.

![
**Analysis of GIANT tissue-specific predicted networks for gene pairs prioritized by correlation coefficients.**
**a-b)** Two gene pairs prioritized by correlation coefficients (from Figure @{fig:upsetplot_coefs}b) with their predicted networks in blood (left) and an automatically selected tissue/cell type (right) using the method described in [@doi:10.1101/gr.155697.113].
A node represents a gene and an edge the probability that two genes are part of the same biological process in a specific cell type.
A maximum of 15 genes are shown for each network.
The GIANT web application automatically determined a minimum interaction confidence (edges' weights) to be shown.
These networks can be analyzed online using the following links:
*RASSF2* - *CYTIP* [@url:https://hb.flatironinstitute.org/gene/9770+9595],
*MYOZ1* - *TNNI2* [@url:https://hb.flatironinstitute.org/gene/58529+7136].
**c)** Summary of predicted tissue/cell type networks for gene pairs exclusively prioritized by CCC and Pearson ($\mathrm{FDR}<0.05$).
The first row combines all gene pairs where CCC is high, and Pearson and Spearman are not.
The second row combines all gene pairs where Pearson is high, and CCC and Spearman are not.
Bar plots (left) show the number of gene pairs for each predicted tissue/cell type.
Box plots (right) show the average probability of interaction between genes in these predicted tissue-specific networks.
Red indicates CCC-only tissues/cell types, blue are Pearson-only, and purple are shared.
](images/coefs_comp/giant_networks/top_gene_pairs-main.svg "GIANT network interaction on gene pairs"){#fig:giant_gene_pairs width="100%"}


We next performed a systematic evaluation using the top 100 discrepant gene pairs between CCC and the other two coefficients.
For each gene pair prioritized in GTEx (whole blood), we autodetected a relevant cell type using GIANT to assess whether genes were predicted to be specifically expressed in a blood-relevant cell lineage.
For this, we used the top five most commonly autodetected cell types for each coefficient and assessed connectivity in the resulting networks (see [Methods](#sec:giant)).
The top 5 predicted cell types for gene pairs highly ranked by CCC and not by the rest were all blood-specific (Figure @{fig:giant_gene_pairs}c, top left), including macrophage, leukocyte, natural killer cell, blood and mononuclear phagocyte.
The average probability of interaction between genes in these CCC-ranked networks was significantly higher than the other coefficients (Figure @{fig:giant_gene_pairs}c, top right), with all medians larger than 67% and first quartiles above 41% across predicted cell types.
In contrast, most Pearson's gene pairs were predicted to be specific to tissues unrelated to blood (Figure @{fig:giant_gene_pairs}c, bottom left), with skeletal muscle being the most commonly predicted tissue.
The interaction probabilities in these Pearson-ranked networks were also generally lower than in CCC, except for blood-specific gene pairs (Figure @{fig:giant_gene_pairs}c, bottom right).


The associations exclusively detected by CCC in whole blood from GTEx were more strongly replicated in these independent networks that incorporated multiple data modalities.
CCC-ranked gene pairs not only had higher probabilities of belonging to the same biological process but were also predicted to be specifically expressed in blood cell lineages.
Conversely, most Pearson-ranked gene pairs were not predicted to be blood-specific, and their interaction probabilities were relatively much lower.
This lack of replication in GIANT suggests that top Pearson-exclusive-ranked gene pairs in GTEx might be driven mainly by outliers, which is consistent with our earlier observations of outlier-driven associations (Figure @{fig:upsetplot_coefs}b).


## Discussion

We introduce the Clustermatch Correlation Coefficient (CCC), an efficient not-only-linear clustering-based statistic.
Applying CCC to GTEx v8 revealed that it was robust to outliers and detected linear relationships as well as complex and biologically meaningful patterns that standard coefficients missed.
In particular, CCC alone detected gene pairs with complex nonlinear patterns from the sex chromosomes, highlighting the way that not-only-linear coefficients can play in capturing sex-specific differences.
The ability to capture these nonlinear patterns, however, extends beyond sex differences: it provides a powerful approach to detect potentially complex relationships where a subset of samples or conditions are explained by other factors (such as differences between health and disease).
We found that top CCC-ranked gene pairs in whole blood from GTEx were replicated in independent tissue-specific networks trained from multiple data types and attributed to cell lineages from blood, even though CCC did not have access to any cell lineage-specific information.
This suggests that CCC can disentangle intricate cell lineage-specific transcriptional patterns missed by linear-only coefficients.
In addition to capturing nonlinear patterns, the CCC was more similar to Spearman than Pearson, highlighting their shared robustness to outliers.
The CCC results were concordant with MIC, but much faster to compute and thus practical for large datasets.
Another advantage over MIC and standard coefficients is that CCC can also process categorical variables together with numerical values.
CCC is conceptually easy to interpret and has a single parameter that controls the maximum complexity of the detected relationships while also balancing compute time.


Datasets such as Anscombe or "Datasaurus" highlight the value of visualization instead of relying on simple data summaries.
While visual analysis is helpful, for many datasets examining each possible relationship is infeasible, and this is where more sophisticated and robust correlation coefficients are necessary.
Advanced yet interpretable coefficients like CCC can focus human interpretation on patterns that are more likely to reflect real biology.
The complexity of these patterns might reflect heterogeneity in samples that mask clear relationships between variables.
For example, genes *UTY* - *KDM6A* (from sex chromosomes), detected by CCC, have a strong linear relationship but only in a subset of samples (males), which was not captured by linear-only coefficients.
This example, in particular, highlights the importance of considering sex as a biological variable (SABV) [@doi:10.1038/509282a] to avoid overlooking important differences between men and women, for instance, in disease manifestations [@doi:10.1210/endrev/bnaa034; @doi:10.1038/s41593-021-00806-8].
More generally, a not-only-linear correlation coefficients that support categorical variables like CCC could identify significant differences between variables (such as genes) that are explained by a third factor (beyond sex differences), that would be entirely missed by linear-only coefficients.


It is well-known that biomedical research is biased towards a small fraction of human genes [@pmid:17620606; @pmid:17472739].
Some genes highlighted in CCC-ranked pairs (Figure @{fig:upsetplot_coefs}b), such as *SDS* (12q24) or *PRSS36* (16p11), were previously found to be the focus of fewer than expected publications [@pmid:30226837].
It is possible that the widespread use of linear coefficients may bias researchers away from genes with complex coexpression patterns.
A beyond-linear gene co-expression analysis on large compendia might shed light on the function of understudied genes.
For example, gene *KLHL21* (1p36) and *AC068580.6* (a long non-coding RNA gene in 11p15) have a high CCC value and are missed by the other coefficients.
*KLHL21* was suggested as a potential therapeutic target for hepatocellular carcinoma [@pmid:27769251] and other cancers [@pmid:29574153; @pmid:35084622].
Its nonlinear correlation with *AC068580.6* might unveil other important players in cancer initiation or progression, potentially in subsets of samples with specific characteristics (as suggested in Figure @{fig:upsetplot_coefs}b).


Not-only-linear correlation coefficients might also be helpful in the field of genetic studies.
In this context, genome-wide association studies (GWAS) have been successful in understanding the molecular basis of common diseases by estimating the association between genotype and phenotype [@doi:10.1016/j.ajhg.2017.06.005].
However, the estimated effect sizes of genes identified with GWAS are generally modest, and they explain only a fraction of the phenotype variance, hampering the clinical translation of these findings [@doi:10.1038/s41576-019-0127-1].
Recent theories, like the omnigenic model for complex traits [@pmid:28622505; @pmid:31051098], argue that these observations are explained by highly-interconnected gene regulatory networks, with some core genes having a more direct effect on the phenotype than others.
Using this omnigenic perspective, we and others [@doi:10.1038/s41467-023-41057-4; @doi:10.1186/s13040-020-00216-9; @doi:10.1101/2021.10.21.21265342] have shown that integrating gene co-expression networks with genetic studies could potentially identify core genes that are missed by linear-only models alone like GWAS.
Our results suggest that building these networks with the latest approaches [@doi:10.1093/bib/bbab495] and advanced and efficient correlation coefficients could better estimate gene co-expression profiles and thus more accurately identify these core genes.
Approaches like CCC could play a significant role in the precision medicine field by providing the computational tools to focus on more promising genes representing potentially better candidate drug targets.


Our analyses have some limitations.
We worked on a sample with the top variable genes in a single tissue from GTEx to keep computation time feasible.
Although CCC is much faster than MIC, Pearson and Spearman are still the most computationally efficient since they only rely on simple data statistics.
Our results, however, reveal the advantages of using more advanced coefficients like CCC for detecting and studying more intricate molecular mechanisms that are replicated in independent datasets.
The application of CCC on larger compendia, such as recount3 [@pmid:34844637] with thousands of heterogeneous samples across different conditions, can reveal other potentially meaningful gene interactions.
We compute $P$-values using computationally intensive permutation tests; in the future, we plan to explore efficient permutation approaches such as those based on extreme value theory [@doi:10.1093/bioinformatics/btp211].
The single parameter of CCC, $k_{\mathrm{max}}$, controls the maximum complexity of patterns found and also impacts the compute time.
Our analysis suggested that $k_{\mathrm{max}}=10$ was sufficient to identify both linear and more complex patterns in gene expression.
A more comprehensive analysis of optimal values for this parameter could provide insights to adjust it for different applications or data types.
Finally, computing the correlation between a gene pair represents only the first step of the analysis.
Controlling for known confounders, integrating with other data types, and replicating in independent datasets are some of the other important steps to ensure the biological relevance of the detected patterns.


While linear and rank-based correlation coefficients are exceptionally fast to calculate, not all relevant patterns in biological datasets are linear.
For example, patterns associated with sex as a biological variable are not apparent to the linear-only coefficients that we evaluated but are revealed by not-only-linear methods.
Beyond sex differences, being able to use a method that inherently identifies patterns driven by other factors is likely to be desirable.
Not-only-linear coefficients can also disentangle intricate yet relevant patterns from expression data alone that were replicated in models integrating different data modalities.
CCC, in particular, is highly parallelizable, and we anticipate efficient GPU-based implementations that could make it even faster.
The CCC is an efficient, next-generation correlation coefficient that is highly effective in transcriptome analyses and potentially useful in a broad range of other domains.


## Acknowledgments

This work has been supported by
the Gordon and Betty Moore Foundation (GBMF 4552 to C.S. Greene),
the National Human Genome Research Institute (R01 HG010067 to C.S. Greene, K99 HG011898 and R00 HG011898 to M. Pividori),
the National Cancer Institute (R01 CA237170 to C.S. Greene),
the Eunice Kennedy Shriver National Institute of Child Health and Human Development (R01 HD109765 to C.S. Greene).

### Author contributions

C.S.G. and D.H.M. supervised the project.
M.P. conceived the study, developed the methodology, performed the analysis, and drafted the manuscript.
C.S.G., D.H.M. and M.D.R. provided critical feedback about the methodology, analyses performed and manuscript writing.

### Declaration of interests

The authors declare no competing interests.


## STAR★Methods {#sec:methods .page_break_before}

### Resource availability

#### Lead contact

Further information and requests for resources and reagents should be directed to and will be fulfilled by the Lead Contact, Milton Pividori (milton.pividori@cuanschutz.edu).

#### Materials availability

This study did not generate new materials.

#### Data and code availability

* This paper analyzes existing, publicly available data. These accession numbers for the datasets are listed in the key resources table.
* All original code has been deposited at [https://github.com/greenelab/ccc](https://github.com/greenelab/ccc) and Zenodo: 13304247, and is publicly available as of the date of publication. DOIs are listed in the key resources table.
* Any additional information required to reanalyze the data reported in this paper is available from the lead contact upon request.


### Method details

#### Data preprocessing {#sec:data_gtex}

We downloaded gene expression data from GTEx v8 ([https://gtexportal.org/](https://gtexportal.org/)) for all tissues, normalized using TPM (transcripts per million), and focused our primary analysis on whole blood, which has a good sample size (755).
We selected the top 5,000 genes from whole blood with the largest variance after standardizing with $log(x + 1)$ to avoid a bias toward highly expressed genes.
We then computed Pearson [@doi:10.1038/s41592-019-0686-2; @Sklearn2011], Spearman [@doi:10.1038/s41592-019-0686-2; @Sklearn2011], the Maximal Information Coefficient (MIC) [@Reshef2016] and CCC on these 5,000 genes across all 755 samples, generating a pairwise similarity matrix of size 5,000 x 5,000.

#### The Clustermatch Correlation Coefficient (CCC) {#sec:ccc_algo}

##### Definitions

**Definition 1.1.** Given a data vector $\mathbf{x}=(x_{1},x_{2},\dots,x_{n}) \in \mathbb{R}^n$ then define

$$\pi_{\ell} = \{i \mid \rho_\ell < x_{i} \leq \rho_{\ell+1}\}, \forall \ell \in \left[1,k\right]$$

as a *partition* of the $n$ objects of $\mathbf{x}$ into $\left\vert\pi\right\vert=k$ clusters, where $\boldsymbol{\rho}$ is a set of $k+1$ cutpoints (e.g., quantiles) that define the clusters, with $\rho_{1} = \min(\mathbf{x})$ and $\rho_{k+1} = \max(\mathbf{x})$.
If $\mathbf{x}$ is a categorical vector with no intrinsic ordering, then a partition is defined as

$$\pi_{\ell} = \{i \mid x_{i} = \mathcal{C}_{\ell}\}, \forall \ell \in \left[1,\lvert\mathcal{C}\rvert\right]$$

where $\mathcal{C} = \{c_1, c_2,\dots,c_m\}$ is a set of unique values in $\mathbf{x}$ corresponding to the $m = \lvert\mathcal{C}\rvert$ categorical values that define the clusters.

**Definition 1.2.** Given two partitions $\pi$ and $\pi^{\prime}$ of $n$ objects, the *adjusted Rand Index (ARI)* [@doi:10.1007/BF01908075] is given by

$$\textrm{ARI}(\pi, \pi^{\prime}) = \frac{2(n_{0}n_{1} - n_{2} n_{3})}{(n_0 + n_2)(n_2 + n_1) + (n_0 + n_3)(n_3 + n_1)},$$

where $n_{0}$ is the number of object pairs that are in the same cluster in both partitions $\pi$ and $\pi^{\prime}$,
$n_{1}$ is the number of object pairs that are in different clusters,
$n_{2}$ is the number of object pairs that are in the same cluster in $\pi$ but in different clusters in $\pi^{\prime}$,
and $n_{3}$ is the number of object pairs that are in different clusters in $\pi$ but in the same cluster in $\pi^{\prime}$.
Intuitively, $n_0 + n_1$ reflects the number of object pairs where both partitions agree, and $n_2 + n_3$ are those in which they disagree.

**Definition 1.3.** The *Clustermatch Correlation Coefficient (CCC)* between $\mathbf{x}$ and $\mathbf{y}$ is defined as the maximum ARI between all possible partitions of $\mathbf{x}$ and $\mathbf{y}$

$$\textrm{CCC}(\mathbf{x}, \mathbf{y}) = \max \lbrace 0, \max_{\substack{\pi_j \in \Pi^{\mathbf{x}} \\ \pi_l \in \Pi^{\mathbf{y}}}} \lbrace \textrm{ARI}(\pi_j, \pi_l) \rbrace \rbrace, \forall \left\vert\pi\right\vert \in [2, k_{\mathrm{max}}]$$

where $\Pi^{\mathbf{x}}$ is a set of partitions derived from $\mathbf{x}$, $\Pi^{\mathbf{y}}$ is a set of partitions derived from $\mathbf{y}$, and $k_{\mathrm{max}}$ specifies the maximum number of clusters allowed.
The ARI has an upper bound of 1 (achieved when both partitions are identical), and although it does not have a well-defined lower bound, values equal or less than zero are achieved when partitions are independent.
Therefore, $\textrm{CCC}(\mathbf{x}, \mathbf{y}) \in \left[0,1\right]$.
In the special case where all $n$ objects in either $\mathbf{x}$ or $\mathbf{y}$ have the same value, the CCC is undefined.


The CCC has the following basic properties derived from the ARI:
1) symmetry, since $\mathrm{ARI}(\pi, \pi^{\prime}) = \mathrm{ARI}(\pi^{\prime}, \pi)$;
2) normalization, since it takes a minimum value of zero and a maximum of one since $\mathrm{ARI}(\pi, \pi) = 1$;
3) constant baseline, since the ARI is adjusted-for-chance [@doi:10.1007/BF01908075], it returns a value close to zero for independently drawn partitions, and this also holds when partitions have different number of clusters [@Vinh2010].
This is an important property, since CCC compares partitions with different numbers of clusters, and relationships between two variables (such as linear or quadratic) might be better represented with different numbers of clusters as shown in Figure @fig:datasets_rel.

##### The maximum number of clusters $k_{\mathrm{max}}$

The parameter $k_{\mathrm{max}}$ is the maximum number of clusters $k$ allowed for any partition derived from $\mathbf{x}$ or $\mathbf{y}$.
On one hand, note that the same value of $k$ might not be the right one to find a relationship between any two variables.
For instance, in the quadratic example in Figure @fig:datasets_rel, CCC returns a value of 0.36 (grouping objects in four clusters using one variable and two using the other).
If we used only two clusters instead, CCC would return a similarity value of 0.02.
On the other hand, computational time increases quadratically with $k_{\mathrm{max}}$.
In addition, it is important to note that given the constant baseline property of the ARI, the CCC returns a value close to zero for independent variables regardless of the value of $k_{\mathrm{max}}$.
As shown in Figure @fig:constant_baseline:k_max, this holds even for very large values of $k_{\mathrm{max}}$, approaching the number of objects $n$.
Note that as $k_{\mathrm{max}}$ approaches $n$, the number of singleton clusters (i.e., clusters with only one object) increases, which would not be useful for finding relationships between variables.
Therefore, given the constant baseline property, $k_{\mathrm{max}}$ only represents a tradeoff between the ability to capture complex patterns and the computational cost, with random/independent variables having a CCC value close to zero regardless of the value of $k_{\mathrm{max}}$; we found that $k_{\mathrm{max}}=10$ works well in practice, and it was used as the default maximum number of clusters across all our analyses.

##### Statistical significance

Our null hypothesis is that the variables represented by $\mathbf{x}$ and $\mathbf{y}$ are independent.
To compute a $P$-value, we perform a set of permutations of values in $\mathbf{y}$ and compute the CCC between $\mathbf{x}$ and each permuted vector.
The $P$-value is the proportion of CCC values using the permuted data that are greater than or equal to the CCC value between $\mathbf{x}$ and $\mathbf{y}$.
We used 1 million permutations in all our analyses, and we adjusted the $P$-values using the Benjamini and Hochberg procedure [@doi:10.1111/j.2517-6161.1995.tb02031.x] to control the false discovery rate (FDR);
given the computational cost, we computed a $P$-value only for gene pairs from the "Disagreements" group in Figure @fig:upsetplot_coefs, which contains gene pairs ranked differently by the correlation coefficients.

##### Algorithm

<!-- The Latex code for the algorithm is here: https://www.overleaf.com/project/61b8c643eb0ed41c2d8aaadc -->
![
](images/intro/ccc_algorithm/ccc_algorithm.svg "CCC algorithm"){width="75%"}

The main function of the algorithm, `ccc`, generates a set of partitions $\Pi^{\mathbf{x}}$ for variable $\mathbf{x}$ (line 16), and another set of partitions $\Pi^{\mathbf{y}}$ for variable $\mathbf{y}$ (line 17).
Then, it computes the ARI between each partition $\pi_j \in \Pi^{\mathbf{x}}$ and $\pi_l \in \Pi^{\mathbf{y}}$ and gets the maximum (line 18), returning either this value or zero if this is negative (line 19).


Since CCC only needs a set of partitions to compute a correlation value, any type of variable that can be used to perform clustering is supported.
If variable $\mathbf{v}$ is numerical (lines 2 to 6 in the `get_partitions` function), each partition $\pi$ is generated using a set of quantiles $\boldsymbol{\rho}$.
For example, if $k=2$, then $\boldsymbol{\rho}=(\rho_1, \rho_2, \rho_3)$, where $\rho_1$ is the minimum value of $\mathbf{v}$, $\rho_2$ is the median, and $\rho_3$ is the maximum value of $\mathbf{v}$.
Then, the first cluster $\pi_{1}$ contains all values of $\mathbf{v}$ that are less than or equal to $\rho_2$, and $\pi_2$ contains all values of $\mathbf{v}$ that are greater than $\rho_2$.
If variable $\mathbf{v}$ is categorical (lines 8 to 11), we compute a single partition $\pi$ with $m=\left\vert\mathcal{C}\right\vert$ clusters, where $\mathcal{C} = \{c_1, c_2,\dots,c_m\}$ is a set of unique categorical values in $\mathbf{v}$.
Therefore, all variable types are internally represented as partitions and it is not necessary to access the original data values to compute the ARI.
Consequently, numerical and categorical variables can be naturally integrated.


Our algorithm implementation uses $k_{\mathrm{max}}=10$ as the default.
This means that for a variable pair, 18 partitions are generated (9 for each variable, from $k=2$ to $k=10$), and 81 ARI comparisons are performed.
Smaller values of $k_{\mathrm{max}}$ can reduce computation time, although at the expense of missing more complex/general relationships.
Our examples in Figure @fig:datasets_rel suggest that using $k_{\mathrm{max}}=2$ would force CCC to find linear-only patterns, which could be a valid use case scenario where only this kind of relationships are desired.
In addition, $k_{\mathrm{max}}=2$ implies that only two partitions are generated, and only one ARI comparison is performed.


As a final remark, generating partitions (lines 15 and 16) and computing their similarity (line 17) can be easily parallelized.
We used three CPU cores in our analyses to speed up the computation of CCC and this could be potentially extended to a large number of processors using a GPU.

##### Strength of linear correlation

Figure @fig:gtex_tissues:kdm6a_uty shows the relationships between *UTY* (chromosome Y) and *KDM6A* (chromosome X) across tissues in GTEx.
For this gene pair, CCC can find a complex pattern where a subset of samples (males) follows a clear linear relationship, and there is no relationship in the rest of the samples (females).
As it can be seen, there is a difference in the strength of the linear correlation between male samples across different tissues.
For example, in brain cerebellum, the linear correlation among male samples is stronger than in small intestine (terminal ileum).
As shown in Figure @{fig:linear_in_nonlinear}a, this difference is reflected by all coefficients when only male samples are considered.

However, when we consider all samples (males and females), there is no longer a linear relationship between *UTY* and *KDM6A*.
Therefore, while a subset of the data displays linear relationships, overall, it is no longer true that there is a linear correlation.
CCC assumes that if two variables (genes in our case) are similar, the clustering of objects (samples) using each variable separately should match.
As shown in Figure @{fig:linear_in_nonlinear}a with red lines, this clustering of samples and their matching can be seen for the gene pair *UTY* / *KDM6A*: when we only consider male samples, CCC finds clusterings in brain cerebellum with a larger matching than in small intestine because the linear strength differs.
But when we consider all samples together (males and females, as shown in Figure @{fig:linear_in_nonlinear}b), the pattern is nonlinear, the distribution of all the data is different, and so are the clusterings found by CCC.

The effect of analyzing *all* the data (males and females) in this nonlinear pattern (Figure @fig:gtex_tissues:kdm6a_uty) is also clear in the negative sign of Pearson and Spearman coefficients in small intestine or even other tissues with a very strong and clear linear pattern among male samples such as breast mammary tissue.
This case indicates that Pearson and Spearman, although statistically significant, are capturing the wrong pattern.
Therefore, the fact that CCC yields a similar value (0.19) for these nonlinear patterns in brain cerebellum and small intestine (Figure @{fig:linear_in_nonlinear}b) reflects a similar clustering matching when considering all the samples.
When applied only to the data with linear relationships of varying strength, CCC performs consistently with other coefficients.

##### Presence of substructure in the data

Consider a scenario where there are known and undesirable substructures in the data.
In the example in Figure @fig:substructure, we have simulated two distinct clusters (normally distributed) placed diagonally, horizontally, and vertically.
The only case where the CCC is close to 1.0 (Diagonal, left) is when the clusterings/partitions of objects using each variable ($x$ and $y$) match, which coincides with a linear pattern.
In the other two cases (Horizontal and Vertical), clusterings of objects do not match, leading to a CCC value of zero.
We note that MIC has the same behavior.


#### Tissue-specific network analyses using GIANT {#sec:giant}

We accessed tissue-specific gene networks of GIANT using both the web interface and web services provided by HumanBase [@url:https://hb.flatironinstitute.org].
The GIANT version used in this study included 987 genome-scale datasets with approximately 38,000 conditions from around 14,000 publications.
Details on how these networks were built are described in [@doi:10.1038/ng.3259].
Briefly, tissue-specific gene networks were built using gene expression data (without GTEx samples [@url:https://hb.flatironinstitute.org/data]) from the NCBI's Gene Expression Omnibus (GEO) [@doi:10.1093/nar/gks1193], protein-protein interaction (BioGRID [@pmc:PMC3531226], IntAct [@doi:10.1093/nar/gkr1088], MINT [@doi:10.1093/nar/gkr930] and MIPS [@pmc:PMC148093]), transcription factor regulation using binding motifs from JASPAR [@doi:10.1093/nar/gkp950], and chemical and genetic perturbations from MSigDB [@doi:10.1073/pnas.0506580102].
Gene expression data were log-transformed, and the Pearson correlation was computed for each gene pair, normalized using the Fisher's z transform, and z-scores discretized into different bins.
Gold standards for tissue-specific functional relationships were built using expert curation and experimentally derived gene annotations from the Gene Ontology.
Then, one naive Bayesian classifier (using C++ implementations from the Sleipnir library [@pmid:18499696]) for each of the 144 tissues was trained using these gold standards.
Finally, these classifiers were used to estimate the probability of tissue-specific interactions for each gene pair.


For each pair of genes prioritized in our study using GTEx, we used GIANT through HumanBase to obtain
1) a predicted gene network for blood (manually selected to match whole blood in GTEx) and
2) a gene network with an automatically predicted tissue using the method described in [@doi:10.1101/gr.155697.113] and provided by HumanBase web interfaces/services.
Briefly, the tissue prediction approach trains a machine learning model using comprehensive transcriptional data with human-curated markers of different cell lineages (e.g., macrophages) as gold standards.
Then, these models are used to predict other cell lineage-specific genes.
In addition to reporting this predicted tissue or cell lineage, we computed the average probability of interaction between all genes in the network retrieved from GIANT.
Following the default procedure used in GIANT, we included the top 15 genes with the highest probability of interaction with the queried gene pair for each network. 


#### Comparison with the Maximal Information Coefficient (MIC) {#sec:mic}

We used the Python package `minepy` [@doi:10.1093/bioinformatics/bts707; @url:https://github.com/minepy/minepy] (version 1.2.5) to estimate the MIC coefficient.
In GTEx v8 (whole blood), we used MIC<sub>e</sub> (an improved implementation of the original MIC introduced in [@Reshef2016]) with the default parameters `alpha=0.6`, `c=15` and `estimator='mic_e'`.
We used the `pairwise_distances` function from `scikit-learn` [@Sklearn2011] to parallelize the computation of MIC on GTEx.
For our computational complexity analyses, we ran the original MIC (using parameter `estimator='mic_approx'`) and MIC<sub>e</sub> (`estimator='mic_e'`).

##### Conceptual and statistical differences between CCC and MIC

The Clustermatch Correlation Coefficient (CCC) and the Maximal Information Coefficient (MIC) [@pmid:22174245] are measures designed to capture non-linear relationships between variables.
While they share certain similarities, there are also notable differences between them.

Conceptually, CCC is grounded in clustering input data using each variable separately.
This process effectively transforms each variable into a set of partitions, each containing a different number of clusters.
The CCC then quantifies the correlation between variables by assessing the similarity of these partitions.
This allows to process of various types of variables, including both numerical and categorical variables, even when the categories are nominal (i.e., they lack intrinsic order), as explained in [Methods](#sec:ccc_algo).
MIC, however, is specifically designed for numerical variables.
Additionally, in theory, CCC should also support correlating variables with different dimensions.
For 1-dimensional variables (such as genes), CCC obtains partitions using a quantiles-based approach.
For multidimensional variables, CCC could potentially use a standard clustering algorithm (such as $k$-means) to obtain partitions.

Now, consider two variables with $n$ data points on a scatterplot.
We can overlay a grid on this scatterplot with $x$ columns and $y$ rows, where each cell of this grid contains a portion of the data points, thereby defining a bivariate probability distribution.
The MIC algorithm seeks an optimal grid configuration that maximizes the ratio of mutual information to $\log \min \{x, y\}$, subject to the constraint that $xy < n^{0.6}$.
This normalization process using $\log \min \{x, y\}$ scales the MIC score between zero and one.
The CCC, as defined in [Methods](#sec:ccc_algo), also generates a symmetric, normalized score between zero and one.
However, unlike MIC which utilizes normalized mutual information, CCC employs the Adjusted Rand Index (ARI).
The ARI has an advantageous property: it consistently returns a baseline (zero) for independently drawn partitions, irrespective of the number of clusters (see Figure @fig:constant_baseline:k_max).
This property is not inherent in mutual information, which can produce varied values for independent variables if the grid dimensions vary.
MIC mitigates this by limiting the grid size with the constraint $xy < n^{0.6}$, which could also limit its ability to detect complex relationships.

Both CCC and MIC involve binning the input data vectors, aiming to maximize the mutual information and the ARI, respectively.
However, their approaches differ in complexity and execution.
MIC utilizes a sophisticated dynamic programming algorithm to identify the optimal grid.
In contrast, CCC employs a more straightforward and faster method, partitioning the data points separately using the two vectors.
While CCC might benefit from adopting MIC's more complex grid search approach, it remains uncertain if MIC could maintain its performance using CCC's simpler partitioning strategy.

Regarding their parameters, CCC's $k_{\mathrm{max}}$ (maximum number of clusters) and MIC's $B(n)$ (maximum grid size) serve similar purposes.
They control both the complexity of the patterns detected and the computational time.
For example, as illustrated in Figure @fig:datasets_rel (Anscombe I and III), a $k_{\mathrm{max}}$ of 2 is adequate for identifying linear patterns but insufficient for more complex patterns like quadratic or two-lines patterns.
A similar principle applies to MIC's $B(n)$.
However, a critical distinction exists between the two: the constant baseline property of ARIs ensures that CCC returns a value close to zero for independent variables, regardless of $k_{\mathrm{max}}$.
In contrast, MIC may produce non-zero scores for independent data if $B(n)$ is set too high, as discussed in Section 2.2.1 of the supplementary material in [@pmid:22174245].
The authors of MIC suggest that a value of $B(n) = n^{0.6}$ is generally effective in practice.

<!-- - put here all that i mentioned to the reviewer -->

##### Comparison in gene expression data

We compared all the coefficients in this study with MIC, a popular nonlinear method that can find complex relationships in data, although very computationally intensive [@doi:10.1098/rsos.201424].
We ran MIC<sub>e</sub> (see Methods) on all possible pairwise comparisons of our 5,000 highly variable genes from whole blood in GTEx v8.
<!-- This took 4 days and 19 hours to finish (compared with 9 hours for CCC). -->
Then we performed the analysis on the distribution of coefficients (the same as in the main text), shown in Figure @fig:dist_coefs_mic.
We verified that CCC and MIC behave similarly in this dataset, with essentially the same distribution but only shifted.
Figure @{fig:dist_coefs_mic}c shows that these two coefficients relate almost linearly, and both compare very similarly with Pearson and Spearman.

![
**Distribution of MIC values on gene expression (GTEx v8, whole blood)  and comparison with other methods.**
**a)** Histogram of coefficient values.
**b)** Corresponding cumulative histogram. The dotted line maps the coefficient value that accumulates 70% of gene pairs.
**c)** 2D histogram plot with hexagonal bins between all coefficients, where a logarithmic scale was used to color each hexagon.
](images/coefs_comp/gtex_whole_blood/mic/dist-main.svg "Distribution of MIC values"){#fig:dist_coefs_mic width="100%"}


#### Computational complexity of coefficients {#sec:time_test .page_break_before}

We also compared CCC with the other coefficients in terms of computational complexity.
Although CCC and MIC might identify similar gene pairs in gene expression data (see [here](#sec:mic)), the use of MIC in large datasets remains limited due to its very long computation time, despite some methodological/implementation improvements [@doi:10.1093/bioinformatics/bts707; @doi:10.1371/journal.pone.0157567; @doi:10.4137/EBO.S13121; @doi:10.1038/srep06662; @doi:10.1098/rsos.201424].
The original MIC implementation uses ApproxMaxMI, a computationally demanding heuristic estimator [@doi:10.1126/science.1205438].
Recently, a more efficient implementation called MIC<sub>e</sub> was proposed [@Reshef2016].
These two MIC estimators are provided by the `minepy` package [@doi:10.1093/bioinformatics/bts707], a C implementation available for Python.
We compared all these coefficients in terms of computation time on randomly generated variables of different sizes, which simulates a scenario of gene expression data with different numbers of conditions.
Differently from the rest, CCC allows us to easily parallelize the computation of a single gene pair (see [Methods](#sec:ccc_algo)), so we also tested the cases using 1 and 3 CPU cores.
Figure @fig:time_test shows the time in seconds in log scale.

![
**Computational complexity of all correlation coefficients on simulated data.**
We simulated variables/features with varying data sizes (from 100 to a million, $x$-axis).
The plot shows the average time in seconds (log-scale) taken for each coefficient on ten repetitions (1000 repetitions were performed for data size 100).
CCC was run using 1 and 3 CPU cores.
MIC and MIC<sub>e</sub> did not finish running in a reasonable amount of time for data sizes of 10,000 and 100,000, respectively.
](images/coefs_comp/time_test/time_test-main.svg "Computation time"){#fig:time_test width="55%"}

As we already expected, Pearson and Spearman were the fastest, given that they only need to compute basic summary statistics from the data.
For example, Pearson is three orders of magnitude faster than CCC.
Among the nonlinear coefficients, CCC was faster than the two MIC variations (up to two orders of magnitude), with the only exception in very small data sizes.
The difference is important because both MIC variants were implemented in C [@doi:10.1093/bioinformatics/bts707], a high-performance programming language, whereas CCC was implemented in Python (optimized with `numba`).
For a data size of a million, the multi-core CCC was twice as fast as the single-core CCC.
This suggests that new implementations using more advanced processing units (such as GPUs) are feasible and could make CCC reach speeds closer to Pearson.


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


## Supplemental information {.page_break_before}

### Figures


![
**The expression levels of *KDM6A* and *DDX3Y* display sex-specific associations across GTEx tissues.**
CCC captures this nonlinear relationship in all GTEx tissues (nine examples are shown in the first three rows), except in female-specific organs (last row).
](images/coefs_comp/kdm6a_vs_ddx3y/gtex-KDM6A_vs_DDX3Y-main.svg "KDM6A and DDX3Y across different GTEx tissues"){#fig:gtex_tissues:kdm6a_ddx3y width="95%" tag="S1"}


![
**Constant baseline property: CCC values are close to zero for random/independent variables.**
The plot shows CCC values for normally distributed and independent variables with different sizes $n$ and using different values for parameter $k_{\mathrm{max}}$ (maximum number of clusters).
](images/misc/constant_baseline-k_max.svg "Constant baseline property: CCC values are close to zero for random/independent variables"){#fig:constant_baseline:k_max width="65%" tag="S2"}


![
**Linear and nonlinear patterns between *UTY* and *KDM6A* in brain cerebellum and small intestine (terminal ileum) in GTEx.**
**a)** Correlation values for Pearson, Spearman and CCC when only male samples are considered in brain cerebellum and small intestine.
**b)** Correlation value of CCC when all samples (males and females) are considered.
Vertical and horizontal red lines show how CCC clustered data points using each gene separately.
](images/coefs_comp/kdm6a_vs_uty/gtex-KDM6A_vs_UTY-nonlinear_and_linear.svg "Linear and nonlinear patterns between UTY and KDM6A"){#fig:linear_in_nonlinear width="70%" tag="S3"}


![
**Behavior of CCC and MIC when substructure is present in the data.**
Two simulated, normally distributed clusters across two variables ($x$ and $y$) are placed diagonally (left), horizontally (middle) and vertically (right), and the CCC and MIC values are calculated.
Vertical and horizontal red lines show how CCC clustered data points using each variable separately.
](images/misc/data_with_substructures/clusters.svg "Behavior of CCC and MIC when substructure is present in the data"){#fig:substructure width="100%" tag="S4"}


### Tables {.page_break_before}


| | **Interaction confidence** <!-- $colspan="7" -->    | | | | | | |
|:------:|:-----:|:-----:|:-----:|:--------:|:-----:|:-----:|:-----:|
| | **Blood** <!-- $colspan="3" --> | | | **Predicted cell type** <!-- $colspan="4" --> | | | |
| **Gene** |  **Min.** | **Avg.** | **Max.** |  **Cell type** | **Min.** | **Avg.** | **Max.** |
| *IFNG* | 0.19 | 0.42 | 0.54 | Natural killer cell<!-- $rowspan="2" --> | 0.74 | 0.90 | 0.99 |
| *SDS* | 0.18 | 0.29 | 0.41 | 0.65 | 0.81 | 0.94<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *PRSS36* | 0.07 | 0.10 | 0.14 | Macrophage<!-- $rowspan="2" --> | 0.04 | 0.05 | 0.08 |
| *CCL18* | 0.07 | 0.74 | 0.86 | 0.05 | 0.69 | 0.90<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *UTY* | 0.03 | 0.36 | 0.84 | Placenta<!-- $rowspan="2" --> | 0.01 | 0.03 | 0.04 |
| *KDM6A* | 0.03 | 0.42 | 0.58 | 0.04 | 0.38 | 0.61<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *DDX3Y* | 0.05 | 0.33 | 0.78 | Testis<!-- $rowspan="2" --> | 0.07 | 0.11 | 0.18 |
| *KDM6A* | 0.43 | 0.51 | 0.58 | 0.27 | 0.34 | 0.48<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *RASSF2* | 0.69 | 0.77 | 0.90 | Leukocyte<!-- $rowspan="2" --> | 0.66 | 0.74 | 0.88 |
| *CYTIP* | 0.74 | 0.85 | 0.91 | 0.76 | 0.84 | 0.91<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *MYOZ1* | 0.09 | 0.17 | 0.37 | Skeletal muscle<!-- $rowspan="2" --> | 0.11 | 0.11 | 0.12 |
| *TNNI2* | 0.10 | 0.22 | 0.44 | 0.10 | 0.11 | 0.12<!-- $removenext="2" --> |
| <!-- $colspan="8" --> |||||||
| *SCGB3A1* | 0.16 | 0.19 | 0.23 | Placenta<!-- $rowspan="2" --> | 0.11 | 0.11 | 0.12 |
| *C19orf33* | 0.15 | 0.19 | 0.28 | 0.11 | 0.12 | 0.17<!-- $removenext="2" --> |

Table: **Network statistics of seven gene pairs shown in Figure @{fig:upsetplot_coefs}b for blood and predicted cell types.**
Only gene pairs present in GIANT models are listed.
For each gene in the pair (first column), the minimum, average and maximum interaction coefficients with the other genes in the network are shown.
{#tbl:giant:weights tag="S1"}

