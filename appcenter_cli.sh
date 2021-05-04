#!/usr/bin/env bash

ANDROID_FILE=`find /Users/prashant.wosti/workspace/domain-android-gradle/ -name *.apk | head -1`

npm install -g appcenter-cli

appcenter login --token 99fe8e19d7171b68dfde26c6b1955ab6199b408e

appcenter distribute release --app DomainAU/Domain-2 --file $ANDROID_FILE --group "Internal"