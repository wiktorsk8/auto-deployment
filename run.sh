#!/bin/bash

AUTO_DEPLOYMENT_ROOT=$(dirname "$0")

export AUTO_DEPLOYMENT_ROOT

source "$AUTO_DEPLOYMENT_ROOT"/env-setup.sh
"$AUTO_DEPLOYMENT_ROOT"/pull-changes.sh
