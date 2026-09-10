--- 
layout: page
title: OIT/SMU Libraries Data Science Workshop Series - Introduction to R Programming
permalink: /SMU/DS_Workshop_Intro_R/ 
---

All course material is provided under [![Creative Commons Attribution-Share Alike 4.0 International (CC BY-SA 4.0)](https://i.creativecommons.org/l/by-sa/4.0/88x31.png)](https://creativecommons.org/licenses/by-sa/4.0/)


<h2>Information</h2>

This workshop provides you with the foundation to enter the exciting field of data science by learning the basics of the R programming language. R will enable you to replace repetitive tasks or manual work (e.g., in Excel) with repeatable R scripts and give you a tool to start exploring how data science and machine learning with R can be used in your area. The course covers R Studio, programming basics and the R syntax, functions, vectorization, importing and exporting data (CSV, Excel), cleaning data, basic visualization and working with packages for data science.

*   **Instructor:** [Michael Hahsler](http://michael.hahsler.net/)
*   **Times and Location:** [Register](https://libcal.smu.edu/event/6193674)

<div class="anchor" name="session_1" id="session_1">
<h2>Session 1: Introduction</h2>
</div>

<iframe width="560" height="315" src="https://www.youtube.com/embed/oQiokuaHrLk?si=yF8ouxk9ln9Ogc3K" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


*   Learning Goals
    1.  What is R?
    2.  RStudio and a first R session
    3.  R Basics including vectors and subsetting
*   Slides: [1\. Introduction](slides/1_Overview.pdf)
*   Needed Software
    *   [R Project](https://www.r-project.org/) (download R and manuals)
    *   [RStudio](https://posit.co/) (download RStudio Desktop Open Source Edition)
*   Learning Material
    *   Reading for this session: [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html) (Chapters 1 and 2)
    *   R Manuals, Packages and Task Views (to find packages) can be found on [The Comprehensive R Archive Network (CRAN).](https://cran.r-project.org/)
    *   Finding solutions: Google or go to [stackoverflow.com](https://stackoverflow.com/questions/tagged/r) and use the tag "\[R\]" in your search.
    *   Cheat sheets: [R Cheatsheets](https://posit.co/resources/cheatsheets/)



<div class="anchor" name="session_2" id="session_2">
<h2>Session 2: Programming Basics</h2>
</div>

<iframe width="560" height="315" src="https://www.youtube.com/embed/_HY44RyzXX8?si=dlwMf1yhEk-rK3w4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

*   Learning Goals
    1.  Objects in R
    2.  Importing and exporting data
    3.  Functions, loops, and apply
*   Slides
    *   [2\. Objects and Data](slides/2_Objects_Arrays_Lists.pdf)
    *   [3\. Functions, Loops and Apply](slides/3_Loops_lapply_functions.pdf)
*   Learning Material
    *   Reading for this session: [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html) (Chapters 3-7 and 9-10)
*   Data: [MLB\_cleaned.xlsx](examples/MLB_cleaned.xlsx), [MLB\_cleaned.csv](examples/MLB_cleaned.csv)


<div class="anchor" name="session_3" id="session_3">
<h2>Session 3: Exploring Data and Reporting</h2>
</div>

<iframe width="560" height="315" src="https://www.youtube.com/embed/WyU8BcVDpf8?si=HpBxumbo-fym-wlS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


*   Learning Goals
    1.  Basic plots in R
    2.  Creating reports
*   Slides
    *   [4\. Base R Plots](slides/4_Plots.pdf)
*   Exercises
    *   Create a report for the MLB data with [RMarkdown](https://rmarkdown.rstudio.com/). Here is an example: [MLB.html](examples/MLB.html) (Markdown file: [MLB.Rmd](examples/MLB.Rmd))
    *   Creating a dashboard for the MLB data with [flexdashboard](https://rmarkdown.rstudio.com/flexdashboard/). Here is an example: [MLB\_dashboard.html](examples/MLB_dashboard.html) (Markdown file: [MLB\_dashboard.Rmd](examples/MLB_dashboard.Rmd))
*   Learning Material
    *   Reading for this session: [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html) (Chapter 12)
    *   Cheat Sheet: [rmarkdown](https://rstudio.github.io/cheatsheets/html/rmarkdown.html)
    *   Useful packages for creating interactive reports: [DT](https://rstudio.github.io/DT/), [plotly](https://plot.ly/r/), and [shiny](https://shiny.rstudio.com/).
    *   Linked-in Learning Video Course: [Building Data Apps with R and Shiny](https://www.linkedin.com/learning/building-data-apps-with-r-and-shiny-essential-training/build-test-and-deploy-apps-easily-in-shiny?u=2139050) (advanced self-study material)

<div class="anchor" name="session_3a" id="session_3a">
<h2>Session 3a (optional): Handling Data With tidyverse</h2>
</div>


<iframe width="560" height="315" src="https://www.youtube.com/embed/nRtp7wSEtJA?si=uom1zGPOeQwkd33b" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

*   Learning Goals: Understand how to handling data with [tidyverse.](https://www.tidyverse.org/)
*   [An Extremely Short Introduction to Tidyverse](slides/3a_tidyverse.html)
*   Learning Material:
    *   Free textbook: [R for Data Science](https://r4ds.had.co.nz/) by Grolemund and Wickham.
    *   Cheat Sheets: [RStudio Cheat Sheets](https://posit.co/resources/cheatsheets/)


<div class="anchor" name="session_3b" id="session_3b">
<h2>Session 3b (optional): Visualizing Data With ggplot2</h2>
</div>

*   Learning Goals: Understand how [ggplot2](https://ggplot2.tidyverse.org/) graphs are created.
*   [An Extremely Short Introduction to ggplot](slides/3b_ggplot.html)
*   Learning Material:
    *   Free textbook: [Data Visualization: A practical introduction](http://socviz.co/) by Kieran Healy.
    *   Cheat Sheets: [Data visualization with ggplot2](https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf)
    *   Linked-in Learning Video Course: [ggplot 2 in R](https://www.linkedin.com/learning/data-visualization-in-r-with-ggplot2/welcome?u=2139050) (advanced self-study material)


<div class="anchor" name="session_4" id="session_4">
<h2>Session 4: R for Data Science</h2>
</div>

<iframe width="560" height="315" src="https://www.youtube.com/embed/vjteBwEvSxU?si=3gg4zIEwavOiUoXk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

*   Learning Goals: Predictive modeling.


Material and other suggested training resources:
------------------------------------------------

*   Text: [An Introduction to R](https://cran.r-project.org/doc/manuals/r-release/R-intro.html)
*   Related Linked-in Learning Video: [Learning R](https://www.linkedin.com/learning/learning-r/welcome?u=2139050)
*   Related Linked-in Learning Path: [Master R for Data Science](https://www.linkedin.com/learning/paths/master-r-for-data-science?u=2139050)

