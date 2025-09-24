# Analizzatore di Log

Questo script Bash è progettato per analizzare file di log (.log) presenti in una directory specificata dall'utente. Fornisce un'interfaccia a linea di comando che consente di cercare rapidamente diversi tipi di messaggi nei file di log, tra cui ERROR, INFO, WARNING e DEBUG, oppure di cercare una stringa personalizzata.

## Prerequisiti

- Sistema operativo Linux o macOS con supporto per Bash.
- I file di log devono avere estensione `.log`.

## Come utilizzare

1. **Avvio dello script:**
   - Esegui lo script con il comando:
     ```bash
     ./analizzatore_log.sh
     ```

2. **Scegli una directory:**
   - Lo script ti chiederà di inserire una directory contenente i file `.log` da analizzare.

3. **Seleziona un'opzione:**
   - Dopo aver scelto la directory, verrà visualizzato un menu con le seguenti opzioni:
     - **1**: Cerca tutte le righe con la parola `ERROR`.
     - **2**: Cerca tutte le righe con la parola `INFO`.
     - **3**: Cerca tutte le righe con la parola `WARNING`.
     - **4**: Cerca tutte le righe con la parola `DEBUG`.
     - **5**: Cerca una stringa personalizzata nei file di log.
     - **6**: Esci dallo script.

4. **Interfaccia di ricerca:**
   - Dopo aver scelto un'opzione, lo script mostrerà i risultati di ricerca per ciascun file `.log` nella directory.
   - Puoi anche inserire una stringa di ricerca personalizzata (opzione 5), per cercare un pattern specifico all'interno dei file.

5. **Uscita:**
   - Puoi uscire dallo script in qualsiasi momento selezionando l'opzione **6**.

## Funzionalità e Colori

Lo script usa colori per migliorare la leggibilità:

- **Verde**: [OK] - Indica l'inizio di una ricerca.
- **Rosso**: ERROR - Mostra i messaggi di errore.
- **Ciano**: INFO - Mostra i messaggi di info.
- **Giallo**: WARNING - Mostra i messaggi di avvertimento.
- **Blu**: DEBUG - Mostra i messaggi di debug.

