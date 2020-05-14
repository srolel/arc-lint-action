#!/bin/sh

cp /action/problem-matcher.json /github/workflow/problem-matcher.json

echo "::add-matcher::${RUNNER_TEMP}/_github_workflow/problem-matcher.json"

${INPUT_ARC_PATH} lint --output compiler ${INPUT_ARGUMENTS}

status=$?

echo "::remove-matcher owner=arclint::"

exit $status
