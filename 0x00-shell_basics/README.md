# Shell Basics

http://linuxcommand.org/lc3_lts0010.php
http://linuxcommand.org/lc3_lts0020.php
http://linuxcommand.org/lc3_lts0030.php
http://linuxcommand.org/lc3_lts0040.php
http://linuxcommand.org/lc3_lts0050.php
http://linuxcommand.org/lc3_lts0060.php
http://linuxcommand.org/lc3_man_pages/man1.html
https://www.howtogeek.com/181/keyboard-shortcuts-for-bash-command-shell-for-ubuntu-debian-suse-redhat-linux-etc/
https://wiki.ubuntu.com/LTS
https://en.wikipedia.org/wiki/Shebang_(Unix)

# Commands

1. `cd` - Change Directory: Used to navigate between directories in the file system.

2. `ls` - List: Displays the files and directories in the current directory.

3. `ls -l` - Displays files in a long format

4. `pwd` - Print Working Directory: Shows the current directory's full path.

5. `less` - View File Content: Allows you to view the contents of a file page by page.

6. `file` - File Type: Determines and displays the file type of a specified file.

7. `ln` - Create Links: Creates hard or symbolic links between files.

8. `cp` - Copy: Copies files or directories from one location to another.

9. `mv` - Move: Renames or moves files and directories to another location.

10. `rm` - Remove: Deletes files or directories.

11. `mkdir` - Make Directory: Creates a new directory or directories.

12. `type` - Display Command Type: Shows if a command is a shell built-in or an external program.

13. `which` - Locate Command: Displays the path to the executable of a specified command.

14. `help` - Get Help: Provides help and usage information for shell commands.

15. `man` - Manual Pages: Displays detailed documentation (manual pages) for commands and utilities.

# RTMF

RTFM stands for "Read The F***ing Manual. It's an impolite acronym used to tell someone to read the documentation or manual before asking for help or information.


# Shebang

A shebang (also known as a hashbang or pound-bang) is a special character sequence at the beginning of a script file in Unix-like operating systems.
It typically looks like this: `#!/bin/bash` or `#!/usr/bin/python3`.

# The Shell

The shell is a command-line interface (CLI) program that provides a way for users to interact with the operating system and run commands.
It interprets the commands you type and communicates with the operating system to execute those commands. Common Unix-like shells include Bash (Bourne Again Shell), Zsh, and Fish, among others.

# Terminal vs. Shell

A terminal is a text-based interface for interacting with a computer's operating system. It's a program that provides a window or console where you can type commands and view their output.
The shell is the actual command interpreter that runs inside the terminal.
In summary, the terminal is the user interface, while the shell is the program that processes and executes commands within that interface.

# Shell Prompt:

The shell prompt is the text or symbol displayed in the terminal to indicate that the shell is ready to accept your commands.;It typically includes information like the username, hostname, current directory, and sometimes special characters or symbols.
For example, a common Bash prompt might look like: `user@hostname:~/directory$`.

# Using History (Basics):

The history command in a shell allows you to view a list of previously executed commands.

Here's how to use it:
To display the command history, simply type `history` and press Enter.
You'll see a numbered list of recently executed commands.

You can repeat a command from history by using the `!` followed by the command's number. For example, `!123` would run the command at position 123 in the history.

To search for a specific command in history, use `Ctrl+R` in many shells, which opens a reverse search prompt. Start typing part of the command, and it will find the most recent match.
