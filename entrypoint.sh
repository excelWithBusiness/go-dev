#!/bin/bash
set -e

echo "Running scripts..."
for f in $SCRIPTS/*.sh; do
    echo "Running '$f'..."
    bash $f
done

echo "Running command..."
exec "$@"
