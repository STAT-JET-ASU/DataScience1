---
title: "STT 3530 Data Science I<br>Course Schedule for Fall 2019"
author: "Instructor: Jill E. Thomley (thomleyje@appstate.edu)"
date: 'August 09, 2019 @ 08:38 PM'
output: 
  html_document: 
    toc: true
    toc_depth: 3
    toc_float: true
    highlight: textmate
    theme: cosmo
    css: "../css/style.css"
    keep_md: yes
---

***

<div class="rmdimportant">
<ul>
<li><strong>This schedule is a work in progress. Check often for updates!</strong></li>
</ul>
</div>

<div class="rmdnote">
<ul>
<li>We will be using free digital textbooks/resources in this course.
<ul>
<li><a href="https://github.com/">GitHub</a></li>
<li><a href="https://www.datacamp.com/">DataCamp</a></li>
<li><a href="https://moderndive.com/"><em>Modern Dive</em></a></li>
<li><a href="https://r4ds.had.co.nz/"><em>R for Data Science</em></a></li>
<li>Additional items listed below</li>
</ul></li>
<li>Please bring a notebook and pencil/pen to every class.</li>
<li>All of the required software for this course is provided.</li>
<li>Be prepared to actively participate and collaborate.</li>
<li>Refer to the <a href="../Syllabus/SyllabusS2019.html">Course Syllabus</a> for additional details.</li>
</ul>
</div>

<div class="rmdoptional">
<p>Optionally, you may wish to install <a href="http://git-scm.com/downloads">Git</a>, <a href="http://cran.r-project.org">R</a>, <a href="http://www.rstudio.com/products/rstudio/download/">RStudio</a>, <a href="https://www.zotero.org">zotero</a>, and <a href="http://www.ctan.org/starter"><span class="math inline">\(LaTeX\)</span></a> on your personal computer. If you do, follow Jenny Bryan's excellent advice for <a href="http://stat545-ubc.github.io/block000_r-rstudio-install.html">installing R and RStudio</a> and <a href="http://stat545-ubc.github.io/git01_git-install.html">installing Git</a>. Jenny's advice is also in chapters 6 and 7 of <em><a href="http://happygitwithr.com/">Happy Git and GitHub for the useR</a></em>. Note that <a href="http://git-scm.com/downloads">Git</a>, <a href="http://cran.r-project.org">R</a>, <a href="http://www.rstudio.com/products/rstudio/download/">RStudio</a>, and <a href="http://www.ctan.org/starter"><span class="math inline">\(LaTeX\)</span></a> are all installed on the <a href="https://mathr.math.appstate.edu/">ASU RStudio server</a> and you can access these resources using any web browser.</p>
<p>Watch the following videos as appropriate:</p>
<ul>
<li><a href="https://www.youtube.com/watch?v=lJxVRgiX-ik">Install R on Mac (2 min)</a><br />
</li>
<li><a href="https://www.youtube.com/watch?v=LII6of-5Odw">Install R for Windows (3 min)</a><br />
</li>
<li><a href="https://www.youtube.com/watch?v=eD07NznguA4">Install R and RStudio on Windows (5 min)</a></li>
</ul>
</div>

<div class="rmdimportant">
<ul>
<li><strong>Most assignments are due Sunday @ 11pm of the week in which they appear.</strong></li>
<li><strong>Check AsULearn for project/homework assignment instructions and grades.</strong></li>
</ul>
</div>


***
### Course Overview

Class time in this course will be a mix of lecture and hands-on activities. Data science 1 is an introductory course with no statistics or programming prerequisites. Students come into the course with a broad mix of skills. This means that the most effective mode of instruction tends to be a semi-flipped classroom approach where some primary instruction occurs outside class, in this case largely in the form of Datacamp assignments. Students can work on DataCamp modules at their own pace in an iterative fashion. This frees up class time to spend on work where students can give and receive help from peers and the instructor. Do not treat this instructional mode as an invitation to skip class! Your classmates are one of your greatest resources.

**Abbreviations**

DC = _DataCamp_  
MD = _Modern Dive_  
RDS = _R for Data Science_  
HW = homework


***
### Week 01 (AUG 19)

#### Due Sunday @ 11pm

