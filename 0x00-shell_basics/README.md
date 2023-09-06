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

The history command in a shell allows you to view a list of previously executed commands. To display the command history, simply type `history` and press Enter.
You'll see a numbered list of recently executed commands.

You can repeat a command from history by using the `!` followed by the command's number. For example, `!123` would run the command at position 123 in the history.

To search for a specific command in history, use `Ctrl+R` in many shells, which opens a reverse search prompt. Start typing part of the command, and it will find the most recent match.

# Navigation

1. `cd` - Change Directory:
This command is used to change the current working directory. For example, to move to a directory named "my_directory," you would type: `cd my_directory`.

2. `pwd` - Print Working Directory:
This command displays the current working directory's absolute path.
Running `pwd` will show you where you are in the filesystem.

3. `ls` - List Directory Contents:
This is used to list the files and directories in the current directory.
You can use options like `-l` for a detailed list or `-a` to show hidden files.

4. `.` and `..`:
`.` represents the current directory.
`..` represents the parent directory of the current directory.

5. Working Directory:
The working directory is the directory in which you are currently operating. To print the working directory, use the `pwd` command.

6. Root Directory:
The root directory is the top-level directory in the filesystem hierarchy.
It is represented by a single forward slash `/`.

7. Home Directory:
The home directory is the default directory for a user when they log in.
To go to your home directory, you can use the `cd` command without any arguments: `cd`.

8. Difference between Root and Home Directory of the User "root":
The root directory (`/`) is the system's top-level directory, while the home directory of the user "root" (`/root`) is the default directory for the superuser "root."

9. Hidden Files:
Hidden files and directories are those whose names start with a dot (e.g., `.config`). They are typically used for configuration files and are not displayed by default when you run `ls`.To list hidden files, use the `ls -a` command.

11. `cd -`:
The `cd -` command is used to switch to the previous working directory. It's a convenient way to toggle between two directories.

# Looking Around

1. `ls` - You can use various options like `-l` for a detailed (long) list, `-a` to show hidden files, and `-h` for human-readable file sizes. Example: `ls -l` to list files in long format.

2. `less` - A command-line text viewer that allows you to view the contents of text files page by page. Example: `less filename.txt` to view a text file.

3. `file` - It is used to determine the type of a file by examining its contents and attributes. Example: `file filename` to identify the type of a file.

4. Options and Arguments:
Commands can accept options (often preceded by a hyphen, like `-l` in `ls -l`) and arguments (file or directory names). Options modify the behavior of a command, and arguments specify what the command should operate on.

5. `ln` - This command is used to create links (shortcuts) to files or directories. There are two types of links: symbolic links (`ln -s`) and hard links (`ln` without `-s`).
Example: `ln -s target link_name` to create a symbolic link.

6. Common/Important Directories:
`/` (root directory): The top-level directory in the filesystem.
`/home`: Contains user home directories.
`/bin`, `/usr/bin`: Hold essential system binaries.
`/etc`: Contains system configuration files.
`/var`: Stores variable data such as logs and temporary files.

# Symbolic Link:

A symbolic link (or symlink) is a reference to another file or directory. It's like a shortcut. It can point to files or directories on different filesystems and can be easily identified because it starts with `ln -s`.

# Hard Link:
A hard link is another reference to an existing file on the same filesystem. Hard links share the same inode (file data) as the original file and have the same content.
Deleting the original file does not remove data if there are hard links to it.

# Difference between Hard Link and Symbolic Link:

Hard links reference the same data on disk, while symbolic links are pointers to another file or directory.
Symbolic links can span different filesystems, but hard links cannot.
Deleting the original file of a hard link retains the data; for a symbolic link, it breaks the link.

# Wildcads

Wildcards are characters or symbols used to represent patterns of filenames or paths. They allow you to perform operations on multiple files that match a specified pattern. Here are some commonly used wildcards and how they work:

1. `*` (Asterisk):
Matches any number of characters (including none).
Example: `ls *.txt` matches all files ending with ".txt."

2. `?` (Question Mark):
Matches a single character.
Example: `ls file?.txt` matches "file1.txt," "fileA.txt," etc.

3. `[ ]` (Square Brackets):
Matches a single character within the specified range or set.
Example: `ls file[0-9].txt` matches "file1.txt," "file2.txt," ..., "file9.txt."

4. `[! ]` (Exclamation Mark Inside Square Brackets):
Matches a single character NOT in the specified range or set.
Example: `ls file[!A-Z].txt` matches any "file*.txt" except those with an uppercase letter.

5. `{ }` (Curly Braces):
Generates a list of comma-separated options.
Example: `mv file{1,2}.txt destination` moves "file1.txt" and "file2.txt" to the "destination" directory.

6. `**` (Double Asterisk) - Recursive Wildcard:
Matches directories and their contents recursively. Useful for searching or performing actions on files within subdirectories.
Example: `grep 'pattern' **/*.txt` searches for "pattern" in all .txt files in subdirectories.

Usage:
Wildcards are commonly used with commands like `ls`, `cp`, `mv`, `rm`, `find`, and others. To use wildcards, simply include them in your command along with the pattern you want to match.

# Types of Commands

1. **Internal Commands**:
These are built into the shell and do not exist as separate executable files. Examples include `cd`, `echo`, and `pwd`.

2. **External Commands**:
These are standalone executable programs located in directories listed in the `PATH` environment variable. Examples include `ls`, `cp`, and `grep`.

3. **Shell Built-in Commands**:
These are specific to the shell you're using (e.g., Bash) and are not separate programs. Examples include `cd`, `echo`, and `export`.

