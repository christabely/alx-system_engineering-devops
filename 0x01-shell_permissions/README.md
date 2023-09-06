# Shell Permissions 
Read:http://linuxcommand.org/lc3_lts0090.php

Shell permissions dictate who accesses, modifies, or executes files and directories managed through three permission categories:

**Owner Permissions**: These apply to the owner of the file or directory. The owner can typically control who can access, modify, or execute the file.

**Group Permissions**: These apply to a group of users who have been granted access to the file or directory.

**Others Permissions**: These applies to all other users who are not the owner or part of the group.

# Commands

`chmod` command is used to change permissions in the shell.


`ls -l` command is used to view permissions for files and directories.

`su` (Switch User) command is used to switch to another user account, including the root (superuser) account, after providing the password for that account. When you use `su`, you effectively become that user, inheriting their environment variables and permissions.You would need to know the password of the target user account, which can be a security concern.

`sudo` (Superuser Do) command allows authorized users to execute specific commands as the superuser or another user, without needing to know the target user's password. Users with sudo access must authenticate with their own password, not the target user's password, which enhances security.

`chown` command is used to change the ownership or users of files and directories. To do this, we employ the superuser privilages by using the sudo command to execute chown.
Syntax: sudo chown name_of_newowner file_name

`chgrp` command is used to changed the group ownership of a file or directory.
Syntax: chgrp new_group file_name

`id` command displays user and group information for a specified user or the current user. When the "id" command is run without any arguments, it shows information about the current user.

`groups` command displays the groups to which a user belongs. When this command is run followed by a username, it lists all the groups that the specified user is a member of.

`whoami` command displays the username of the currently logged-in user. When you run this command in a terminal, it will typically return your username.

`adduser` command is a higher-level utility tool that simplifies the process of creating a new user account. When you run adduser, it prompts you for various user details, including username, password, and additional information.
Syntax: sudo adduser new_username

`useradd` command is a lower-level utility for creating user accounts. It requires more manual input and does not offer as much interactive assistance as adduser.

`addgroup` command is used to create new groups. You can use addgroup to create a new group and then add users to that group using other commands like usermod.
Syntax: sudo addgroup new_groupname

# Chmod Octal Base Value
When setting permissions using chmod, octal (base-8) value can be used to represent the desired permissions for the owner, group, and others. The octal value consists of three digits, each representing the permissions for the owner, group, and others, respectively. Each digit is calculated by adding the values for specific permissions:
4 represents read permission.
2 represents write permission.
1 represents execute permission

`Chmod Octal Value Meaning`

**777 (rwxrwxrwx)** No restrictions on permissions. Anybody may do anything. Generally not a desirable setting.

**755 (rwxr-xr-x)** The file's owner may read, write, and execute the file. All others may read and execute the file. This setting is common for programs that are used by all users.

**700 (rwx------)** The file's owner may read, write, and execute the file. Nobody else has any rights. This setting is useful for programs that only the owner may use and must be kept private from others.

**666 (rw-rw-rw-)** All users may read and write the file.

**644 (rw-r--r--)** The owner may read and write a file, while all others may only read the file. A common setting for data files that everybody may read, but only the owner may change.

**600 (rw-------)** The owner may read and write a file. All others have no rights. A common setting for data files that the owner wants to keep private.

# How to print the effective userid

To print the effective user ID (EUID),you can use the geteuid() function in the C programming language or use the id -u command in the terminal. Here's how you can do it in both ways:

`Using C`

#include <stdio.h>
#include <unistd.h>

int main() {
    uid_t euid = geteuid();
    printf("Effective User ID: %d\n", euid);
    return 0;
}

Compile this code using a C compiler (e.g., gcc) and then run the executable. It will print the EUID to the console.

`Using the terminal`

You can simply use the id -u command in the terminal to print the effective user ID. Syntax: id -u

# How to print the groups a user is in

You can use the getgrouplist() function in C to retrieve the list of groups a user is in and the 'groups' command in the terminal.

`Using C`

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <grp.h>

