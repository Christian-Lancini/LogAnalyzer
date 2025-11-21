# Log Analyzer

This Bash script is designed to analyze `.log` files present in a directory specified by the user. It provides a command-line interface that allows you to quickly search for various types of messages in log files, including ERROR, INFO, WARNING, and DEBUG, or search for a custom string.

## Prerequisites

* Linux or macOS operating system with Bash support.
* Log files must have the `.log` extension.

## How to Use

1. **Start the Script:**

   * Run the script with the following command:

     ```bash
     ./log_analyzer.sh
     ```

2. **Select a Directory:**

   * The script will prompt you to enter the directory containing the `.log` files to analyze.

3. **Choose an Option:**

   * After selecting the directory, a menu with the following options will be displayed:

     * **1**: Search for all lines containing the word `ERROR`.
     * **2**: Search for all lines containing the word `INFO`.
     * **3**: Search for all lines containing the word `WARNING`.
     * **4**: Search for all lines containing the word `DEBUG`.
     * **5**: Search for a custom string within the log files.
     * **6**: Exit the script.

4. **Search Interface:**

   * After selecting an option, the script will display the search results for each `.log` file in the directory.
   * You can also enter a custom search string (option 5) to search for a specific pattern within the files.

5. **Exit:**

   * You can exit the script at any time by selecting option **6**.

## Features and Colors

The script uses colors to improve readability:

* **Green**: [OK] - Indicates the start of a search.
* **Red**: ERROR - Displays error messages.
* **Cyan**: INFO - Displays informational messages.
* **Yellow**: WARNING - Displays warning messages.
* **Blue**: DEBUG - Displays debug messages.

---
