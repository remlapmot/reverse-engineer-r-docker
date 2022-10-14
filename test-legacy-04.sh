# Write list of packages locally
# Note the syntax for $PWD only works on a Unix shell or Git Bash on Windows (or within WSL)
docker run --platform linux/amd64 -v "/${PWD}:/out" legacy-04 \
    -e "write.csv(installed.packages()[, c('Package', 'Version')], \
                  row.names = FALSE, \
                  file = '/out/packages-legacy-04.csv')"

# Write alphabetical list of packages locally
# Note the syntax for $PWD only works on a Unix shell or Git Bash on Windows (or within WSL)
docker run --platform linux/amd64 -v "/${PWD}:/out" legacy-04 \
    -e "ip <- installed.packages()[, c('Package', 'Version')]; \
        write.csv(ip[stringr::str_sort(ip[, 'Package']),], \
                  row.names = FALSE, \
                  file = '/out/packages-alphabetical-legacy-04.csv')"

# Load all packages
tests=$(grep -v '^#' packages.txt | awk '{ print $1 }' | xargs -L1 -I {} echo "library(\"{}\", warn.conflicts = FALSE)")
docker run --platform linux/amd64 legacy-04 \
    -e "$tests"

# Check locale
docker run --platform linux/amd64 legacy-04 \
    -e "Sys.getenv('LANG'); \
        Sys.getlocale(); \
        sort(c(head(letters), head(LETTERS)))"
