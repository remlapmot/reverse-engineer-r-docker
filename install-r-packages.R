# Uninstall additional packages from r-ver ----
remove.packages(c("littler", "docopt"))

# Install packages ----
# Installing Linux binary packages from the public RStudio Package Manager
# (RSPM) repository.
# URLs for repos were obtained by selecting the relevant date on the calendar on
# https://packagemanager.rstudio.com/client/#/repos/1/overview

# RSPM URL prefixes
rspm <- "https://packagemanager.posit.co/all/__linux__/focal"
rspm_source <- "https://packagemanager.posit.co/cran"

# 2020-08-20: Install packages listed in Dockerfile
# Apart from
#   - renv which is not in container
#   - mgcv of which a slightly later version is required
install.packages(
  c(
    "knitr",
    "DBI",
    "GGally",
    "Hmisc",
    "NHPoisson",
    "Rcpp",
    "survival",
    "binom",
    "brms",
    "cowplot",
    "data.table",
    "deSolve",
    "doParallel",
    "dplyr",
    "dtplyr",
    "foreach",
    "furrr",
    "ggdist",
    "here",
    "janitor",
    "lme4",
    "lubridate",
    "magrittr",
    "maptools",
    "matrixStats",
    "mice",
    "mvtnorm",
    "naniar",
    "nlme",
    "parallel",
    "plotrix",
    "relsurv",
    "rgdal",
    "rgeos",
    "sandwich",
    "sf",
    "stats",
    "stringr",
    "tictoc",
    "tidyverse",
    "zoo"
  ),
  repos = paste0(
    rspm,
    "/2020-08-20+MTozMTIsMjoyODc7RUIwRDc1MDI"
  )
)

# 2020-08-31: mgcv
install.packages("mgcv",
  repos = paste0(
    rspm,
    "/2020-08-31+MTozMTYsMjoyODc7N0Q0MzBBRTI"
  )
)

# 2020-09-03: pacman
install.packages("pacman",
  repos = paste0(
    rspm,
    "/2020-09-03+MTozMTksMjoyODc7RTQ1OEMyMUQ"
  )
)

# 2020-11-25: caret
install.packages("caret",
  repos = paste0(
    rspm,
    "/2020-11-25+MTozNzQsMjozNzA7NEFFRTA4MEU"
  )
)

# 2020-12-03: odbc, SCCS
install.packages(
  c(
    "odbc",
    "SCCS"
  ),
  repos = paste0(
    rspm,
    "/2020-12-14+MToyNTI3MzcsMjoxNzc2OTI7NEExNUIxQUU"
  )
)

# Installing packages additionally listed in packages.txt.
# As much as possible trying to follow the order they were installed in the
# commit history

# 2021-01-20: patchwork, svglite, skimr, gt
install.packages(
  c(
    "patchwork",
    "svglite",
    "skimr",
    "gt"
  ),
  repos = paste0(
    rspm,
    "/2021-01-20+MTo5MDgzNjAsMjo3ODQzNDk7RTRBRDQ2M0Y"
  )
)

# 2021-01-27: flexsurv
install.packages("flexsurv",
  repos = paste0(
    rspm,
    "/2021-01-27+MToxMDMzMzc0LDI6Nzg0MzQ5Ozg2QzlGMzYw"
  )
)

# 2021-02-10: survminer, pch, fontquiver
install.packages(
  c(
    "survminer",
    "pch",
    "fontquiver"
  ),
  repos = paste0(
    rspm,
    "/2021-02-10+MToxMjkzODk1LDI6Nzg0MzQ5O0E0MEY3MDIx"
  )
)

# 2021-02-16: detectseparation, parglm
install.packages(
  c(
    "detectseparation",
    "parglm"
  ),
  repos = paste0(
    rspm,
    "/2021-02-16+MToxMzkwNTkzLDI6Nzg0MzQ5O0ZBQTFCQ0RE"
  )
)

# 2021-02-18: interactions, fastDummies, splines2
install.packages(
  c(
    "interactions",
    "fastDummies",
    "splines2"
  ),
  repos = paste0(
    rspm,
    "/2021-02-18+MToxNDI2MzI2LDI6Nzg0MzQ5OzM4MDhDMkI2"
  )
)

