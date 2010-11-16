#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

# Call the state.sh script for different countries
./state.sh italy Italy ita

#Clean-up
rm users_agreed.txt
