#!/bin/bash

if [ -f ".netrc" ]; then
    cp .netrc ~/
fi

exec "$@"
