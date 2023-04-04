#!/bin/bash
if [ "$1" = "--date" ] || [ "$1" = "-d" ]; then
    date
fi

if [ "$1" = "--logs" ] || [ "$1" = "-l" ]; then
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

if [ "$1" = "--help" ] || [ "$1" = "-h" ]; then
    echo "Wyświetlanie daty -> skrypt.sh --date lub -d"
	echo "Tworzenie 100 plikow logs -> skrypt.sh --logs lub -l"
	echo "Tworzenie n-plikow logs -> skrypt.sh --logs lub -l n, gdzie n - liczba plikow do stworzenia"
fi

read -p "end"