# 2021-03-02: gtsummary, modelsummary, mnlogit
install.packages(
  c(
    "gtsummary",
    "modelsummary",
    "mnlogit"
  ),
  repos = paste0(
    rspm,
    "/2021-03-02+MToxNjQwNjc3LDI6Nzg0MzQ5OzJGOTI4NjFC"
  )
)

# 2021-03-16: Gmisc
install.packages("Gmisc",
  repos = paste0(
    rspm,
    "/2021-03-16+MToxNzk3OTgwLDI6MTc1MDc1MjtBQzkxREVDNA"
  )
)

# 2021-04-12: coxme
install.packages("coxme",
  repos = paste0(
    rspm,
    "/2021-04-12+MToyMzA1MDg2LDI6MTc1MDc1MjsyN0Q1QzMyRA"
  )
)

# 2021-05-04: estimatr
install.packages("estimatr",
  repos = paste0(
    rspm,
    "/2021-05-04+MToyNzE2MzY1LDI6MTc1MDc1Mjs2QzhGQkNCQQ"
  )
)

# 2021-05-13: feather, cpp11, arrow
install.packages(
  c(
    "feather",
    "cpp11",
    "arrow"
  ),
  repos = paste0(
    rspm,
    "/2021-05-13+MToyODg2NTAzLDI6Mjg0NzY4OTtBNDBFNzg2Qg"
  )
)

# 2021-06-18: detectseparation, brglm2, MatchIt, egg
install.packages(
  c(
    "detectseparation",
    "brglm2",
    "MatchIt",
    "egg"
  ),
  repos = paste0(
    rspm,
    "/2021-06-21+MTozNjU2OTE4LDI6MzMxODAzMTtBNDFFNDI3Ng"
  )
)

# 2021-09-08: optparse
install.packages("optparse",
  repos = paste0(
    rspm,
    "/2021-09-09+MTo1MDA2MDA0LDI6NDUyNjIxNTtEMzU5RjQ1Nw"
  )
)

# 2021-09-09: caTools, gets
install.packages(
  c(
    "caTools",
    "gets"
  ),
  repos = paste0(
    rspm,
    "/2021-09-09+MTo1MDA2MDA0LDI6NDUyNjIxNTtEMzU5RjQ1Nw"
  )
)

# 2021-10-25: ggalluvial
install.packages("ggalluvial",
  repos = paste0(
    rspm,
    "/2021-10-26+MTo1ODY5NzUwLDI6NDUyNjIxNTtCOTkwOUY5OQ"
  )
)

# 2022-01-11: ggvenn
install.packages("ggvenn",
  repos = paste0(
    rspm,
    "/2022-01-11+MTo3NTI2MDgxLDI6NDUyNjIxNTs0MDBDOEM3QQ"
  )
)

# 2022-01-12: rms
install.packages("rms",
  repos = paste0(
    rspm,
    "/2022-01-12+MTo3NTQ3NjcwLDI6NDUyNjIxNTsxMjkzRTE5Rg"
  )
)

# 2022-01-24: finalfit
install.packages("finalfit",
  repos = paste0(
    rspm,
    "/2022-01-26+Y3JhbiwyOjQ1MjYyMTU7M0VCOUE5RkM"
  )
)

# 2022-03-08: pammtools, cmprsk
install.packages(
  c(
    "pammtools",
    "cmprsk"
  ),
  repos = paste0(
    rspm,
    "/2022-01-26+MTo3ODU1NDgwLDI6NDUyNjIxNTs3MDQwQTNDNQ"
  )
)

# 2022-03-08: magick from source
install.packages("magick",
  repos = paste0(rspm_source, "/2022-03-08/")
)

# 2022-04-01: VGAM, segmented
install.packages(
  c(
    "VGAM",
    "segmented"
  ),
  repos = paste0(
    rspm,
    "/2022-04-01+MTo5MjUzNjk4LDI6NDUyNjIxNTtCQUE2OUVEQQ"
  )
)

