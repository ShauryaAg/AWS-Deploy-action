#!/bin/sh

temp=("$(git diff-tree --submodule=diff --name-only ${GITHUB_EVENT_BEFORE} ${GITHUB_SHA})")

echo $temp

# Keeping only distinct values in the array
UNIQ_SUBS=($(echo "${temp[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))

echo ::set-output name=submodules::$UNIQ_SUBS
