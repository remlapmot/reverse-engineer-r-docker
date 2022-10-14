docker pull ghcr.io/opensafely-core/r:latest

# Write list of packages
# Note the syntax for $PWD only works on a Unix shell or Git Bash on Windows (or within WSL)
docker run --platform linux/amd64 -v "/$PWD:/out" ghcr.io/opensafely-core/r:latest \
    -e "write.csv(installed.packages()[, c('Package', 'Version')], \
                  row.names = FALSE, file = '/out/packages-ghcr.csv')"

# Write alphabetical list of packages
# Note the syntax for $PWD only works on a Unix shell or Git Bash on Windows (or within WSL)
docker run --platform linux/amd64 -v "/$PWD:/out" ghcr.io/opensafely-core/r:latest \
    -e "ip <- installed.packages()[, c('Package', 'Version')]; \
    write.csv(ip[stringr::str_sort(ip[, 'Package']),], row.names = FALSE, \
    file = '/out/packages-alphabetical-ghcr.csv')"

# Run original test of loading all packages into memory
# tests=$(grep -v '^#' packages.txt | awk '{ print $1 }' | xargs -L1 -I {} echo "library(\"{}\", warn.conflicts = FALSE)")
# docker run --platform linux/amd64 ghcr.io/opensafely-core/r:latest \
#     -e "$tests"

# Interactive
# docker pull ghcr.io/opensafely-core/r:latest
# docker run --platform linux/amd64 --entrypoint /bin/bash -it ghcr.io/opensafely-core/r:latest

# Check locale
docker run --platform linux/amd64 ghcr.io/opensafely-core/r:latest \
    -e "Sys.getenv('LANG')"
