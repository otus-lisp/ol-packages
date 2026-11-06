#!/bin/bash
PWD=`pwd`
REPO="$PWD/.venv/ol-packages"
mkdir -p $REPO; cd $REPO

curl -fsSL https://github.com/otus-lisp/ol-packages/archive/refs/heads/master.tar.gz| tar -xz --strip-components=1
chmod +x olpm # sanity chmod

echo "# ol-packages repo setup (venv)" >>activate
echo "export OLPM_PATH=$REPO"   >>activate
echo "export PATH=\$PATH:$REPO" >>activate

export OLPM_PATH=$REPO
export PATH=$PATH:$REPO
cd $PWD
