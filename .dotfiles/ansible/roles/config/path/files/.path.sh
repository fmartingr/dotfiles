#!/bin/bash

for file in "$HOME"/.path.d/*.sh; do
    # shellcheck source=/dev/null
    . "$file";
done;
