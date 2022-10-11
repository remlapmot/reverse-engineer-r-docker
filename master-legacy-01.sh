bash ./build-legacy-01.sh

bash ./test-legacy-01.sh

bash ./test-ghcr.sh

R -q -e "source('packages-alphabetical-legacy-01.R')"

diff --strip-trailing-cr packages-alphabetical.csv packages-alphabetical-legacy-01.csv

diff --strip-trailing-cr packages-alphabetical-ghcr.csv packages-alphabetical-legacy-01.csv
