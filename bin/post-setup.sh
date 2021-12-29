#!/usr/bin/env bash

TARGET_ORG_ALIAS=${1:-}
STAGE=${2:-}

### Not required
### This script will execute after the org has been setup
reviewAppSfdxAuthUrl=$(sfdx force:org:display --verbose -u $TARGET_ORG_ALIAS | grep "Sfdx Auth Url" | awk '{ print $4 }')

invokeCmd "sfdx force:data:record:create -s Review_App__c -u ProdOrg -v \"Review_App_URL='$reviewAppSfdxAuthUrl' Stage__c='$Stage' App__c='$HEROKU_APP_NAME' Branch__c='$HEROKU_BRANCH' Pull_Request__c='$HEROKU_PR_NUMBER'\""