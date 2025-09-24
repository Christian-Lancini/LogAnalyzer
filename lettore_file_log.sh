#!/bin/bash

clear

RESET='\e[0m'
GREEN='\e[32m' # [+]
RED='\e[31m' #Error
YELLOW='\e[33m' #Warning
BLUE='\e[34m' #Debug
CYAN='\e[36m' #info

echo -n "Scegli una directory: "
read directory

cd "$directory" || { echo "Directory non trovata"; exit 1; }
#ls -l per debug

while true; do
    echo "==================="
    echo "Analizzatore di log"
    echo "==================="
    echo "1. Cerca ERROR"
    echo "2. Cerca INFO"
    echo "3. Cerca WARNING"
    echo "4. Cerca DEBUG"
    echo "5. Cerca Stringa"
    echo "6. Esci"
    echo ""
    echo -n "Scegli un'opzione [1-6]: "
    read scelta

    case $scelta in
        1)
            echo ""
            echo -e "${RED}ERROR${RESET}: "
            echo ""
            for file in *.log; do
                echo -e "[${GREEN}+${RESET}] File: $file"
                grep "ERROR" "$file"
                echo ""
            done
            ;;

        2)
            echo ""
            echo -e "${CYAN}INFO${RESET}:"
            echo ""
            for file in *.log; do
                echo -e "[${GREEN}+${RESET}] File: $file"
                grep "INFO" "$file"
                echo ""
            done
            ;;

        3)
            echo ""
            echo -e "${YELLOW}WARNING${RESET}:"
            echo ""
            for file in *.log; do
                echo -e "[${GREEN}+${RESET}] File: $file"
                grep "WARNING" "$file"
                echo ""
            done
            ;;

        4)
            echo ""
            echo -e "${BLUE}DEBUG${RESET}:"
            echo ""
            for file in *.log; do
                echo -e "[${GREEN}+${RESET}] File: $file"
                grep "DEBUG" "$file"
                echo ""
            done
            ;;

        5)
            echo ""
            echo -n "Inserisci la stringa da cercare: "
            read pattern
            echo ""
            echo "Cerco '$pattern' nei file .log..."
            echo ""
            for file in *.log; do
                echo -e "[${GREEN}+${RESET}] File: $file"
                grep "$pattern" "$file"
                echo ""
            done
            ;;

        6)
            echo ""
            echo "Uscita in corso..."
            echo ""
            clear
            break
            ;;
        *)
            echo ""
            echo "Scelta non valida!"
            echo ""
            ;;
    esac

    echo ""  # Riga vuota per leggibilità
    read -p "..."
    clear
done
