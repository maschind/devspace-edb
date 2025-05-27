#!/bin/bash

read -p "Enter the amount of users: " user_count
read -p "Enter the password for the users: " login_password
read -p "Enter the OpenShift api url: " oc_api

for user_id in $(seq 1 $user_count)
do
  oc login -u user$user_id $oc_api -p $login_password
done

exit 0
