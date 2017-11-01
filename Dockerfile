FROM rocker/verse:3.4.2

## Install dependencies manually
RUN apt-get update && \
  apt-get -y install fonts-roboto  && \
  install2.r -e nimble RcppRoll adaptivetau hrbrthemes ggthemes gridExtra && \
  installGithub.r cboettig/regimeshifts@0.0.1

COPY . /home/rstudio/noise-phenomena
WORKDIR /home/rstudio/noise-phenomena

# auto-install all dependencies listed in DESCRIPTION.  Doesn't install Remotes though. 
RUN R -e "devtools::install(dep=TRUE)"

## Render appendix
RUN R -e "rmarkdown::render('appendixA/appendixA.Rmd')"

