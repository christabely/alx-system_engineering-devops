# Shell, init files, variables and expansions

http://linuxcommand.org/lc3_lts0080.php
https://www.gnu.org/software/bash/manual/html_node/Shell-Arithmetic.html
https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_02.html
https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_01.html
https://www.linfo.org/alias.html

1. `printenv`: This command is used to print the environment variables of the current shell session. Environment variables store information that the shell and various programs use, such as system paths or user-specific settings.

2. `set`: The `set` command is used to display all shell variables, including environment variables, user-defined variables, and shell options. It can also be used to set or change the values of variables.

3. `unset`: This command is used to remove a variable or an environment variable. It effectively deletes a variable, making it undefined.

4. `export`: This command is used to create or modify environment variables in the current shell session. It makes a shell variable an environment variable, which can be accessed by child processes of the current shell.

5. `alias`: This command is used to create shorthand or alternative names for other commands. It's handy for creating custom command shortcuts.

6. `unalias`: This command is used to remove previously defined aliases, reverting the command to its original behavior.

7. `.` (dot): In a shell context, the dot is used to execute a script or command file in the current shell environment. It's often used to load configuration files or set up environment variables.

8. `source`: This is used to execute commands from a script file within the current shell session. It's commonly used for running shell script files to set environment variables or configure the shell.

9. `printf`: This command is used for formatted printing. It allows you to specify a format string and one or more values to be inserted into that string, which can then be printed to the standard output.

# Resources Explanations

1. **Expansions**: This refer to the process of replacing certain expressions or patterns with their corresponding values. Common expansions include variable expansion (replacing a variable with its value), command substitution (replacing a command with its output), and pathname expansion (replacing wildcards with matching file names).

2. **Shell Arithmetic**: Shell arithmetic allows you to perform mathematical operations within a shell script or at the command line. Shells like Bash support basic arithmetic operations like addition, subtraction, multiplication, and division using arithmetic expansion `$(( ))` or the `expr` command.

3. **Variables**: Variables in shell scripting are used to store and manipulate data. They can hold values like numbers, text, or filenames. Variables are referenced by their names, and you can assign values to them and use those values throughout your script.

4. **Shell Initialization Files**: Shell initialization files are scripts or configuration files that are executed when a shell session starts. They are used to set up the environment for the user by defining variables, setting aliases, and configuring various aspects of the shell's behavior. Common initialization files include `.bashrc` and `.bash_profile` for the Bash shell.

5. **The alias Command**: This is used to create shorthand or alternative names for other commands in a shell environment. It allows users to define custom command shortcuts for convenience. For example, you can create an alias like `alias ll='ls -l'` to make `ll` a shorthand for the `ls -l` command.

6. **Technical Writing**: Technical writing is a form of communication that focuses on conveying technical or complex information in a clear and understandable manner. It is commonly used in technical documentation, user manuals, software guides, and other contexts where precise and concise communication is essential. Technical writers use various writing styles and tools to make complex concepts accessible to a specific audience.

These concepts are important in the world of shell scripting, as well as in technical documentation and communication, where clarity and precision are paramount.

# What happens when you type $ ls -l *.txt

When you type the command `$ ls -l *.txt` in a Unix-like shell, several things happen:

1. `$`: The dollar sign is used to indicate the start of a command in many Unix shells, such as Bash. It's not typically part of the actual command; it signifies that what follows is a command to be executed.

2. `ls`: This is the command itself. `ls` stands for "list" and is used to list files and directories in the current directory by default.

3. `-l`: This is an option or flag passed to the `ls` command. The `-l` flag instructs `ls` to provide a detailed, long-format listing of files and directories, including information like permissions, owner, group, file size, and modification date.

4. `*.txt`: This is a wildcard pattern. The `*` (asterisk) is a wildcard character that matches any characters, and `.txt` specifies a pattern that matches all files with the ".txt" file extension. This pattern effectively tells the shell to list all files in the current directory with a ".txt" extension.

So, when you enter `$ ls -l *.txt`:
- The shell interprets this as a command to list detailed information about all files with the ".txt" extension in the current directory.
- It performs the necessary file matching using the wildcard pattern.
- The `ls` command then executes and displays the long-format listing of the matched files.

# Shell Initialization Files

The `/etc/profile` file, the `/etc/profile.d` directory, and the `~/.bashrc` file are all related to configuring the behavior and environment of the Bash shell on Unix-like operating systems:

1. `/etc/profile`:
   - `/etc/profile` is a system-wide configuration file for the Bash shell. It is executed when a user logs in to the system, providing global settings for all users.
   - System administrators can use this file to set environment variables, system-wide aliases, and other settings that should apply to all users.

