#!/bin/bash -eu

echo " "
echo "GITHUB_REF=$GITHUB_REF"
echo " "

if [[ "$GITHUB_REF" == "refs/tags/publish"* ]]; then
  echo OK
  export DMNTCK_PUBLISH_ID=${GITHUB_REF#"refs/tags/publish"}
  echo "DMNTCK_PUBLISH_ID=$DMNTCK_PUBLISH_ID"
  export DMNTCK_PUBLISH_RESULTSREF="results$DMNTCK_PUBLISH_ID"
  echo "DMNTCK_PUBLISH_RESULTSREF=$DMNTCK_PUBLISH_RESULTSREF"
  echo " "
  mvn --version
  echo " "
  ls -la
else
  echo ERROR the GITHUB_REF must start with refs/tags/publish
  exit 1
fi
