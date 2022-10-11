FROM rocker/r-ver:4.0.2

WORKDIR /workspace

# Environment variable for locale
ENV LANG=en_GB.UTF-8

# Install system requirements in system-packages.txt: libgit2-dev, liblz4-dev, pandoc 
# In original container the versions are 
# libgit2-dev (0.26.0+dfsg.1-1)
# liblz4-dev (0.0~r131-2ubuntu)
# pandoc (1.19.2.4~dfsg-1b)
# brms requires: libglpk40 libxml2 libv8dev
# rgdal requires: libgdal-dev
# sf requires: libudunits2-dev
# magick requires: libmagick++-dev
# And generate and set locale (from en_US.UTF-8 to en_GB.UTF-8)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
                    libgdal-dev \
                    libgit2-dev \
                    libglpk40 \
                    liblz4-dev \
                    libmagick++-dev \
                    libudunits2-dev \
                    libv8-dev \
                    libxml2 \
                    pandoc && \
    apt-get autoremove -y && \
    apt-get autoclean -y; \
    /usr/sbin/locale-gen --lang "${LANG}" && \
    /usr/sbin/update-locale --reset LANG="${LANG}"

# Install R packages
COPY install-r-packages.R ./
RUN R < install-r-packages.R

ENTRYPOINT ["Rscript"]
