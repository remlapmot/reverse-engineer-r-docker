bash ./legacy-03.sh

bash ./build-legacy-03.sh

bash ./test-legacy-03.sh

bash ./test-ghcr.sh

R -q -e "source('packages-alphabetical-legacy-03.R')"

diff --strip-trailing-cr packages-alphabetical.csv packages-alphabetical-legacy-03.csv

diff --strip-trailing-cr packages-alphabetical-ghcr.csv packages-alphabetical-legacy-03.csv
