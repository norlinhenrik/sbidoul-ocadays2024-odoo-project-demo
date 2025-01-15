#!/bin/bash

GH_REPOS=(
    "loymcom/dev"
    "loymcom/apps"
)

for REPO in "${GH_REPOS[@]}"; do
    PATH_TO_REPO="../gh/$REPO"
    mkdir -p $PATH_TO_REPO
    git clone git@github.com:$REPO $PATH_TO_REPO
done
