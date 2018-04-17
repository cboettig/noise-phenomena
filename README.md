# noise-phenomena

[![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/cboettig/noise-phenomena/master)
[![Build Status](https://travis-ci.org/cboettig/noise-phenomena.svg?branch=master)](https://travis-ci.org/cboettig/noise-phenomena)
[![Build Status](https://drone.carlboettiger.info/api/badges/cboettig/noise-phenomena/status.svg)](https://drone.carlboettiger.info/cboettig/noise-phenomena)
[![DOI](https://zenodo.org/badge/94135460.svg)](https://zenodo.org/badge/latestdoi/94135460)


## From noise to knowledge: how randomness generates novel phenomena and reveals information

A Review & Synthesis piece invited to Ecology Letters on noise-driven phenomena in population biology.

Author: Carl Boettiger

## Overview

This repository is organized as a reproducible research compendium. Clone the repository in RStudio or your perferred environment and install the compendium by running `devtools::install()`.  To install additional dependencies used only in formatting the figures, use `devtools::install(dep=TRUE)`.  

Click the [![Binder](http://mybinder.org/badge.svg)](http://beta.mybinder.org/v2/gh/cboettig/noise-phenomena/master) button above to explore in an interactive RStudio session.  (Select `New`->`RStudio Session` once binder starts, see details at [rocker/binder](https://github.com/rocker-org/binder)).  Binder uses [rocker-project.org](https://rocker-project.org) Docker images to ensure a consistent and reproducible computational environment.  These Docker iamges can also be used locally.  

An `Rmd` notebook and associated pdf for Appendix A can be found in `[appendixA](/appendixA)`.  This notebook includes explanations and code necessary for all of the numerical examples discussed in the paper.  It should also provide a useful starting point for extending and exploring these models with other parameters.

This compendium is checked by Travis-CI continuous integration.  Click the [![Build Status](https://travis-ci.org/cboettig/noise-phenomena.svg?branch=master)](https://travis-ci.org/cboettig/noise-phenomena) button for details.
