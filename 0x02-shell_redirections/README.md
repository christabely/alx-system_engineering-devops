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

In summary, the "sort -u" command and the "uniq" command are both used to remove duplicate lines from a text file, but they work differently:

The "sort -u" command combines the functionality of sorting and removing duplicates. It first sorts the lines in the input file and then removes adjacent duplicate lines, keeping only unique lines in the output.
You typically use it as follows: `sort -u file_name`
It requires the input to be sorted, or else it won't remove duplicates correctly.

The "uniq" command is specifically designed to remove duplicate lines from a sorted file. It operates on sorted input and removes only consecutive duplicate lines, meaning that it will keep one instance of each unique line. It is used as follows: `sort file_name | uniq`
Alternatively, you can use `uniq -u` to show only the unique lines, but this requires sorted input as well.

(In simpler terms, "sort -u" combines sorting and duplicate removal in a single command and requires sorted input, while "uniq" focuses solely on removing consecutive duplicates and also requires sorted input. The choice between them depends on whether you need to sort the input as well and whether you want to remove consecutive or all duplicate lines.)

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
   ```


fmt : Reads text from standard input, then outputs formatted text on standard output.

pr : Takes text input from standard input and splits the data into pages with page breaks, headers and footers in preparation for printing.

head : Outputs the first few lines of its input. Useful for getting the header of a file.

tail : Outputs the last few lines of its input. Useful for things like getting the most recent entries from a log file.

tr : Translates characters. Can be used to perform tasks such as upper/lowercase conversions or changing line termination characters from one type to another (for example, converting DOS text files into Unix style text files).

sed : Stream editor. Can perform more sophisticated text translations than tr.

awk : An entire programming language designed for constructing filters. Extremely powerful.
