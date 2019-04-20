# noise-phenomena compendium

[![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/cboettig/noise-phenomena/master?urlpath=rstudio)
[![Build Status](https://travis-ci.org/cboettig/noise-phenomena.svg?branch=master)](https://travis-ci.org/cboettig/noise-phenomena)
[![DOI](https://zenodo.org/badge/94135460.svg)](https://zenodo.org/badge/latestdoi/94135460)

<!--
public repo, so drone badge no longer needed since we can run on travis.  
[![Build Status](https://drone.carlboettiger.info/api/badges/cboettig/noise-phenomena/status.svg)](https://drone.carlboettiger.info/cboettig/noise-phenomena)
-->

A compendium of code, data, and author's manuscript accompanying the publication:

#### Carl Boettiger [![](https://orcid.org/sites/default/files/images/orcid_16x16.png)](https://orcid.org/0000-0002-1642-628X). *From noise to knowledge: how randomness generates novel phenomena and reveals information*.  Published in *Ecology Letters*, 22 May 2018 <https://doi.org/10.1111/ele.13085>

## Overview

This repository is organized as a reproducible research compendium. 
Click the [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/cboettig/noise-phenomena/master?urlpath=rstudio) button above to explore in an interactive RStudio session.   Binder uses [rocker-project.org](https://rocker-project.org) Docker images to ensure a consistent and reproducible computational environment.  These Docker images can also be used locally.  

An `Rmd` notebook and associated pdf for Appendix A can be found in [appendixA](/appendixA).  This notebook includes explanations and code necessary for all of the numerical examples discussed in the paper.  It should also provide a useful starting point for extending and exploring these models with other parameters.

Or to explore the code locally, clone or download this repository into RStudio or your preferred environment and install the compendium by running `devtools::install()`.  To install additional dependencies used only in formatting the figures, use `devtools::install(dep=TRUE)`.  


This compendium is checked by Travis-CI continuous integration.  Click the [![Build Status](https://travis-ci.org/cboettig/noise-phenomena.svg?branch=master)](https://travis-ci.org/cboettig/noise-phenomena) button for details.
