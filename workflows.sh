#!/bin/bash

WORKFLOW_TEMPLATE=$(cat .github/workflow_template.yml)
SERVICE=(config-server product)

for SERVICE_NAME in "${SERVICE[@]}"; do
    WORKFLOW="${WORKFLOW_TEMPLATE//\{\{SERVICE_NAME\}\}/${SERVICE_NAME}}"
    echo "${WORKFLOW}" > ".github/workflows/${SERVICE_NAME}-ci.yml"
done	
