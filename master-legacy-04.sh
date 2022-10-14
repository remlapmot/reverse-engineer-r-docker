bash ./build-legacy-04.sh

bash ./test-legacy-04.sh

bash ./test-ghcr.sh

R -q -e "source('packages-alphabetical-legacy-04.R')"

diff --strip-trailing-cr packages-alphabetical.csv packages-alphabetical-legacy-04.csv

diff --strip-trailing-cr packages-alphabetical-ghcr.csv packages-alphabetical-legacy-04.csv

# Launch container with rstudio-server in browser window with:
# docker run --platform linux/amd64 --rm -ti -e PASSWORD=yourpassword -p 8787:8787 -v "/$PWD:/home/rstudio" remlapmot/r-docker:2023-04-04-rstudio
# multiple -v options may be used to map multiple directories
# In a browser go to: localhost:8787
# username: rstudio
# password: yourpassword
# After session finished close rstudio
# In shell session docker run issued, issue Control+C