int main() {
    uid_t uid = getuid();
    int ngroups_max = sysconf(_SC_NGROUPS_MAX);
    gid_t *groups = malloc(ngroups_max * sizeof(gid_t));

    if (groups == NULL) {
        perror("malloc");
        return 1;
    }

    int ngroups = getgroups(ngroups_max, groups);

    if (ngroups == -1) {
        perror("getgroups");
        free(groups);
        return 1;
    }

    printf("User's Groups:\n");
    for (int i = 0; i < ngroups; i++) {
        struct group *grp = getgrgid(groups[i]);
        if (grp != NULL) {
            printf("%s (%d)\n", grp->gr_name, grp->gr_gid);
        }
    }

    free(groups);
    return 0;
}

Compile this code using a C compiler (e.g., gcc) and then run the executable. It will print the groups that the current user is a member of.

`Using the terminal`

You can use the 'groups' command in the terminal to print the groups a user is in. Syntax: groups

# How to print real and effective user and group IDs

In a C program, you can use the getuid(), geteuid(), getgid(), and getegid() functions to retrieve the real and effective user and group IDs. In the terminal, you can use the id command with appropriate options to display the real and effective user and group IDs.

`Using C`

#include <stdio.h>
#include <unistd.h>

int main() {
    uid_t real_uid = getuid();
    uid_t effective_uid = geteuid();
    gid_t real_gid = getgid();
    gid_t effective_gid = getegid();

    printf("Real User ID: %d\n", real_uid);
    printf("Effective User ID: %d\n", effective_uid);
    printf("Real Group ID: %d\n", real_gid);
    printf("Effective Group ID: %d\n", effective_gid);

    return 0;
}

Compile this code using a C compiler (e.g., gcc) and then run the executable. It will print both the real and effective user and group IDs.

`Using the terminal`

- Print real and effective user IDs
id -u
id -u -r

- Print real and effective group IDs
id -g
id -g -r

- id -u will print the effective user ID.
- id -u -r will print the real user ID.
- id -g will print the effective group ID.
- id -g -r will print the real group ID.

Each command will display the respective user or group ID as a number on the terminal.

# How to create a group

You can use the groupadd command in the terminal to create a group. Using C programming language, you can use the group related functions such as getgrnam, getgrgid, and putgrnam to manipulate groups. However, note that creating groups programmatically usually requires elevated privileges (root or superuser).

`Using C`

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <grp.h>

int main() {
    const char *groupname = "mygroup";  // Change this to your desired group name

    // Check if the group already exists
    struct group *grp_check = getgrnam(groupname);
    if (grp_check != NULL) {
        printf("Group '%s' already exists.\n", groupname);
        return 1;
    }

    // Prepare a new group entry
    struct group grp_entry;
    grp_entry.gr_name = (char *)groupname;
    grp_entry.gr_passwd = "x"; // 'x' is typically used as a placeholder for the password field
    grp_entry.gr_gid = 1000; // Change this to your desired group ID
    grp_entry.gr_mem = NULL; // An array of group members (set to NULL for an empty group)

    // Try to create the group
    if (setgroupent(1) == 1 && putgrent(&grp_entry, stdout) == 0) {
        printf("Group '%s' has been created.\n", groupname);
    } else {
        perror("Failed to create the group");
        return 1;
    }

    // Clean up and close group files
    endgrent();

    return 0;
}


In this example:

Change the groupname variable to your desired group name.

Modify grp_entry.gr_gid to set the desired group ID.

The code first checks if the group already exists using getgrnam.

It then prepares a new group entry in the grp_entry structure.

The group is created using setgroupent and putgrent functions, and the result is printed to the console.

Finally, the group files are closed with endgrent.

Compile this code using a C compiler (e.g., gcc) and run it with elevated privileges (e.g., using sudo). Be cautious when creating groups programmatically, especially with elevated permissions, as it can affect system security and configuration.

`Using the terminal`

Use the groupadd command followed by the name of the group you want to create. Syntax: sudo groupadd group_name

# How to create a user
