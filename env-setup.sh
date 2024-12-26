#!/bin/bash

cd "$AUTO_DEPLOYMENT_ROOT"


export $(grep -v '^#' .env | xargs)
