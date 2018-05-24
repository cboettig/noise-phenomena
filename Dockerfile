FROM rocker/binder:3.5.0

## Copies your repo files into the Docker Container
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}

## Become normal user again
USER ${NB_USER}

## Run an install.R script, if it exists.
RUN if [ -f DESCRIPTION ]; then R --quiet -e "devtools::install(dep=TRUE)"; fi
