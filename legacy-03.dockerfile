FROM rocker/r-ver:4.0.2

WORKDIR /workspace

# Prefixes for RSPM URLs to use in install.packages() repos argument
ENV RSPM_SOURCE=https://packagemanager.posit.co/cran \
    RSPM=https://packagemanager.posit.co/all/__linux__/focal \
    LANG=en_GB.UTF-8

# Uninstall additional packages from r-ver
RUN R -e "remove.packages(c('littler', 'docopt'))"

# Install system requirements in system-packages.txt: libgit2-dev, liblz4-dev, pandoc 
# In original container the versions are 
# libgit2-dev (0.26.0+dfsg.1-1)
# liblz4-dev (0.0~r131-2ubuntu)
# pandoc (1.19.2.4~dfsg-1b)
# brms requires: libglpk40 libxml2 libv8dev
# rgdal requires: libgdal-dev
# sf requires: libudunits2-dev
# magick requires: libmagick++-dev
# And change locale from en_US.UTF-8 to en_GB.UTF-8
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

# Read in renv.lock file
COPY renv.lock ./

# Restore packages from lock file and delete second copy of a few core packages
RUN R -q -e "install.packages('renv',  repos = '${RSPM}/2023-01-12+BkwhZFgY'); \
    renv::restore(); \
    remove.packages(c('MASS', 'mgcv', 'nlme', 'spatial', 'survival'), lib = '/usr/local/lib/R/library')"

# Write packages csv files
RUN R -q -e "ip <- installed.packages()[, c('Package', 'Version')]; \
             write.csv(ip, \
                       row.names = FALSE, \
                       file = '/packages-legacy-03.csv'); \
             write.csv(ip[stringr::str_sort(ip[, 'Package']), ], \
                       row.names = FALSE, \
                       file = '/packages-alphabetical-legacy-03.csv')"

ENTRYPOINT ["Rscript"]
