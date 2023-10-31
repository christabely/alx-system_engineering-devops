To solve task 0, make sure you have set up your ssh keys; pubic and private and have updated your intranet with the public key and saved the peivate key at a safe place.

Next, navigate to the root of your terminal <cd root>.

Navigate to the .ssh <cd .ssh>

Create the file "school" and update its content with the private key. save

Change the permission of th file "school" to only user <chmod 600 school> or <chmod 600 /root/.ssh/school
>

Create another file "school.pub" and update it with your public key details. save and exit.

Now navigate to your task on the intranet. click on the "my server link" and click on "Action" button. Select "New server" to get your updated ip address.

On your terminal, navigate to the required directory for your task. create the file ~0-use_a_private_keyand update it with your private key.

Then create the file "0-use_a_private_key" with the content <#!/bin/usr/env bash> as the first line and <ssh ubuntu@(add_your_ip_address -i ~/.ssh/school(which_is_the_location_of_you_private_key). Save and exit

Make the file executable <chmod u+x 
0-use_a_private_key>

Execute it with the command <./0-use_a_private_key>