2. `/etc/profile.d`:
   - `/etc/profile.d` is a directory that contains additional shell scripts that are executed when a user logs in. These scripts can be used to set environment variables or configure the shell for specific applications or services.
   - By organizing configurations into separate script files within this directory, it becomes easier to manage and update system-wide settings without modifying the main `/etc/profile` file.

3. `~/.bashrc`:
   - `~/.bashrc` is a user-specific configuration file for the Bash shell.
   - The tilde `~` represents the user's home directory, so `~/.bashrc` is located in the home directory of each user. This file is executed each time a user opens a new interactive Bash shell.
   - Users can customize their shell environment by adding aliases, setting environment variables, defining functions, and configuring various aspects of their shell session in this file.

In summary:

- `/etc/profile` and `/etc/profile.d` are used for system-wide Bash shell configuration.
- `/etc/profile` is executed when any user logs in.
- `/etc/profile.d` contains additional configuration scripts for customization.
- `~/.bashrc` is a user-specific configuration file for customizing the Bash shell environment and is executed for each user upon opening a new interactive shell session.

# Variables

1. **Local vs. Global Variables**:
   - **Local Variable**: A local variable is a variable that is defined and exists only within a specific scope, such as within a function or a block of code. It cannot be accessed from outside that scope.
   - **Global Variable**: A global variable is a variable that is defined at the top level of a program or script and is accessible from any part of the program. It has a global scope and can be accessed both inside and outside functions or code blocks.

2. **Reserved Variable**:
   - A reserved variable is a variable that has a predefined meaning or purpose in a programming language or environment. These variables are typically used by the system or have specific roles. Modifying them can have unintended consequences. For example, in shell scripting, variables like `HOME`, `PATH`, and `PS1` are reserved.

3. **Creating, Updating, and Deleting Shell Variables**:
   - To create or update a shell variable, you typically use the `variable_name=value` syntax. For example, to create a variable called `my_var` with the value `123`, you would use `my_var=123`.
   - To delete a shell variable, you can use the `unset` command. For example, `unset my_var` will remove the `my_var` variable from the shell environment.

4. **Roles of Reserved Variables**:
   - `HOME`: It stores the path to the user's home directory.
   - `PATH`: It defines the directories where the shell looks for executable files. It's crucial for running commands without specifying their full paths.
   - `PS1`: It specifies the prompt string that appears in the shell, allowing customization of the shell prompt's appearance.

5. **Special Parameters**:
   - Special parameters are variables in shell scripting that have predefined meanings or roles. They are often used to access information about the script's execution or to retrieve command-line arguments. Examples include `$0` (the script's name), `$#` (the number of command-line arguments), and `$@` (an array of all command-line arguments).

6. **Special Parameter `$?`**:
   - `$?` holds the exit status of the last executed command or script. A value of `0` typically indicates success, while non-zero values indicate an error or failure. It's often used in conditional statements to check the success of previous commands.

For example, you might see code like:
```bash
if [ $? -eq 0 ]; then
    echo "Previous command succeeded."
else
    echo "Previous command failed."
fi
```

This checks the exit status of the last command and prints a message based on whether it succeeded or not.

# Expansions

Expansions in shell scripting refer to the process of replacing certain patterns or expressions with their corresponding values or results. There are several types of expansions commonly used in shell scripting, including variable expansion, command substitution, and arithmetic expansion.

1. **Variable Expansion**:
   - Variable expansion involves replacing a variable's name with its value. It's done by prefixing the variable name with a dollar sign (`$`). For example:
     - `$variable` would be replaced with the value of the `variable` variable.

2. **Command Substitution**:
   - Command substitution allows you to replace a command with its output. There are two common ways to perform command substitution: Using `$(command)`: You enclose the command in `$()`. For example:
       ```
       current_date=$(date)
       ```
     - Using backticks (`` `command` ``): You enclose the command in backticks. For example:
       ```
       current_date=`date`
       ```

3. **Arithmetic Expansion**:
   - Arithmetic expansion lets you perform mathematical calculations within a shell script. It's done by enclosing the expression in `$(( ))`. For example:
     ```
     result=$((2 + 3))
     ```

Now, let's talk about single and double quotes:

- **Single Quotes (' ')**:
  - When you enclose a string in single quotes, the characters within the quotes are treated as literal characters. No variable or command substitution occurs inside single quotes. For example:
    ```
    echo 'This is a $variable'
    ```
    Output: `This is a $variable`

- **Double Quotes (" ")**:
  - When you enclose a string in double quotes, variable and command substitution occurs. Variables within double quotes are expanded to their values, and command substitution is executed. For example:
    ```
    echo "This is a $variable"
    ```
    If `variable` contains the value "value," the output will be: `This is a value`

