---
title: A machine learning-based dependence coefficient for gene expression analysis
keywords:
- correlation coefficient
- nonlinear relationships
- gene expression
lang: en-US
date-meta: '2021-11-11'
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
  <meta name="dc.date" content="2021-11-11" />
  <meta name="citation_publication_date" content="2021-11-11" />
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
  <link rel="alternate" type="text/html" href="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/32b1e2256c9c353b386f36fc463d51c1e3f303f0/" />
  <meta name="manubot_html_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/32b1e2256c9c353b386f36fc463d51c1e3f303f0/" />
  <meta name="manubot_pdf_url_versioned" content="https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/32b1e2256c9c353b386f36fc463d51c1e3f303f0/manuscript.pdf" />
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
([permalink](https://greenelab.github.io/clustermatch-gene-expr-manuscript/v/32b1e2256c9c353b386f36fc463d51c1e3f303f0/))
was automatically generated
from [greenelab/clustermatch-gene-expr-manuscript@32b1e22](https://github.com/greenelab/clustermatch-gene-expr-manuscript/tree/32b1e2256c9c353b386f36fc463d51c1e3f303f0)
on November 11, 2021.
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




## Discussion


## Methods


## References {.page_break_before}

<!-- Explicitly insert bibliography here -->
<div id="refs"></div>


## Acknowledgements


## Supplementary material
