#!/bin/bash

# Annotates all files in the data folder
# For each gUnk_ label it adds a comment with the places where this label is referenced

function split_file {
    FILE_PATH="$1"
    while IFS= read -r LINE
    do
        UNK="$(echo $LINE | grep ^gUnk)"
        if [ "$?" -eq 0 ]
        then
            # A line containing a gUnk
            IFS=$'@' read -a PARTS <<<"$LINE" # split at @ https://stackoverflow.com/a/15988793
            ADDR=$(echo ${PARTS[1]} | xargs)  # trim whitespace https://stackoverflow.com/a/12973694

            # search for usages in asm/ and src/
            USAGES="$(grep $ADDR -R asm/ src/)"
            if [ "$?" -eq 0 ]
            then
                # this gUnk is referenced
                FILES="$(echo $USAGES | cut -d : -f 1)" # extract the file part
                UNIQUE_FILES="$(echo $FILES | sort | uniq)" # deduplicate file names
                COMMENT="$(echo $UNIQUE_FILES | tr '\n', ',' | sed 's/,$//'| sed 's/,/, /g' )" # join with comma, remove trailing comma, add spaces after commas
                echo "$(echo $LINE | tr -d '\n') @ $COMMENT"
            else
                # gUnk was never referenced
                echo $LINE
            fi
        else
            # Line without gUnk
            echo $LINE
        fi
    done < $FILE_PATH
}

FILE_PATHS="$(find data -name '*.s')"
export IFS=$'\n'
for FILE in $FILE_PATHS
do
    echo "Annotating $FILE..."
    split_file $FILE > $FILE.anno.s
    mv $FILE.anno.s $FILE
done

echo "done"