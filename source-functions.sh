#!/bin/bash

# =============================================================================
# Sources a list of functions passed into the script. Functions must have a
# matching directory with *.sh files.
# =============================================================================

functions="$@"
echo "Sourcing functions: $functions"

for func in $functions; do
  if [ ! -d $func ]; then
    echo "Function not found: $func" 1>&2
  else
    for script in $func/*.sh; do
      . "$script" || echo "Sourcing script failed: $script" 1>&2
    done
    echo "Sourced function: $func"
  fi
done
