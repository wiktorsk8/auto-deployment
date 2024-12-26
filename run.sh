#!/bin/bash

SCRIPT_PATH=$(realpath "$0")

source "$SCRIPT_PATH"/env-setup.sh
"$SCRIPT_PATH"/pull-changes.sh
