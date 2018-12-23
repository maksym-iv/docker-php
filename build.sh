set -e

version="5.5"
release="stretch"
apps="cli fpm apache"
# tags="${version}-${app}-${release}", 5.5-cli-stretch"
# buildTags=' ' read -r -a array <<< "${tags}"
for a in ${apps}; do
    docker build \
        -t ${version}-${app}-${release} \
        -f ${version}/${app}/${release}/Dockerfile \
        ${version}/${app}/${release} 
done