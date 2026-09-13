---
layout: page
title: Research on Association Rule Mining
permalink: /research/association_rules/
description: Research by Michael Hahsler on association rule mining, frequent itemsets, interest measures, and related open-source software.
---   

    
The problem of mining association rules 
(see [association rule learning at Wikipedia](http://en.wikipedia.org/wiki/Association_rule_learning) was introduced in
Agrawal et al 1993. 
> The aim of association rule mining is to
find interesting and useful patterns in a transaction
database. Each transaction in the database contains
a set of items and a transaction identifier (e.g., a market
	basket). Association rules are rules of the form <b>X &rarr; Y</b> where <b>X</b> and <b>Y</b> are two disjoint
subsets of all available items. <b>X</b> is called the
antecedent or LHS (left-hand side), and <b>Y</b> is called the
    consequent or RHS (right-hand side). Association rules
satisfy constraints on minimum support (a measure of rule significance) 
    and minimum confidence (a measure of rule
	    strength). 

Research on association rules focuses on efficient algorithms, measures of rule interestingness, sequence mining, and using association rules for classification. 


* <a href="https://mhahsler.github.io/arules/docs/measures">Comprehensive list of interest measures for association rules</a>
* The free sample chapter <a href="https://www-users.cs.umn.edu/~kumar001/dmbook/ch5_association_analysis.pdf" >Association Analysis:
    Basic Concepts and Algorithms</a> from the popular textbook 
    <a href="https://www-users.cs.umn.edu/~kumar001/dmbook">Introduction to Data Mining</a> by Tan, Steinbach
    and Kumar provides a great introduction to association rule mining.
    R Code accompanying the book chapter is available in <a href="https://mhahsler.github.io/Introduction_to_Data_Mining_R_Examples/book/association-analysis-basic-concepts-and-algorithms.html">Chapter 5</a> of the
    web book <a href= "https://mhahsler.github.io/Introduction_to_Data_Mining_R_Examples/book/">An R Companion for Introduction to Data Mining.</a>

## Our Implementations (in R)

*    <a href=
    "https://github.com/mhahsler/arules">arules:</a> A R extension package for mining
    association rules and frequent itemsets with R. It provides
    an easy-to-use and flexible platform for experiments and research.
*    <a href="https://github.com/mhahsler/arulesViz">arulesViz:</a>
    Add-on for arules to visualize association rules.
*    <a href="https://github.com/ianjjohnson/arulesCBA">arulesCBA:</a>
    Add-on for arules to perform association rule-based classification.
*    <a href="http://cran.r-project.org/package=arulesSequences">arulesSequences:</a>
    Add-on for arules to handle and mine frequent sequences.
*    <a href="https://github.com/mhahsler/arulesNBMiner">arulesNBMiner:</a> Implementation of the
    mining algorithm and estimation procedure developed in
    <a href="{{ '/research/paper/nbd_association_rules_dami2005.pdf' | relative_url }}">
    Michael Hahsler. A model-based frequency constraint for mining associations from transaction data. Data Mining and Knowledge Discovery, 13(2):137-166, September 2006. </a> NBMiner is an add-on to arules.


## Other Implementations

* <a href="http://www.borgelt.net/software.html">Christian Borgelt's implementations of Apriori, Eclat and other algorithms</a> (C)
*    <a href=
    "http://rasbt.github.io/mlxtend/user_guide/frequent_patterns/apriori/"
    >mlxtend: Frequent Itemsets via Apriori Algorithm
</a> (Python)
*    <a href="http://adrem.ua.ac.be/~goethals/software/" target=
    "_blank">Frequent pattern mining implementations from Bart
Goethals</a> (C+)
*    <a href="https://github.com/zakimjz?tab=repositories&q=frequent&type=&language=&sort=" >
Implementations by Mohammed J. Zaki with focus on sequence mining</a> (C++)
*    <a href="http://www.cs.bme.hu/~bodon/en/fim_env/index.html" >
A C++ Frequent Itemset Mining Template Library by Bodon/Racz/Schmidt-Thieme</a> (C++)
*    <a href="http://fimi.cs.helsinki.fi" target=
    "_blank">Frequent Itemset Mining Implementations Repository
    (FIMI)</a>
*    <a href="http://www.cs.waikato.ac.nz/ml/weka/" target=
    "_blank">Weka,</a> a collection of machine learning
algorithms for data mining tasks. (Java)

## Data Sets

* <a href="http://kdd.ics.uci.edu/" >UCI KDD
    Archive,</a> an online repository of large data sets which
    encompasses a wide variety of data types, analysis tasks,
    and application areas.
*    <a href="http://ita.ee.lbl.gov/html/traces.html" target=
    "_blank">Traces available in the Internet Traffic
    Archive.</a> Data sets with packet traces, HTTP logs and
    more.
*    <a href="http://www.acm.org/sigs/sigkdd/kddcup/" target=
    "_blank">KDD Cup Data,</a> data sets and results for the
    annual Data Mining and Knowledge Discovery competition
    organized by ACM Special Interest Group on Knowledge
    Discovery and Data Mining.
*    <a href="http://fimi.cs.helsinki.fi/data/" target=
    "_blank">FIMI Dataset Repository</a>
*    <a href="http://www.causality.inf.ethz.ch/activelearning.php?page=datasets#cont" target=
    "_blank">Active Learning Challenge (Causality Workbench)</a>
*    <a href="http://www.kdnuggets.com/datasets" target=
    "_blank">KDnuggets - Datasets</a>


## Events

*    <a href="http://www.kdnuggets.com/meetings/">KDnuggets:
    Meetings</a>
*    <a href=
    "http://www.kmining.com/info_conferences.html">Kmining:
    Conferences</a>
*    <a href="http://academic.research.microsoft.com/RankList?entitytype=3&topDomainID=2&subDomainID=7&last=0&start=1&end=100">Top Conferences in Data Mining</a> by MS Academic Search
* <a href="http://www.google.com/search?q=ACM+SIGKDD+conference">ACM SIGKDD Conference on Knowledge Discovery and Data Mining (KDD)</a>
* <a href="http://www.google.com/search?q=ACM+SAC">ACM Symposium On Applied Computing (SAC)</a>
* <a href="http://www.google.com/search?q=ACM+SIGMOD+conference">ACM SIGMOD Conference (SIGMOD)</a>
* <a href="http://www.google.com/search?q=ECML+conference">European Conference on Machine Learning and Principles and Practice of Knowledge Discovery in Databases (ECML PKDD)</a>
* <a href="http://www.google.com/search?q=PAKDD+conference">Pacific-Asia Conference on Knowledge Discovery and Data Mining (PAKDD)</a>
* <a href="http://www.google.com/search?q=SIAM+SDM">SIAM Conference on Data Mining (SDM)</a>
* <a href="http://www.google.com/search?q=IEEE+ICDM">IEEE International Conference on Data Mining (ICDM)</a>
* <a href="http://www.google.com/search?q=IDA+Symposion">International Symposium on Intelligent Data Analysis (IDA)</a>
* <a href="http://www.google.com/search?q=ICML+conference">International Conference on Machine Learning (ICML)</a></li>

## Journals
<ul>
    <li>
    <a href="http://tkdd.cs.uiuc.edu/">ACM Transactions on
    Knowledge Discovery from Data (TKDD)</a> - ACM
    </li>
    <li>
    <a href=
    "http://www.springer.com/computer/database+management+%26+information+retrieval/journal/10618">
    Data Mining and Knowledge Discovery (DAMI)</a> - Springer
    </li>
    <li>
    <a href=
    "http://www.elsevier.com/wps/find/journaldescription.cws_home/505608/description#description">
    Data &amp; Knowledge Engineering (DKE)</a> - Elsevir
    </li>
    <li>
    <a href=
    "http://www3.interscience.wiley.com/journal/112701062/home">
    Statistical Analysis and Data Mining</a> - Wiley
    </li>
    <li>
    <a href=
    "http://www.springer.com/statistics/computational+statistics/journal/11222">  
    Statistics and Computing</a> - Springer
    </li>
    <li>
    <a href="http://www.cs.uvm.edu/~kais/">Knowledge and
    Information Systems: An International Journal</a> -
    Springer
    </li>
    <li>
    <a href="http://www.computer.org/portal/web/tkde">IEEE Transactions
    on Knowledge and Data Engineering (TKDE)</a> - IEEE
    </li>
    <li>
    <a href=
    "http://www.idea-group.com/journals/tocVolumes.asp?id=4291">
    International Journal of Data Warehousing and Mining
    (IJDWM)</a> - IGI Publishing
    </li>
    <li>
    <a href=
    "https://www.inderscience.com/browse/index.php?journalID=143">
    International Journal of Business Intelligence and Data
    Mining (IJBIDM)</a> - Inderscience
    </li>
    <li>
    <a href=
    "http://www.worldscinet.com/ijitdm/ijitdm.shtml">
    International Journal of Information Technology &amp; Decision Making (IJITDM)</a> - World Scientific
    </li>
    <li>
    <a href=
    "http://www.iospress.nl/html/1088467x.php">Intelligent Data
    Analysis: An International Journal</a> - IOS Press
    </li>
    <li>
    <a href=
    "http://www.idea-group.com/journals/details.asp?id=198">Journal
    of Database Management (JDM)</a> - Idea Group
    </li>
    <li>
    <a href=
    "http://www.amstat.org/publications/jcgs.cfm">Journal
of Computational and Graphical Statistics (JCGS)</a> - American Statistical Association (ASA)
    </li>
    <li>
    <a href=
    "http://www.acm.org/sigs/sigkdd/explorations/">SIGKDD
    Explorations</a> - ACM
    </li>
    <li>
    <a href="http://joc.pubs.informs.org/">INFORMS Journal on
    Computing (JOC)</a> - informs
    </li>
    <li>
    <a href=
    "http://springerlink.metapress.com/openurl.asp?genre=journal&amp;issn=0925-9902">
    Journal of Intelligent Information Systems</a> - Springer
    </li>
    <li>
    <a href=
    "http://springerlink.metapress.com/openurl.asp?genre=journal&amp;issn=0885-6125">
    Machine Learning</a> - Springer
    </li>
    <li><a href="http://www.jmlr.org/">Journal of Machine Learning Research (JMLR)</a> - SPARC  
    </li>
    <li><a href="http://www.ibai-publishing.org/journal/mldm/about.html">Transactions on Machine Learning and Data Mining</a> - ibai Publishing 
    </li>
    <li>
    <a href="http://onlinelibrary.wiley.com/journal/10.1002/%28ISSN%291942-4795">Wiley Interdisciplinary Reviews: Data Mining and Knowledge Discovery</a> - Wiley
    </li>

    </ul>

## Our Publications

{% include publications/associations_all.html %}
