#!/bin/bash
for dir in *; do
    # continue if it is not a directory or if it does not contain any csv
    if [ ! -d "$dir" ] || [ -z "$(ls "$dir"/*.csv 2>/dev/null)" ]; then
        continue;
    fi
    cat "$dir"/*.csv > "$dir".csv
    echo $dir
done
cat *csv > all.csv
find . ! -name test.sh ! -name all.csv -maxdepth 1 -type f -delete
