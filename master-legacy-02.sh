bash ./build-legacy-02.sh

bash ./test-legacy-02.sh

bash ./test-ghcr.sh

R -q -e "source('packages-alphabetical-legacy-02.R')"

diff --strip-trailing-cr packages-alphabetical.csv packages-alphabetical-legacy-02.csv

diff --strip-trailing-cr packages-alphabetical-ghcr.csv packages-alphabetical-legacy-02.csv
