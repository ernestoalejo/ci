#!/bin/bash

set -eu

CMD=${1:-}

if [[ -z $CMD ]]; then
  echo "run one command of this list: push draft release"
  exit 1
fi

case $CMD in
push)
  echo "===> Push a new commit to Gerrit..."
  git push origin HEAD:refs/for/master
  ;;

draft)
  echo "===> Push a new DRAFT commit to Gerrit..."
  git push origin HEAD:refs/drafts/master
  ;;

release)
  echo "===> Release a new version to production..."
  git fetch origin
  git update-ref -m "release: Release to " refs/heads/release $(git ls-remote origin master --refs | cut -f 1)
  git push -f origin release
  ;;
esac
