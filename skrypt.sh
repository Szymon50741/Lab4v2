#!/bin/bash
if [ "$1" = "--date" ]; then
    date
fi

if [ "$1" = "--logs" ]; then
    for i in {1..100}
    do
        echo "Nazwa pliku: log$i.txt" > log$i.txt
        echo "Nazwa skryptu: $0" >> log$i.txt
        echo "Data: $(date)" >> log$i.txt
    done
fi


read -p "end"