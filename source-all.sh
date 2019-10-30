#!/bin/bash

# =============================================================================
# Sources all functions
# =============================================================================

echo "Sourcing all functions"

for func in **/*.sh; do
  . "$func" || err=true
  if [ "$err" == "true" ]; then
    echo "Sourcing failed: $script" 1>&2
    continue
  fi
  echo "Sourced function: $func"
done
