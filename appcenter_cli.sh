#!/usr/bin/env bash

USER_TOKEN=$1
FILE_PATH=$2
ORG_NAME=$3
APP_NAME=$4
GROUP_NAME=$5


# ANDROID_FILE=`find /Users/prashant.wosti/workspace/domain-android-gradle/ -name *.apk | head -1`
ANDROID_FILE=`find $FILE_PATH -name *.apk | head -1`

npm install -g appcenter-cli

# appcenter login --token 99fe8e19d7171b68dfde26c6b1955ab6199b408e
appcenter login --token $USER_TOKEN

# appcenter distribute release --app DomainAU/Domain-2 --file $ANDROID_FILE --group "Internal"
appcenter distribute release --app $ORG_NAME/$APP_NAME --file $ANDROID_FILE --group $GROUP_NAME