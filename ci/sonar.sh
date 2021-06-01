#!/bin/sh
set -eup
SONAR_LOGIN=${SONAR_LOGIN:-"admin"}
SONAR_PASSPOWRD=${SONAR_PASSPOWRD:-"123456"}
SONAR_PROJECTKEY=${SONAR_PROJECTKEY:-"golang-with-sonar"}
if [ -x sonar-scanner ]; then
  echo "sonar-scanner command not found. Please install it or check your PATH variable"
  exit 1
fi
sonar-scanner -Dsonar.login="$SONAR_LOGIN" -Dsonar.password="$SONAR_PASSPOWRD" -Dsonar.projectKey="$SONAR_PROJECTKEY"

