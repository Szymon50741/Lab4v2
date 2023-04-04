#!/bin/bash
if [ "$1" = "--date" ]; then
    date
fi

if [ "$1" = "--logs" ]; then
    if [ -n "$2" ]; then
        count="$2"
    else
        count=100
    fi
    for i in $(seq 1 $count)
    do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi

read -p "end"