4. **System Commands**:
These perform system-level tasks and often require superuser privileges (root access). Examples include `shutdown`, `reboot`, and `useradd`.

5. **Utility Commands**:
These are general-purpose utilities that provide various functionalities, like text processing, compression, and networking. Examples include `sed`, `tar`, and `ping`.

6. **Package Management Commands**:
These are used to manage software packages on the system. Examples include `apt`, `yum`, and `dpkg`.

7. **File and Directory Commands**:
These are used for file and directory operations like `ls`, `cp`, `mv`, and `rm`.

8. **Text Processing Commands**:
These commands manipulate and process text data, including `grep`, `awk`, and `sed`.

9. **Help and Documentation Commands**:
10. These commands provide assistance and documentation for other commands. Examples include `man`, `info`, and `--help` options.

# alias

An **alias** is a user-defined shortcut or substitute for a longer command or series of commands. It allows you to create custom commands for convenience and efficiency. For example, you could create an alias like `alias ll='ls -l'`, so when you type `ll`, it automatically runs `ls -l`.

# Difference between Help and Man command: 
The choice between using the `help` command and the `man` command depends on the availability of documentation for a particular command:

**`man` (Manual) Command**:
Use `man` when you want detailed documentation for a specific command.
Example: `man ls` provides the manual page for the `ls` command, including detailed usage and options.

**`help` Command**:
Not all commands have a `help` command associated with them. Some built-in commands or shell-specific commands may support `help` to provide basic usage information.
Example: `help cd` might display information about how to use the `cd` built-in command in a shell like Bash. 

In summary, use `man` for comprehensive command documentation and `help` for built-in or shell-specific command assistance when available.

# Reading a man page (manual page) 

Here's how to read a man page and understand its sections:

1. **Open the Man Page**:
To open a man page for a specific command or topic, use the `man` command followed by the name of the command or topic. Example: `man ls` to open the manual page for the `ls` command.

2. **Sections**:
Man pages are divided into sections, each serving a specific purpose. Sections are typically numbered from 1 to 9, and they contain information about different topics.

3. **Navigating the Man Page**:
Use arrow keys, page up/down, or the spacebar to scroll through the man page. Press `q` to exit the man page and return to the command prompt.

4. **Sections in a Man Page**:
Man pages are organized into various sections, which are typically indicated by a number and a brief description. Common sections include:
   
Section 1: User Commands
These are commands that can be run by regular users. Example: `man 1 ls` displays the user command manual for `ls`.

Section 2: System Calls
This section contains info about system calls, which are functions provided by the kernel for programmatic access to the operating system's services. Example: `man 2 open` provides details about the `open` system call.

Section 3: Library Functions
Here, you can find information about library functions provided by the C standard library. Example: `man 3 printf` gives details about the `printf` function.

Section 4: Devices and Special Files
This section covers device files, drivers, and special files in the `/dev` directory. Example: `man 4 tty` explains the `tty` device.

Section 5: File Formats and Conventions
Describes file formats, configuration files, and conventions used on the system. Example: `man 5 passwd` explains the `/etc/passwd` file format.

Section 6: Games and Demos
Contains information about games and demos. Example: `man 6 tetris` provides information about a game.

Section 7: Miscellanea
Covers various topics such as macro packages, conventions, and standards.
Example: `man 7 regex` explains regular expressions.

Section 8: System Administration and Privileged Commands
Contains commands that require superuser privileges. Example: `man 8 mount` provides information on the `mount` command used for filesystem mounting.

Section 9: Kernel Routine
Covers kernel-specific routines and functions. Example: `man 9 irq` explains kernel interrupt handling routines.

# Keyboard Shortcut for Bash

Here are some common shortcuts for Bash:

1. **Navigation Shortcuts**:
`Ctrl + A`: Move to the beginning of the line.
`Ctrl + E`: Move to the end of the line.
`Ctrl + U`: Delete from the cursor position to the beginning of the line.
`Ctrl + K`: Delete from the cursor position to the end of the line.
`Ctrl + L`: Clear the terminal screen (similar to the `clear` command).

2. **Editing Shortcuts**:
`Ctrl + W`: Delete the word to the left of the cursor.
`Ctrl + Y`: Paste (yank) the most recently deleted text.
`Ctrl + _` (underscore): Undo the last change (works for many commands).
`Alt + .` (period): Paste the last argument of the previous command.

3. **History Shortcuts**:
`Ctrl + R`: Search through command history interactively.
`Up Arrow` and `Down Arrow`: Navigate through previously entered commands.
`!!`: Repeat the last command.
`!$`: Refer to the last argument of the previous command.

4. **Tab Completion**:
`Tab`: Auto-complete file and directory names, or cycle through available options when multiple matches exist.
`Tab + Tab`: Display a list of possible completions.

5. **Miscellaneous Shortcuts**:
`Ctrl + C`: Interrupt (stop) the currently running command.
`Ctrl + D`: Log out or exit the current shell (when the line is empty).
`Ctrl + Z`: Suspend the current foreground process (use `fg` to resume).

6. **Advanced Shortcuts**:
`Alt + B`: Move backward one word.
`Alt + F`: Move forward one word.
`Alt + U`: Convert the characters from the cursor position to the end of the word to uppercase.
`Alt + L`: Convert the characters from the cursor position to the end of the word to lowercase.

# What does LTS means?

LTS stands for "Long-Term Support." It is a term commonly used in the software and technology industry to describe a specific type of release or support cycle for software, hardware, or systems. 
