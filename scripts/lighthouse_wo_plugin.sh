#!/bin/bash

# Create the output directory if it doesn't exist
mkdir -p ./lighthouse_performance/wo_plugin

# Run the lighthouse command 10 times with 10 second pauses
for i in {1..20}
do
  # Get current timestamp in format YYYYMMDD_HHMMSS
  TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

  # Run the lighthouse command with the timestamp in the filename
  pnpx lighthouse http://localhost:8000 --preset=desktop --output json --output-path=./lighthouse_performance/wo_plugin/${TIMESTAMP}_wo_plugin.json

  echo "Completed run $i at ${TIMESTAMP}"

  # Wait 10 seconds before next run (skip waiting after the last run)
  if [ $i -lt 20 ]; then
    echo "Waiting 10 seconds before next run..."
    sleep 5
  fi
done

echo "All lighthouse runs completed!"