* [Github](https://github.com/) account
* [`R`Pubs](https://rpubs.com/) account
* [DataCamp](https://www.datacamp.com/) account 
* RStudio server sign-in 
* Private Forum message 
* DC [Introduction to `R`](https://www.datacamp.com/courses/free-introduction-to-r)
* DC [Intermediate `R`](https://www.datacamp.com/courses/intermediate-r)
* Reflection #01

#### During Class

* Introduction
* Technology account set-up
* Basics of RStudio server 
* Work on DataCamp courses

#### Prepare for Thursday

* ["The History of S and R"](https://youtu.be/jk9S3RTAl38) (~10 minute video)
* [Getting used to R, RStudio, and R Markdown](https://ismayc.github.io/rbasics-book/)

#### Prepare for Next Week

* MD [Chapter 1. Introduction](https://moderndive.com/index.html)
* MD [Chapter 2. Getting Started with Data in R](https://moderndive.com/2-getting-started.html)
* MD [Chapter 3. Data Visualization](https://moderndive.com/3-viz.html)
* MD [Chapter 4. Data Wrangling](https://moderndive.com/4-wrangling.html)
* RDS [Section 1. Introduction](http://r4ds.had.co.nz/introduction.html)
* RDS [Section 2. Introduction](http://r4ds.had.co.nz/explore-intro.html)
* RDS [Section 3. Data Visualization](http://r4ds.had.co.nz/data-visualisation.html)
* RDS [Section 4. Workflow: Basics](http://r4ds.had.co.nz/workflow-basics.html)
* RDS [Section 5. Data Transformation](http://r4ds.had.co.nz/transform.html)
* Stat545 ["Test Drive R Markdown"](http://stat545.com/block007_first-use-rmarkdown.html)

<div class="rmdnote">
<ul>
<li>The <a href="https://www.tidyverse.org/"><code>tidyverse</code></a> is &quot;an opinionated collection of R packages designed for data science&quot; that share a common philosophy for effective data manipulation, exploration and visualization.</li>
<li>Check out <a href="https://www.rstudio.com/resources/cheatsheets/">RStudio Cheat Sheets</a> for data transformation, data visualization, and Markdown.</li>
<li>Git and GitHub can be frustrating at first. <em>Push</em> yourself to <em>commit</em> to using version control.</li>
<li>You may want to create a folder in your RStudio Home directory (e.g., <code>git_repositories</code>) where you can collect/organize your version-controlled projects.</li>
</ul>
</div>


***
### Week 02 (AUG 26)

No class Tuesday, AUG 27

#### Due Sunday @ 11pm

* DC [Introduction to the Tidyverse](https://www.datacamp.com/courses/introduction-to-the-tidyverse)
* DC [Communicating with Data in the Tidyverse](https://www.datacamp.com/courses/communicating-with-data-in-the-tidyverse)
* Reflection #02

#### During Class

* Organizing your workspace
* Projects in RStudio/GitHub
* RStudio document types 
* "Test Drive R Markdown"
* Exporting/publishing HTML
* Work on DataCamp courses

#### Prepare for Next Week

* [ASA Statement on the Role of Statistics in Data Science](http://magazine.amstat.org/blog/2015/10/01/asa-statement-on-the-role-of-statistics-in-data-science/)
* [ASA Develops Reproducible Research Recommendations](https://www.amstat.org/ASA/News/ASA-Develops-Reproducible-Research-Recommendations.aspx)
* [The Real Reason Reproducible Research is Important](https://simplystatistics.org/2014/06/06/the-real-reason-reproducible-research-is-important/)
* [Initial Steps Toward Reproducible Research](https://kbroman.org/steps2rr/)
* [A Guide to Reproducible Code in Ecology and Evolution](https://www.britishecologicalsociety.org/wp-content/uploads/2017/12/guide-to-reproducible-code.pdf) (pp. XX)

<div class="rmdnote">
<ul>
<li>Additional information can be found at <a href="http://rmarkdown.rstudio.com"><code>R Markdown</code> from <img src="https://www.rstudio.com/wp-content/uploads/2016/09/RStudio-Logo-Blue-Gray-125.png" /></a></li>
<li>Refer to <a href="https://bookdown.org/yihui/rmarkdown/"><em>R Markdown: The Definitive Guide</em></a> for more information on formatting.</li>
<li>Practice and solidify your developing <code>R</code> skills with DC <a href="https://www.datacamp.com/practice">Daily Practice</a> exercises.</li>
</ul>
</div>


***
### Week 03 (SEP 02)

#### Due Sunday @ 11pm

* Project 01
* Reflection #03

#### During Class

* Reproducible research
* Work on Project 1

#### Prepare for Next Week

* RDS [Section 6. Workflow: Scripts](http://r4ds.had.co.nz/workflow-scripts.html)
* RDS [Section 7. Exploratory Data Analysis](http://r4ds.had.co.nz/exploratory-data-analysis.html)
* RDS [Section 8. Workflow: Projects](http://r4ds.had.co.nz/workflow-projects.html)
* Stat 545 ["Do’s and Dont's for Effective Graphs"](http://stat545.com/block015_graph-dos-donts.html)


***
### Week 04 (SEP 09)

#### Due Sunday @ 11pm

* DC [Data Visualization with `ggplot2` (Part 1)](https://www.datacamp.com/courses/data-visualization-with-ggplot2-1)
* DC [Data Visualization with `ggplot2` (Part 2)](https://www.datacamp.com/courses/data-visualization-with-ggplot2-2)
* Reflection #04

#### During Class

* TBA

#### Prepare for Next Week

* MD [Chapter 6. Basic Regression](https://moderndive.com/6-regression.html)
* MD [Chapter 7. Multiple Regression](https://moderndive.com/7-multiple-regression.html)


***
### Week 05 (SEP 16)

#### Due Sunday @ 11pm

* DC [Data Visualization with `ggplot2` (Part 3)](https://www.datacamp.com/courses/data-visualization-with-ggplot2-part-3)
* DC [Modeling with Data in the Tidyverse](https://www.datacamp.com/courses/modeling-with-data-in-the-tidyverse)
* Reflection #05

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 06 (SEP 23)

#### Due Sunday @ 11pm

* Project 2 progress report
* Reflection #06

#### During Class

* Work on Project 2
* Project pair-and-share

#### Prepare for Next Week

* TBA


***
### Week 07 (SEP 30)

#### Due Sunday @ 11pm

* Project 2 final writeup
* Reflection #07

#### During Class

* Work on Project 2
* Project pair-and-share

#### Prepare for Next Week

* Stat545 ["`dplyr` Functions for a Single Dataset"](http://stat545.com/block010_dplyr-end-single-table.html) 


***
### Week 08 (OCT 07)

OCT 08 is the halfway point!

#### Due Sunday @ 11pm

* DC [Data Manipulation in `R` with `dplyr`](https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial)
* DC [Joining Data in `R` with `dplyr`](https://www.datacamp.com/courses/joining-data-in-r-with-dplyr)
* Reflection #08

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 09 (OCT 14)

No class Tuesday, OCT 15

#### Due Sunday @ 11pm

* DC [Cleaning Data in `R`](https://www.datacamp.com/courses/cleaning-data-in-r)
* Reflection #09

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 10 (OCT 21)

#### Due Sunday @ 11pm

* DC [Importing Data in `R` (Part 1)](https://www.datacamp.com/courses/importing-data-in-r-part-1)
* DC [Importing Data in `R` (Part 2)](https://www.datacamp.com/courses/importing-data-in-r-part-2)
* Reflection #10

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 11 (OCT 28)

#### Due Sunday @ 11pm

* Project 3 progress report
* Reflection #11

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 12 (NOV 04)

#### Due Sunday @ 11pm

* Project 3 final writeup
* Reflection #12

#### During Class

* TBA

#### Prepare for Next Week

* TBA


***
### Week 13 (NOV 11)

#### Due Sunday @ 11pm

* Personal web page
* Reflection #13

#### During Class

* Work on personal web page
* Web page pair-and-share

#### Prepare for Next Week

* TBA


***
### Week 14 (NOV 18)

#### Due Sunday @ 11pm

* TBA
* Reflection #14

#### During Class

* Work on Project 4
* Project pair-and-share

#### Prepare for Next Week

* TBA


***
### Week 15 (NOV 25)

No class Thursday, NOV 28

#### Due Sunday @ 11pm

* N/A

#### During Class

* Work on Project 4
* Project pair-and-share

#### Prepare for Next Week

* TBA


***
### Week 16 (DEC 02)

Last day of class is Tuesday, DEC 03

#### Due TUESDAY @ 11pm

* Project 4 slides (final draft)
* Presentation plan (final draft)
* Reflection #15

#### During Class

* Finalize Project 4
* Project pair-and-share

#### Prepare for Next Week

* Make any final revisions on slides
* Rehearse your project presentation


***
### Final Exam

<div class="rmdnote">
<ul>
<li>Our <a href="https://registrar.appstate.edu/sites/registrar.appstate.edu/files/asu_spring_2019_exam_schedule.pdf">final exam time</a> is XXXX7 @ XX:XXxx in our usual classroom. You will make your final presentations and complete your Final Reflection at this time.</li>
</ul>
</div>
