# Shell I/O Rediections

http://linuxcommand.org/lc3_lts0070.php

Shell input and output redirection are techniques used to control the flow of data between processes and files. By using some special notations we can redirect the output of many commands to files, devices, and even to the input of other commands.
Here's a brief overview:

`1.Input Redirection (`<`)` : This allows you to take input from a file instead of the standard keyboard input. For example, to execute a command that reads input from a file called "input.txt," you can use:

   ```
   command < file_name.txt
   ```

`2.Output Redirection (`>`)` : This allows you to redirect the output of a command to a file instead of displaying it on the terminal. For example, to save the output of a command to a file called "output.txt," you can use:

   ```
   command > file_name.txt
   ```

`3.Appending Output (`>>`)` : If you want to append the output of a command to an existing file without overwriting its contents, you can use the double greater-than sign (`>>`). For example:

   ```
   command >> file_name.txt
   ```

`4.Pipe (`|`)` : The pipe symbol allows you to take the output of one command and use it as the input to another. This is useful for chaining multiple commands together. For example:

   ```
   command1 | command2
   ```

`5.Standard Error Redirection (`2>`)` : You can redirect error messages (standard error) to a file using the `2>` operator. For example, to capture error messages in a file called "errors.txt":

   ```
   command 2> file_name.txt
   ```

`6.Combining Output and Error (`2>&1`)` : You can combine standard output and standard error into a single file using `2>&1`. For example:

   ```
   command > file_name.txt 2>&1
   ```

These redirection techniques are powerful for managing input and output in the command line and are widely used for scripting, automation, and logging purposes in Unix-like systems.
