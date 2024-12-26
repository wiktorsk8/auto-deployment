#!/bin/bash

ROOT_DIR=$(pwd)

cd "$PROJECT_PATH" || { echo "Failed to change directory to $PROJECT_PATH"; exit 1; }

git fetch origin

if git log HEAD.."origin/$BRANCH_NAME" --oneline | grep -q .; then
    echo "Changes detected on $BRANCH_NAME. Pulling changes..."
    git pull origin "$BRANCH_NAME"

else
    echo "Changes not found on branch $BRANCH_NAME."
fi

cd "$ROOT_DIR"