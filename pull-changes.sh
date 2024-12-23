!#/bin/bash

DIFF=$(git diff origin/master)

if [ -z "$DIFF"]; then
    echo "Changes not detected"

else
    echo "Found some changes: "
    echo "$DIFF"
fi