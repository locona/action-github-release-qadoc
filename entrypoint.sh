#!/bin/sh

cd "$GITHUB_WORKSPACE" || exit 1

export GITHUB_TOKEN="${INPUT_GITHUB_TOKEN}"
GITHUB_REPOSITORY=${INPUT_GITHUB_REPOSITORY}
ISSUE="${INPUT_ISSUE}"

SPLIT_GITHUB_REPOSITORY=(${GITHUB_REPOSITORY//\// })
ORGANIZATION=${SPLIT_GITHUB_REPOSITORY[@]}
REPOSITORY=${SPLIT_GITHUB_REPOSITORY[1]}

echo "ISSUE: ${ISSUE}"
echo "GITHUB_REPOSITORY: ${GITHUB_REPOSITORY}"
echo "REPOSITORY: ${REPOSITORY}"
echo "ORGANIZATION: ${ORGANIZATION}"

github-release-qadoc --issue=${ISSUE} --repo=${REPOSITORY} --organization=${ORGANIZATION} --ci=true