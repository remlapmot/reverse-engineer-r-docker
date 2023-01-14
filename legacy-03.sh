docker pull ghcr.io/opensafely-core/r:latest

# - install renv; 
# - don't need to call renv::init() because there is an out of date renv.lock file
# - take a snapshot of all packages and write the renv.lock file
docker run --platform linux/amd64 -v "/${PWD}:/out" ghcr.io/opensafely-core/r:latest \
    -e "install.packages('renv', \
            repos = 'https://packagemanager.posit.co/cran/__linux__/focal/2023-01-12+BkwhZFgY'); \
        renv::snapshot(prompt = FALSE, type = 'all'); \
        file.copy('renv.lock', '/out/renv.lock', overwrite = TRUE)"
