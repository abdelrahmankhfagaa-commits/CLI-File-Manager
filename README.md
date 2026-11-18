\# CLI File Management \& Automation Toolkit



A command-line file management application built with Bash scripting. This project provides an interactive menu to perform common file and directory operations directly from the terminal.



\## Overview



\*\*File Manager Pro\*\* is a beginner-friendly Bash project designed to practice Linux command-line operations, shell scripting, functions, loops, conditional statements, and user input validation.



\## Features



\- \*\*User Login:\*\* Basic username and password authentication with a limited number of attempts.

\- \*\*Create Files:\*\* Create new files with duplicate-name validation.

\- \*\*Create Folders:\*\* Create directories with existence checks.

\- \*\*List Files \& Folders:\*\* Display files and directories in the current working directory.

\- \*\*Search Files:\*\* Search for files by name, ignoring uppercase and lowercase differences.

\- \*\*Copy Files:\*\* Copy files to another destination with overwrite confirmation.

\- \*\*Move \& Rename Files:\*\* Move or rename existing files.

\- \*\*Delete Files:\*\* Delete files after user confirmation.

\- \*\*Folder Backup:\*\* Create backups of existing directories.

\- \*\*File Statistics:\*\* Display line count, word count, character count, and disk usage.



\## Technologies Used



\- Bash Scripting

\- Linux Command Line (CLI)

\- Shell Pipes and Redirection

\- Git \& GitHub



\## Project Structure



```text

CLI-File-Manager/

│

├── Backups/

│

├── functions/

│   └── functions\_implementation.sh

│

├── main.sh

├── .gitignore

└── README.md

```



\## Requirements



\- Bash shell

\- Git Bash on Windows, or a Linux/macOS terminal

\- Standard command-line utilities such as `find`, `cp`, `mv`, `wc`, `du`, and `cut`



\## Installation \& Usage



1\. Clone the repository:



```bash

git clone YOUR\_GITHUB\_REPOSITORY\_URL

```



2\. Navigate to the project directory:



```bash

cd CLI-File-Manager

```



3\. Run the application:



```bash

bash main.sh

```



Run the application from the project root directory so that relative paths, including the `Backups` directory, work as expected.



\## Login Credentials



For this training version:



\- Username: `admin`

\- Password: `1234`



\*\*Note:\*\* These are demonstration credentials hardcoded in the source code. This login system is for educational purposes and is not suitable for production security.



\## Learning Objectives



This project helped me practice:



\- Bash functions and modular code organization.

\- Variables and user input using `read`.

\- Conditional statements (`if`, `elif`, `else`).

\- Loops (`while`).

\- Menu-driven applications using `case`.

\- File and directory test operators.

\- Input validation and basic error handling.

\- Command-line utilities and file management.

\- Command piping (`|`) and output filtering using `cut`.

\- Input and output redirection (`<`, `>`, `>>`).

\- Command substitution using `$()`.

\- Managing a project using Git and GitHub.



\## Future Improvements



\- Improve backup management and support multiple timestamped backups.

\- Add more robust path validation and error handling.

\- Improve file statistics with exact file-size information.

\- Add automated tests.

\- Improve the user interface and application documentation.



\## Author



\*\*Abdelrahman Khfaga\*\*



Computer and Control Systems Engineering Student



