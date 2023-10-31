To solve task 0, make sure you have set up your ssh keys; pubic and private and have updated your intranet with the public key and saved the peivate key at a safe place.

Next, navigate to the root of your terminal <cd root>.

Navigate to the .ssh <cd .ssh>

Create the file "school" and update its content with the private key. save

Change the permission of th file "school" to only user <chmod 600 school> or <chmod 600 /root/.ssh/school
>

Create another file "school.pub" and update it with your public key details. save and exit.

Now navigate to your task on the intranet. click on the "my server link" and click on "Action" button. Select "New server" to get your updated ip address.

On your terminal, navigate to the required directory for your task. create the file ~0-use_a_private_keyand update it with your private key.

Then create the file "0-use_a_private_key" 

Update with the content <#!/usr/bin/env bash> as the 1st line, <#connect to server using private key ~/.ssh/school with the user ubuntu> as comment to the 2nd line 
<ssh -i ~/.ssh/school ubuntu@ip_address> should be on the next line. Replace "ip_address" with ur server ip digits. eg.ubuntu@99.89.66

Save and exit

Make the file executable <chmod u+x 
0-use_a_private_key>

Execute it with the command <./0-use_a_private_key>

Then type "exit"

Git add, commit and push.

check your code.

#Task1 To create an SSH key pair

Create the bash scipt file using the following content;
<#!/usr/bin/env bash
#This creates a RSA key pair
#ssh-keygen -b -4096 -P -betty -f -school
ssh-keygen -t -rsa -b 4096 -P betty -f school>

save and exit.

Give file executable oermission using chmod command.

Exectute the file with the command <./1-create_ssh_key_pair>

This creates rsa keys with betty as the passphrase and saves your public key in the file "school.pub" and your private key in "school."

git add, commit and push

#Task2 Client configuration file

Navigate to the root of your terminal

cd <.ssh>

Update the file "config" with the right content. If file doesn't exist, create it and update it with the content below.
<# Configure ssh client so that you can connect to a server without typing a password.
Host *
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes
    GSSAPIDelegateCredentials no
    IdentityFile ~/.ssh/school
    PasswordAuthentication no>

exit and save

Type <ssh -v ubuntu@98.98.98.98>
(replace digits with the IP of your server)

git add, commit, push
    





