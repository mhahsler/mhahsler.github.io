---
layout: page
title: Software
permalink: /software/
---


<a href= "https://r-project.org">
    <img src="{{ '/images/Rlogo.png' | relative_url }}" alt="R Logo" title="R Logo" style="border-style:none; float:right" height="100" /></a>

I am the lead developer and maintainer of several widely used extension 
packages for the 
[R software environment for statistical computing and graphics.](https://www.R-Project.org) R and Python are the two most widely used platforms for 
Data Science, ML, and AI. 


<img src="{{ '/assets/img/r-universe.png' | relative_url }}" height="30" />
My R packages are also available on [R-universe](https://mhahsler.r-universe.dev/packages).

<img src="{{ '/assets/img/github.png' | relative_url }}" height="30" />
Development versions of our software are available on [GitHub.](https://github.com/mhahsler/)

<img src = "https://pypi.org/static/images/logo-small.2a411bc6.svg" height="30" />
Python packages published via the [Python Package Index.](https://pypi.org/user/mhahsler/)

__Software Sections__
* TOC
{: toc}

## Association Rule Mining

* __arules__: Provides the infrastructure for representing,
    manipulating and analyzing transaction data and patterns (frequent
    itemsets and association rules). Also provides
    C implementations of the association mining algorithms Apriori and Eclat. 
    Hahsler, Gruen and Hornik (2005) &lt;<a href="https://doi.org/10.18637/jss.v014.i15">doi:10.18637/jss.v014.i15</a>&gt;.
    {% include package_info.html pkg="arules" %}

* __arulesViz__: Extends package arules with various visualization techniques for association rules and itemsets. The package also includes several interactive visualizations for rule exploration. Michael Hahsler (2017) &lt;<a href="https://doi.org/10.32614/RJ-2017-047">doi:10.32614/RJ-2017-047</a>&gt;.
    {% include package_info.html pkg="arulesViz" %}

* __arulesSequences__: Add-on package to handle and mine
    frequent sequences (lead developer: Christian Buchta). 
    {% include package_info.html pkg="arulesSequences" %}

* __arulesCBA__: Provides the infrastructure for association rule-based 
    classification including the algorithms CBA, CMAR, CPAR, C4.5 
    FOIL, PART, PRM, RCAR, and RIPPER to build associative classifiers.
    &lt;<a href="https://doi.org/10.32614/RJ-2019-048">doi: 10.32614/RJ-2019-048</a>&gt;
    {% include package_info.html pkg="arulesCBA" %}

* __arulesNBMiner__: NBMiner is an implementation of the model-based mining algorithm for mining NB-frequent itemsets and NB-precise rules. Michael Hahsler (2006)
    &lt;<a href="https://doi.org/10.1007/s10618-005-0026-2">doi: 10.1007/s10618-005-0026-2</a>&gt; (<a href="https://michael.hahsler.net/research/nbd_dami2005/nbd_associationrules_dami2005.pdf">preprint</a>). 
    {% include package_info.html pkg="arulesNBMiner" %}

## Bioinformatics

<a href= "https://www.bioconductor.org/">
    <img src="{{ '/images/logo_bioconductor.gif' | relative_url }}" alt="Bioconductor - Software for Bioinformatics" title="Bioconductor - Software for Bioinformatics" style="border-style:none; float:right"/></a>

* __rBLAST__: Interfaces the Basic Local Alignment Search Tool (BLAST) to 
    search genetic sequence databases with the Bioconductor infrastructure.
    [<a href= "https://bioconductor.org/packages/release/bioc/vignettes/rBLAST/inst/doc/blast.html">intro</a>] 
    <br /> 
   <a href="https://bioconductor.org/packages/rBLAST/"><img src="https://bioconductor.org/shields/years-in-bioc/rBLAST.svg"
       alt="Stable version on Bioconductor"
       title="Stable version on Bioconductor" /></a>
   <a href="https://github.com/mhahsler/rBLAST">
    <img alt="Goto development version on GitHub" 
	title = "Goto development version on GitHub" 
	src="https://img.shields.io/github/last-commit/mhahsler/rBLAST.svg?color=orange&label=GitHub%20last%20commit"></a>
   <img src="https://bioconductor.org/shields/downloads/release/rBLAST.svg"
       alt="Downloads from Bioconductor"
       title="Downloads from Bioconductor" />

* _\[deprecated\]_ __rRDP__: Seamlessly interfaces the Ribosomal Database Project (RDP) 
    classifier (version 2.9) which implements a Naive Bayesian Classifier (NBC)
    for biological sequences.
    [<a href= "https://bioconductor.org/packages/release/bioc/vignettes/rRDP/inst/doc/rRDP.html">intro</a>] 
    <br /> 
   <a href="https://bioconductor.org/packages/rRDP/"><img src="https://bioconductor.org/shields/years-in-bioc/rRDP.svg"
       alt="Stable version on Bioconductor"
       title="Stable version on Bioconductor" /></a>
   <a href="https://github.com/mhahsler/rRDP">
    <img alt="Goto development version on GitHub" 
	title = "Goto development version on GitHub" 
	src="https://img.shields.io/github/last-commit/mhahsler/rRDP.svg?color=orange&label=GitHub%20last%20commit"></a>
    <img src="https://bioconductor.org/shields/downloads/release/rRDP.svg"
       alt="Downloads from Bioconductor"
       title="Downloads from Bioconductor" />

* _\[deprecated\]_ __rMSA__: Interface for Popular Multiple Sequence Alignment 
    Tools like ClustalW, MAFFT, MUSCLE and Kalign. 
    [<a href="https://github.com/mhahsler/rMSA/raw/master/vignettes_real/rMSA.pdf">intro</a>]	
    <br /> <a href="https://github.com/mhahsler/rMSA">
    <img alt="Goto development version on GitHub" 
	title = "Goto development version on GitHub" 
	src="https://img.shields.io/github/last-commit/mhahsler/rMSA.svg?color=orange&label=GitHub%20last%20commit"></a>


* _\[deprecated\]_ __QuasiAlign__: Efficient sequence alignment using alignment-free methods.
    [<a href="https://r-forge.r-project.org/projects/mmsa/">Prototype at R-Forge</a>]

## Combinatorial Optimization

* __dbscan__:
    A fast reimplementation of several density-based algorithms of
    the DBSCAN family for spatial data. Includes the DBSCAN (density-based spatial
    clustering of applications with noise) and OPTICS (ordering points to identify
    the clustering structure) clustering algorithms HDBSCAN (hierarchical DBSCAN) and the LOF (local outlier
    factor) algorithm. The implementations use the kd-tree data structure (from
    library ANN) for faster k-nearest neighbor search. An R interface to fast kNN
    and fixed-radius NN search is also provided. 
    See Hahsler M, Piekenbrock M and Doran D (2019) &lt;<a href="https://doi.org/10.18637/jss.v091.i01">doi:10.18637/jss.v091.i01</a>&gt;.
    {% include package_info.html pkg="dbscan" %}

* __seriation__:
    Infrastructure for ordering objects with an implementation of several seriation/sequencing/ordination techniques to reorder matrices, dissimilarity matrices, and dendrograms. Also provides (optimally) reordered heatmaps, color images and clustering visualizations like dissimilarity plots, and visual assessment of cluster tendency plots (VAT and iVAT). Hahsler, Hornik and Buchta (2008) &lt;<a href="https://doi.org/10.18637/jss.v025.i03">doi:10.18637/jss.v025.i03</a>&gt;.
    {% include package_info.html pkg="seriation" %}

* __TSP__:
    Basic infrastructure and some algorithms for the traveling
    salesperson problem (also traveling salesman problem; TSP).
    The package provides some simple algorithms and
    an interface to the Concorde TSP solver and its implementation of the
    Chained-Lin-Kernighan heuristic. The code for Concorde
    itself is not included in the package and has to be obtained separately.
    Hahsler and Hornik (2007) &lt;<a href="https://doi.org/10.18637/jss.v023.i02">doi:10.18637/jss.v023.i02</a>&gt;.
    {% include package_info.html pkg="TSP" %}

* __qap__:
    Implements heuristics for the Quadratic Assignment Problem (QAP). 
    Currently, only a simulated annealing heuristic by Burkard and Rendl (1984)
    &lt;<a href="https://doi.org/10.1016/0377-2217(84)90231-5">doi: 10.1016/0377-2217(84)90231-5</a>&gt;
    is available .
    {% include package_info.html pkg="qap" %}

## Data Stream Mining

* __stream__:
    Infrastructure for data stream mining
    (supported in part by NSF IIS-0948893 and NIH R21HG005912).
    Hahsler, Bola&ntilde;os and Forrest (2017) &lt;<a href="https://dx.doi.org/10.18637/jss.v076.i14">doi: 10.18637/jss.v076.i14</a>&gt;.
    {% include package_info.html pkg="stream" %}

* __streamConnect__:
    Adds functionality to connect stream mining components from package stream using sockets and Web services. The package can be used create distributed workflows and create plumber-based Web services which can be deployed on most common cloud services. 
    {% include package_info.html pkg="streamConnect" %}



* __streamMOA__:
    Interface to MOA's data stream clustering algorithms. 
    [<a href= "https://cran.r-project.org/web/packages/streamMOA/vignettes/streamMOA.pdf">
intro</a>]
    {% include package_info.html pkg="streamMOA" %}

* __rEMM__:
    Implementation of the Extensible Markov Model (EMM) which adds a temporal component to data stream clustering by superimposing a dynamically adapting 
    Markov Chain. This research is supported by <a href="https://www.nsf.gov/awardsearch/showAward.do?AwardNumber=0948893">NSF Grant 0948893.</a>
    Hahsler and Dunham (2010) &lt;<a href="https://dx.doi.org/10.18637/jss.v035.i05">doi: 10.18637/jss.v035.i05</a>&gt;.
    {% include package_info.html pkg="rEMM" %}

## Recommender Systems

* __recommenderlab__:
    Provides the infrastructure to test and develop recommender algorithms. 
    Currently contains implementations for UBCF, IBCF, FunkSVD, popular items
    and association rules and supports a wide range of evaluation techniques.
    [<a href="https://cran.r-project.org/web/packages/recommenderlab/vignettes/recommenderlab.pdf">
intro</a>, <a href = "https://mhahsler-apps.shinyapps.io/Jester/">online example</a>]
    {% include package_info.html pkg="recommenderlab" %}

## Automated Planning and Optimal Control

* __pomdp__:
    Provides the infrastructure to define, solve, and analyze the solutions of Partially Observable Markov Decision Processes (POMDP) models. 
    {% include package_info.html pkg="pomdp" %}

* __pomdpSolve__:
    The package provides the code for  <a href="https://www.pomdp.org/code/">pomdp-solve</a> to solve POMDPs using a variety of exact and approximate value iteration algorithms developed by Anthony R. Cassandra.
    {% include package_info.html pkg="pomdpSolve" %}

##  Educational Software

* __Data Mining:__ [R code examples for the textbook Introduction to Data Mining](https://github.com/mhahsler/Introduction_to_Data_Mining_R_Examples) (Tan/Steinbach/Kumar).
* __Artifical Intelligence:__ [Artificial Intelligence - Lecture Material, Simple Python Code Examples and Assignments](https://github.com/mhahsler/CS7320-AI) using the textbook Artificial Intelligence: A Modern Approach (Russell/Norvig).
* __Reinforcement Learning:__ [Reinforcement Learning - Lecture Material, Simple Python Code Examples and Assignments](https://github.com/mhahsler/Introduction_to_Reinforcement_Learning) following the textbook Reinforcement Learning: An Introduction (Sutton/Barto).
* __gym_classics2:__ [Classic Discrete finite MDPs for Reinforcement Learning](https://github.com/mhahsler/gym-classics2).
* __[fit_dist](https://github.com/mhahsler/fit_dist)__: A simple R script to fit distributions to data.
* __[Gridhunt2]({{ '/SMU/CS1342/gridhunt2/' | relative_url }})__: A simple game used to teach students basic OO concepts (encapsulation, composition, inheritance, and polymorphism) using C++.

