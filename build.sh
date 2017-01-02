#!/bin/sh
set -e

truncate --size=0 $2

read_file() {
    while read LINE; do
        if [ -e "$LINE" ]
        then
            read_file $LINE $2
        else
            echo $LINE >> $2
        fi
    done < $1
}

read_file $1 $2

sed -i ':a;N;$!ba;s/>\s*</></g' $2
