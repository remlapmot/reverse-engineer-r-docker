bash ./build-legacy-04.sh

bash ./test-legacy-04.sh

bash ./test-ghcr.sh

R -q -e "source('packages-alphabetical-legacy-04.R')"

diff --strip-trailing-cr packages-alphabetical.csv packages-alphabetical-legacy-04.csv

diff --strip-trailing-cr packages-alphabetical-ghcr.csv packages-alphabetical-legacy-04.csv
