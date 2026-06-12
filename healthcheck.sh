#!/bin/bash
set -e
SERVICE=$1
curl -f "http://localhost:8080/${SERVICE}/health" || exit 1
echo "Health check passed for ${SERVICE}"
