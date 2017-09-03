#!/bin/bash
set -e

truncate --size=0 $2

read_file() {
    while read LINE; do
        if [ -e "$LINE" ]
        then
            $CMD $LINE $2
        else
            echo "$LINE" >> $2
        fi
    done < $1
}

read_file_md() {
    while read LINE; do
        if [ -e "$LINE" ]
        then
            if [[ $LINE ==  *.md ]]
            then
                ./bin/markdown.sh $LINE >> $2
            else
                $CMD $LINE $2
            fi
        else
            echo "$LINE" >> $2
        fi
    done < $1
}

CMD=read_file
if [ -e "./bin/markdown.sh" ]
then
    CMD=read_file_md
fi

$CMD $1 $2

sed -i ':a;N;$!ba;s/>\s*</></g' $2
