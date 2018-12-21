#!/bin/sh -l

sh --version
echo " "

echo "GITHUB_REF=$GITHUB_REF"
echo "${GITHUB_REF:0:17}"

if [ "${GITHUB_REF:0:17}" == "refs/tags/publish" ] ;
then
  echo OK
  export DMNTCK_PUBLISH_ID=${GITHUB_REF#"refs/tags/publish"}
  echo "DMNTCK_PUBLISH_ID=$DMNTCK_PUBLISH_ID"
  echo " "
  mvn --version
  echo " "
  ls -la
else
  echo ERROR the GITHUB_REF must start with refs/tags/publish
  exit 1
fi
