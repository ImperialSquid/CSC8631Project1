# CSC8631Project1

The project tree looks as you see below. In particular the import files are:

* Main report: found at ./report/_book/reports.pdf
* Munging scripts: found in ./munging
* Graphing scripts: found at ./graphs/graph.R
* stats scripts: found at ./src/ttesting/R


+-- cache
|   +-- \*MANY cache files\*
|   \-- README.md
+-- config
|   +-- global.dcf
|   \-- README.md
+-- data
|   +-- \* The CSVs containing the original data \*
|   \-- README.md
+-- diagnostics
|   +-- 1.R
|   \-- README.md
+-- docs
|   \-- README.md
+-- graphs
|   +-- graph.R
|   \-- README.md
+-- lib
|   +-- globals.R
|   +-- helpers.R
|   \-- README.md
+-- logs
|   \-- README.md
+-- munge
|   +-- 01-dfrename.R
|   +-- 02-correctNAs.R
|   +-- 03-datetimes.R
|   +-- 04-factorise.R
|   +-- 05-mergedf.R
|   \-- README.md
+-- profiling
|   +-- 1.R
|   \-- README.md
+-- README.md
+-- reports
|   +-- 01-Business-Understanding.Rmd
|   +-- 02-Data-Understanding-Preparation-Cycle-1.Rmd
|   +-- 03-Data-Understanding-Preparation-Cycle-2.Rmd
|   +-- 04-Modelling.Rmd
|   +-- 05-Evaluation.Rmd
|   +-- 06-Deployment.Rmd
|   +-- index.Rmd
|   +-- README.md
|   +-- style.css
|   +-- _01-Business-Understanding-OLD.Rmd
|   +-- _book
|   |   \-- reports.pdf
|   +-- _bookdown.yml
|   +-- _CRISP-DM Project 1 Writeup.Rmd
|   \-- _output.yml
+-- src
|   +-- build_report.R
|   +-- eda.R
|   +-- filterqresponses.R
|   +-- README.md
|   \-- ttesting.R
+-- tests
|   +-- 1.R
|   \-- README.md
\-- TODO