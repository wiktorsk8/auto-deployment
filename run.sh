#!/bin/bash

SCRIPT_PATH=$(realpath "$0")
SCRIPT_DIR=$(dirname "$SCRIPT_PATH")

source "$SCRIPT_DIR"/env-setup.sh
"$SCRIPT_DIR"/pull-changes.sh
