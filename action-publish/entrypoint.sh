#!/bin/sh -l

echo "GITHUB_REF=$GITHUB_REF"

if  [[ $GITHUB_REF == refs/tags/publish* ]] ;
then
  echo OK
  mvn --version
  ls -la
else
  echo ERROR the GITHUB_REF must start with refs/tags/publish
  exit 1
fi
