# Shell I/O Rediections

http://linuxcommand.org/lc3_lts0070.php

Shell input and output redirection are techniques used to control the flow of data between processes and files by redirecting the output of many commands to files, devices, and even to the input of other commands.
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
A command can have both its input and output redirected.

   ```
sort < file_name.txt > sorted_file_name.txt
   ```

`4.Pipe (`|`)` : The pipe symbol allows you to take the output of one command and use it as the input to another. This is useful for chaining multiple commands together. For example:

   ```
   command1 | command2
   ```
In the example below, the output of the ls command is fed into less. By using this "| less" trick, we can make any command have scrolling output.
   
   ```
   ls -l | less
   ```

Pipeline Commands and what they do.

This displays the 10 newest files in the current directory.
   ```
   ls -lt | head
   ```

This displays a list of directories and how much space they consume, sorted from the largest to the smallest.
   ```
   du | sort -nr
   ```

This  displays the total number of files in the current working directory and all of its subdirectories.
   ```
   find . -type f -print | wc -l
   ```

`5.Standard Error Redirection (`2>`)` : You can redirect error messages (standard error) to a file using the `2>` operator. For example, to capture error messages in a file called "errors.txt":

   ```
   command 2> file_name.txt
   ```

`6.Combining Output and Error (`2>&1`)` : You can combine standard output and standard error into a single file using `2>&1`. For example:

   ```
   command > file_name.txt 2>&1
   ```

`7. Filters` : Filters are frequently used in pipelines. They take standard input and perform an operation upon it and send the results to standard output. In this way, they can be combined to process information in powerful ways. Here are some of the common programs that can act as filters:

sort : SORT command is used to sort files, arranging the records in a particular order. It sorts standard input then outputs the sorted result on standard output. Syntax:
   ```
   sort filename.txt
   ```
   ```
   sort -r inputfile.txt
   ```
   ```
   sort -n filename.txt
   ```
   ```
   sort -nr filename.txt
   ```
   ```
   sort -k filename.txt
   ```
   ```
   sort -c filename.txt
   ```
   ```
   sort -u filename.txt
   ```
   ```
   sort -M filename.txt
   ```
   ```
   sort inputfile.txt > filename.txt
   ```
   ```
   sort -o filename.txt inputfile.txt
   ```

uniq : It makes sure every line is unique by comparing adjacent lines and then removing duplicated lines of data. The duplicated lines must be adjacent. (Before issuing the uniq command, use the sort command to make all duplicate lines adjacent.) 

In summary, the "sort -u" command and the "uniq" command are both used to remove duplicate lines from a text file, but they work differently:
The "sort -u" command combines the functionality of sorting and removing duplicates. It first sorts the lines in the input file and then removes adjacent duplicate lines, keeping only unique lines in the output.
You typically use it as follows: `sort -u file_name`
It requires the input to be sorted, or else it won't remove duplicates correctly.

The "uniq" command is specifically designed to remove duplicate lines from a sorted file. It operates on sorted input and removes only consecutive duplicate lines, meaning that it will keep one instance of each unique line. It is used as follows: `sort file_name | uniq`
Alternatively, you can use `uniq -u` to show only the unique lines, but this requires sorted input as well.

(In simpler terms, "sort -u" combines sorting and duplicate removal in a single command and requires sorted input, while "uniq" focuses solely on removing consecutive duplicates and also requires sorted input. The choice between them depends on whether you need to sort the input as well and whether you want to remove consecutive or all duplicate lines.)
Syntax:


   ```
   uniq -f 2 input_file
   ```
   ```
   uniq -s 3 input_file
   ```
   ```
   uniq -c input_file
   ```
   ```
   uniq -u input_file
   ```
   ```
   uniq input_file
   ```

grep : Examines each line of data it receives from standard input and outputs every line that contains a specified pattern of characters. In other words, it allows you to search for patterns or specific text within files. Syntax:

   ```
   grep "apple" fruits.txt
   ```
   ```
   grep "pattern*" file
   ```
   ```
   grep pattern file
   ```

fmt : Reads text from standard input, then outputs formatted text on standard output. Syntax:
   
   ```
   fmt -w 80 input.txt
   ```
   ```
   fmt -s -w 60 input.txt
   ```
   ```
   fmt -u -w 70 input.txt
   ```
   ```
   fmt -t -w 80 input.txt
   ```
   ```
   fmt -c -w 80 input.txt1
   ```  

pr : Takes text input from standard input and splits the data into pages with page breaks, headers and footers in preparation for printing.

   ```
   pr -d input.txt
   ```
   ```
   pr -t input.txt
   ```
   ```
   pr -l 50 input.txt
   ```
   ```
   pr -w 80 input.txt
   ```
   ```
   pr -o 5 input.txt
   ```

