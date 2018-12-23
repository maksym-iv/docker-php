set -e

maintainer="mack"
version="5.5"
release="stretch"
apps="cli fpm apache"

for app in ${apps}; do
    tag="${maintainer}/php:${version}-${app}-${release}"
    docker build \
        -t ${tag} \
        -f ${version}/${release}/${app}/Dockerfile \
        ${version}/${release}/${app}
    docker push ${tag}
done