# 2022-04-28: Epi, vcd, tsModel
install.packages(
  c(
    "Epi",
    "vcd",
    "tsModel"
  ),
  repos = paste0(
    rspm,
    "/2022-04-28+MTo5ODM5OTQ4LDI6NDUyNjIxNTtBMERDQzYyNA"
  )
)

# 2022-05-06: ggh4x, RcppRoll
install.packages(
  c(
    "ggh4x",
    "RcppRoll"
  ),
  repos = paste0(
    rspm,
    "/2022-05-06+MToxMDAxNzE4OSwyOjQ1MjYyMTU7RTE3MTg5QTI"
  )
)

# 2022-05-18: bayesm
install.packages("bayesm",
  repos = paste0(
    rspm,
    "/2022-05-18+MToxMDI5MjcxNSwyOjQ1MjYyMTU7OTBDOEJBRTI"
  )
)

# 2022-05-23: consort
install.packages("consort",
  repos = paste0(
    rspm,
    "/2022-05-23+MToxMDQwOTg0NiwyOjQ1MjYyMTU7MUM3RDRGMDM"
  )
)

# Fix up packages with incorrect versions

# Remove MASS, mgcv, nlme,  spatial, survival from /usr/local/lib/R/library
remove.packages(
  c(
    "MASS",
    "mgcv",
    "nlme",
    "spatial",
    "survival"
  ),
  lib = "/usr/local/lib/R/library"
)

# Fix backports from 1.2.1 (2020-12-09) to 1.1.9 (2020-08-24)
remove.packages("backports")
install.packages("backports",
  repos = paste0(
    rspm,
    "/2020-08-27+MTozMTUsMjoyODc7QzYyODgyRDQ"
  )
)

# Fix conquer from 1.0.1 (2020-05-06) to 1.0.2 (2020-08-27)
remove.packages("conquer")
install.packages("conquer",
  repos = paste0(
    rspm,
    "/2020-08-31+MTozMTYsMjoyODc7N0Q0MzBBRTI"
  )
)

# Fix glue from 1.4.1 (2020-05-13) to 1.4.2 (2020-08-27)
remove.packages("glue")
install.packages("glue",
  repos = paste0(
    rspm,
    "/2020-08-31+MTozMTYsMjoyODc7N0Q0MzBBRTI"
  )
)

# Fix lmtest from 0.9-38 (2020-09-09) to 0.9-37 (2019-04-30)
remove.packages("lmtest")
install.packages("lmtest",
  repos = paste0(
    rspm,
    "/2020-08-31+MTozMTYsMjoyODc7N0Q0MzBBRTI"
  )
)

# Fix maptools from 1.0-1 (2020-05-14) to 1.0-2 (2020-08-24)
remove.packages("maptools")
install.packages("maptools",
  repos = paste0(
    rspm,
    "/2020-08-31+MTozMTYsMjoyODc7N0Q0MzBBRTI"
  )
)

# Install MASS 7.3-52 (2020-08-18)
install.packages("MASS",
  repos = paste0(
    rspm,
    "/2020-09-01+MTozMTcsMjoyODc7QkNBMjZDNQ"
  )
)