head : Outputs the first few lines of its input. Useful for getting the header of a file.

tail : Outputs the last few lines of its input. Useful for things like getting the most recent entries from a log file.

tr : Translates characters. Can be used to perform tasks such as upper/lowercase conversions or changing line termination characters from one type to another (for example, converting DOS text files into Unix style text files).

sed : Stream editor. Can perform more sophisticated text translations than tr.

awk : An entire programming language designed for constructing filters. Extremely powerful.

wc command: The `wc` command is used to count the number of lines, words, and characters in a text file. For example, you can use `wc -l` to count lines, `wc -w` to count words, and `wc -c` to count characters.
wc -l filename.txt
wc -w filename.txt
wc -c filename.txt

find command: The `find` command is used to search for files and directories in a specified location. It allows you to search for files based on various criteria such as name, type, size, and modification time. For example, `find /path/to/search -name "*.txt"` will find all files with the .txt extension in the specified directory.
find /path/to/search -name "filename.txt"
find /path/to/search -type f -mtime -7

cut command: The `cut` command is used to extract specific columns or fields from lines of text. It is often used to process text files with delimited data (e.g., CSV files). You can specify the delimiter and the field you want to extract. For example, `cut -d',' -f2` will extract the second field from a comma-separated file.
cut -d',' -f2 csvfile.csv
cut -c5-10 filename.txt

rev command: The `rev` command is used to reverse lines of text character by character. It takes input and reverses the characters in each line, making the last character the first and vice versa.
echo "Hello, World!" | rev
rev filename.txt

# Special Characters
http://mywiki.wooledge.org/BashGuide/SpecialCharacters
Special characters are characters that have a specific function or meaning in programming or text processing. They are not part of the standard alphanumeric characters (A-Z, 0-9) and include symbols like punctuation marks and control characters.

2. Here's what each of the mentioned special characters typically does in programming or text processing:

   - White spaces: Spaces, tabs, and line breaks used to separate and format text or code.
   - Single quotes (''): Used to define character literals or strings in some programming languages like Python.
   - Double quotes (""): Used to define string literals in many programming languages.
   - Backslash (\): An escape character that is used to represent special characters or control sequences in strings. For example, `\n` represents a newline.
   - Comment (# or // or /* */): Used to add explanatory notes or comments within code to make it more readable. The syntax for comments varies between programming languages.
   - Pipe (|): Used as a data separator in command-line operations or to denote logical OR in some programming languages.
   - Command separator (; or &&): Used to separate multiple commands on a single line in a command-line environment or script. `;` typically runs commands sequentially, while `&&` runs commands conditionally.
   - Tilde (~): In some contexts, it represents the user's home directory in Unix-based systems.

3. How and when to use these special characters depends on the programming language, context, and purpose:

   - White spaces are used for formatting and readability.
   - Single and double quotes are used to define strings or characters.
   - Backslashes are used to escape special characters in strings.
   - Comments are used to document code for clarity.
   - Pipes are used for data manipulation or redirection in command-line operations.
   - Command separators help execute multiple commands in sequence or conditionally.
   - The tilde represents a user's home directory in Unix-based systems, useful for file path references.

The specific usage and behavior of these characters may vary between programming languages and systems, so it's important to consult the documentation for the language or environment you're working with.

Here are answers to your questions:

1. To display a line of text in a command-line environment or a script, you can use the `echo` command in Unix-based systems. For example:
   ```
   echo "This is a line of text."
   ```

2. To concatenate files and print the result to the standard output, you can use the `cat` command in Unix-based systems. For example:
   ```
   cat file1.txt file2.txt
   ```

3. To reverse a string in a Unix-based shell, you can use the `rev` command. For example:
   ```
   echo "Hello, world!" | rev
   ```

4. To remove sections from each line of files, you can use tools like `sed` or `awk` in Unix-based systems. For example, to remove a specific section from each line of a file using `sed`:
   ```
   sed 's/section_to_remove//g' input_file > output_file
   ```

5. The `/etc/passwd` file is a system file in Unix-based operating systems that stores user account information. Each line in the file represents a user and contains fields separated by colons (:). The fields typically include the username, encrypted password (or a placeholder), user ID, group ID, user's full name, home directory, and login shell.

6. The `/etc/shadow` file is another system file in Unix-based operating systems that stores user account password information. It is more secure than `/etc/passwd` because it stores password hashes and other security-related data. The format of the `/etc/shadow` file includes fields like username, password hash, password policy information (e.g., expiration dates), and more. Access to this file is restricted to system administrators for security reasons.

Please note that working with these system files typically requires superuser privileges and should be done with caution.
