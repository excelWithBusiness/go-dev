#!/bin/bash

for f in scripts/*.sh; do
    bash $f
done

exec "$@"
