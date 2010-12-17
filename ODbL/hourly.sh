#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

# Call continent.sh with the right parameter
./continent.sh europe

# Call state.sh with right parameters
./state.sh europe albania
./state.sh europe andorra
./state.sh europe armenia
./state.sh europe azerbaijan
./state.sh europe belarus
./state.sh europe belgium
./state.sh europe bosnia_and_herzegovina
./state.sh europe bulgaria
./state.sh europe croatia
./state.sh europe cyprus
./state.sh europe czech_republic
./state.sh europe denmark
./state.sh europe estonia
./state.sh europe faroe_islands
./state.sh europe finland
./state.sh europe france
./state.sh europe georgia
./state.sh europe germany
./state.sh europe gibraltar

./state.sh europe italy

# Clean for next run
rm users_agreed.txt
