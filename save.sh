#!/bin/bash

function save-to-repos() {
    git remote rm origin
    git remote add origin $1
    git push
}

declare readonly gitRemotes=(
    git@bitbucket.org:pH_7/freewriting-pirzy-website.git
    git@gitlab.com:pH-7/freewriting-pirzy-website.git
    git@github.com:free-writing/Pirzy-Website.git
)
for remote in "${gitRemotes[@]}"
do
    save-to-repos $remote
done
