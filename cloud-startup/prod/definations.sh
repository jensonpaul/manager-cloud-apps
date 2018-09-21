set -x

export ENV="Production"

export DATA="./dev/data"
export MONGODB_NAME="my-cloud-database"

set +x

THISPATH=$(cd `dirname -- $0` && pwd)
source ${THISPATH}/secrets.sh