# Fix naniar from 0.5.2 (2020-06-29) to 0.6.0 (2020-09-02)
remove.packages("naniar")
install.packages("naniar",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Install nlme 3.1-149 (2020-08-23)
install.packages("nlme",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Fix processx from 3.4.3 (2020-07-05) to 3.4.4 (2020-09-03)
remove.packages("processx")
install.packages("processx",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Fix RcppArmadillo from 0.9.900.2.0 (2020-07-17) to 0.9.900.3.0 (2020-09-04)
remove.packages("RcppArmadillo")
install.packages("RcppArmadillo",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Fix tidyr from 1.1.1 (2020-07-31) to 1.1.2 (2020-08-27)
remove.packages("tidyr")
install.packages("tidyr",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Fix vctrs from 0.3.2 (2020-07-15) to 0.3.4 (2020-08-29)
remove.packages("vctrs")
install.packages("vctrs",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# Fix XML from 3.99-0.5 (2020-07-23) to 3.99-0.6 (2021-03-16)
remove.packages("XML")
install.packages("XML",
  repos = paste0(
    rspm,
    "/2021-03-18+MToxODM1NDIxLDI6MTc1MDc1MjsxNUVERDRFRg"
  )
)

# Fix zip from 2.1.0 (2020-08-10) to 2.1.1 (2020-08-27)
remove.packages("zip")
install.packages("zip",
  repos = paste0(
    rspm,
    "/2020-09-08+MTozMjEsMjoyODc7RkVBRjQyMzM"
  )
)

# 2022-06-13: survey
install.packages("survey",
  repos = paste0(
    rspm,
    "/2022-06-10+MToxMDgyMzY1MSwyOjQ1MjYyMTU7OUEyQzE2QUI"
  )
)

# 2022-06-17: incidence
install.packages("incidence",
  repos = paste0(
    rspm,
    "/2022-06-16+MToxMDk3NDM4NSwyOjQ1MjYyMTU7NEZENUU2Qzg"
  )
)

# 2022-07-11: predtools
install.packages("predtools",
  repos = paste0(
    rspm,
    "/2022-07-08+MToxMTQ3NTUzNSwyOjQ1MjYyMTU7MzU1RTIxRUM"
  )
)

# 2022-07-29: pseudo
install.packages("pseudo",
  repos = paste0(
    rspm,
    "/2022-07-28+MToxMTkzNDQ0MSwyOjQ1MjYyMTU7OUU2MDBBQUY"
  )
)

# 2022-09-08: cobalt, WeightIt; one of which updates backports
install.packages(c("cobalt", "WeightIt"),
  repos = paste0(
    rspm,
    "/2022-09-08+MToxMjg5Njc3MCwyOjQ1MjYyMTU7M0IxRTMxMDU"
  )
)

# 2022-10-11:
# glmnet with dependency shape
# R.utils with dependency R.oo
# metafor with dependencies mathjaxr, metadat, pbapply
install.packages(c("glmnet", "R.utils", "metafor"),
  repos = paste0(
    rspm,
    "/2022-10-07+MToxMzU2ODg1OSwyOjQ1MjYyMTU7ODZGRDlENjM"
  )
)

# 2022-10-12: lcmm
install.packages("lcmm",
  repos = paste0(
    rspm,
    "/2022-10-12+MToxMzY4NDA2NiwyOjQ1MjYyMTU7MkU3MkU1NzA"
  )
)

# 2022-10-13: dtwclust verison 5.5.10
install.packages("dtwclust",
  repos = paste0(
    rspm,
    "/2022-09-23+MToxMzI0NjI1NSwyOjQ1MjYyMTU7ODhFRDhERjA"
  )
)

# 2022-11-02: randomForest version 4.6-14
install.packages("randomForest",
  repos = paste0(
    rspm,
    "/2022-02-01+MTo3OTc5MjY2LDI6NDUyNjIxNTtCQUJBRUEyOQ"
  )
)

# 2022-11-02: randomForestExplainer
install.packages("randomForestExplainer",
  repos = paste0(
    rspm,
    "/2022-11-02+MToxNDE2NDA5NiwyOjQ1MjYyMTU7MkZBOUM5RTk"
  )
)

# 2023-01-18: ggfortify
install.packages("ggfortify",
  repos = paste0(
    rspm,
    "/2023-01-18+caWj9Yom"
  )
)

# 2023-02-09: forestploter
install.packages("forestploter",
  repos = paste0(
    rspm,
    "/2023-02-09+Sbsm30SZ"
  ))

# Write out csv files of packages and their versions ----
ip <- installed.packages()[, c("Package", "Version")]

# Write packages-legacy-01.csv in container
write.csv(ip,
  row.names = FALSE,
  file = "/packages-legacy-01.csv"
)

# Write packages-alphabetical-legacy-01.csv in container
write.csv(ip[stringr::str_sort(ip[, "Package"]), ],
  row.names = FALSE,
  file = "/packages-alphabetical-legacy-01.csv"
)