To demonstrate command substitution with both `$()` and backticks:

Using `$()`:
```bash
current_date=$(date)
echo "Today's date is $current_date"
```

Using backticks:
```bash
current_date=`date`
echo "Today's date is $current_date"
```

Both of these examples will capture the output of the `date` command and store it in the `current_date` variable, which is then used in the echo statement to display the date. You can choose either `$()` or backticks for command substitution; `$()` is generally recommended for better readability and compatibility.

# Shell Arithmetic

You can perform arithmetic operations in a Unix-like shell using various methods. Here are some common ways to do arithmetic operations:

1. **Using `expr`**:
   - The `expr` command can be used for basic arithmetic operations. You need to enclose the expression in backticks or use `$()` for command substitution.
   - Example:
     ```bash
     result=$(expr 5 + 3)
     echo "Result is $result"
     ```

2. **Using `let`**:
   - The `let` command is used to evaluate arithmetic expressions. It doesn't require backticks or command substitution.
   - Example:
     ```bash
     let "result = 5 + 3"
     echo "Result is $result"
     ```

3. **Using Double Parentheses `(( ))`**:
   - You can use double parentheses to evaluate arithmetic expressions directly.
   - Example:
     ```bash
     result=$((5 + 3))
     echo "Result is $result"
     ```

4. **Using Arithmetic Expansion `$(( ))`**:
   - Arithmetic expansion is a straightforward way to perform arithmetic operations.
   - Example:
     ```bash
     result=$((5 + 3))
     echo "Result is $result"
     ```

5. **Using `bc` (for Floating-Point Arithmetic)**:
   - If you need to perform floating-point arithmetic, you can use the `bc` command.
   - Example:
     ```bash
     result=$(echo "5.2 + 3.7" | bc)
     echo "Result is $result"
     ```

# The Alias Command

In Unix-like systems, you can create, list, and temporarily disable aliases using shell commands. Here's how to do each of these actions:

1. **Create an Alias**:

   To create an alias, you use the `alias` command followed by the alias name, an equal sign (`=`), and the command you want to associate with the alias. The syntax is as follows:

   ```bash
   alias alias_name='command_to_alias'
   ```

   For example, to create an alias named `ll` for the `ls -l` command, you can do the following:

   ```bash
   alias ll='ls -l'
   ```

2. **List Aliases**:

   To list all defined aliases in your current shell session, you can use the `alias` command without any arguments:

   ```bash
   alias
   ```

   This command will display a list of aliases along with their associated commands.

3. **Temporarily Disable an Alias**:

   To temporarily disable an alias for the duration of your current shell session, you can use the `unalias` command followed by the alias name. The syntax is:

   ```bash
   unalias alias_name
   ```

   For example, if you want to disable the `ll` alias:

   ```bash
   unalias ll
   ```

   This will remove the `ll` alias until you start a new shell session.

Remember that aliases are typically defined in shell configuration files like `~/.bashrc` or `~/.bash_profile`, so they persist across sessions. If you want to permanently remove an alias, you'll need to edit the appropriate configuration file and remove or comment out the alias definition.

Keep in mind that disabling an alias with `unalias` is temporary, and it will only affect the current shell session. If you want to permanently remove an alias, you should edit your shell's configuration files as mentioned earlier.

# How to execute commands from a file in the current shell

To execute commands from a file in the current shell, you can use the `source` command (or its alias `.`). This command reads and executes the contents of a file within the current shell session, allowing you to set environment variables and run commands as if you had typed them directly. Here's how to use it:

Using the `source` command:

```bash
source filename
```

Using the `.` alias:

```bash
. filename
```

Replace `filename` with the name of the file containing the commands you want to execute. Make sure to provide the correct path to the file if it's not in the current directory.

When you execute commands in this way, they affect the current shell session, which means any changes to environment variables or other shell settings will persist in the current session. This can be useful for loading configuration files, setting environment variables, or running scripts that need to modify the current shell's environment.

# More Info

The files you mentioned, `/etc/profile`, `/etc/inputrc`, and `~/.bashrc`, are configuration files in Unix-like operating systems that play different roles in customizing the behavior of the Bash shell and other command-line interfaces. Here's what each of these files does:

1. **`/etc/profile`**:
   - `/etc/profile` is a system-wide shell initialization file.
   - It is executed when a user logs into the system, providing global settings for all users.
   - System administrators use this file to set environment variables, system-wide aliases, and other settings that should apply to all users.

2. **`/etc/inputrc`**:
   - `/etc/inputrc` is a system-wide configuration file for Readline, a library used by various Unix programs to handle command-line input.
   - It defines keybindings, input behavior, and other settings for command-line interfaces.
   - System administrators and users can customize this file to modify the behavior of command-line editing features like history navigation, tab completion, and more.

