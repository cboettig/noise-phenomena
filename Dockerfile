FROM rocker/verse:3.4.2

## Install dependencies manually
RUN apt-get update && \
  apt-get -y install fonts-roboto  

COPY . /home/rstudio/noise-phenomena
WORKDIR /home/rstudio/noise-phenomena

RUN R -e "devtools::install(dep=TRUE)"
RUN R -e "rmarkdown::render('appendixA/appendixA.Rmd')"

