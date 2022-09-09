#!/bin/bash

DATA=$(curl https://api.covidtracking.com/v1/us/current.json)
POSITIVE=$(echo $DATA | jq '.[0].positive')
PENDING=$(echo $DATA | jq '.[0].pending')
DEATHINC=$(echo $DATA | jq '.[0].deathIncrease')
DEATHTOLL=$(echo $DATA |jq '.[0].death')
TODAY=$(date)


echo "On $TODAY, there were $POSITIVE positive COVID cases with $PENDING still pending."
echo "There have been $DEATHINC additional deaths to the $DEATHTOLL total deaths overall."