3. **`~/.bashrc`**:
   - `~/.bashrc` is a user-specific Bash shell configuration file.
   - The tilde `~` represents the user's home directory, so `~/.bashrc` is located in the home directory of each user.
   - This file is executed each time a user opens a new interactive Bash shell.
   - Users can customize their shell environment by adding aliases, setting environment variables, defining functions, and configuring various aspects of their shell session in this file.

In summary:

- `/etc/profile` is a system-wide shell initialization file for global settings.
- `/etc/inputrc` is a system-wide configuration file for customizing command-line input behavior.
- `~/.bashrc` is a user-specific Bash configuration file for customizing the user's shell environment.

These files are essential for configuring the behavior and environment of the Bash shell and command-line interface to suit system-wide and user-specific requirements.

# awk, tar, bzip2, date, scp, ulimit, umask, and shell scripting.

1. **Awk**:
   - Awk is a versatile text processing tool used in Unix-like operating systems. It can process text files, extract data, and perform various operations, making it valuable for tasks like data manipulation, reporting, and data extraction. Awk uses patterns and actions to process data.

2. **Tar**:
   - Tar (short for "tape archive") is a command-line utility used to package multiple files and directories into a single archive file, often referred to as a "tarball." It's commonly used for creating backups, distributing files, and compressing data.

3. **Bzip2**:
   - Bzip2 is a file compression utility that uses the Burrows-Wheeler transform and Run-Length Encoding compression techniques. It's used to reduce the size of files and directories, often resulting in smaller file sizes compared to traditional gzip compression.

4. **Date**:
   - The `date` command is used to display or manipulate the system's date and time. It can display the current date and time, format dates, and perform date calculations. It's often used in shell scripting and for tasks like generating timestamps.

5. **SCP (Secure Copy Protocol)**:
   - SCP is a secure file transfer protocol and command-line tool that allows users to securely copy files and directories between local and remote systems over SSH (Secure Shell). It provides a secure alternative to traditional `cp` and `rsync` for file transfers.

6. **Ulimit**:
   - `ulimit` is a shell command used to set or display user-level resource limits for a user's shell session. These limits control various system resources, such as the maximum number of open files, CPU time, and memory usage.

7. **Umask**:
   - Umask stands for "user file creation mask." It's a system setting that determines the default permissions applied to newly created files and directories. Umask values subtract permissions from the default file permissions. It's often used to enhance security by limiting access to certain files.

8. **Shell Scripting**:
   - Shell scripting refers to the process of writing scripts or programs using a Unix-like shell (e.g., Bash) as the scripting language. Shell scripts are used for automating tasks, processing data, and interacting with the operating system. They can be simple one-liners or complex programs.

# /etc/profile.d
In Unix-like operating systems, the `/etc/profile.d` directory is a special directory used for system-wide shell initialization and configuration. It allows system administrators and package maintainers to add custom configuration files that are executed when users log in. Here's how it works:

1. **Purpose**:
   - The `/etc/profile.d` directory is typically used to store shell script files (usually with a `.sh` extension) that set environment variables or configure the system's behavior for all users.
   - These scripts are executed when a user logs into the system, providing a way to customize the shell environment on a system-wide basis.

2. **Modularity**:
   - One of the key advantages of using `/etc/profile.d` is modularity. Instead of modifying a single, large `/etc/profile` file, which can become unwieldy and hard to manage, administrators can add individual script files to `/etc/profile.d`. Each script can focus on a specific configuration aspect, making it easier to organize and maintain.

3. **Loading Order**:
   - Scripts in `/etc/profile.d` are loaded in alphabetical order, so naming conventions often use numeric prefixes to control the execution order. For example, `01-custom-settings.sh` will load before `02-application-config.sh`.
   - This loading order ensures that dependencies are satisfied, and configuration is applied in the desired sequence.

4. **Examples**:
   - Common use cases for `/etc/profile.d` include:
     - Setting system-wide environment variables like `PATH` or `JAVA_HOME`.
     - Configuring system-wide aliases or shell options.
     - Adding entries to the system's `PS1` prompt variable.
     - Defining default behaviors for installed software packages.

Here's a simplified example of what a script in `/etc/profile.d` might look like:

```bash
# /etc/profile.d/99-custom-env.sh
export CUSTOM_VAR="Hello, World!"
```

In this example, a script called `99-custom-env.sh` sets the `CUSTOM_VAR` environment variable. When users log in, this variable will be available in their shell sessions.

In summary, the `/etc/profile.d` directory is a convenient and modular way to customize the shell environment and system behavior for all users on a Unix-like system, allowing administrators to manage system-wide configurations more efficiently.
