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

`ls` - You can use various options like `-l` for a detailed (long) list, `-a` to show hidden files, and `-h` for human-readable file sizes. Example: `ls -l` to list files in long format.

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

