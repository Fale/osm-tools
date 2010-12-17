#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

#!/bin/bash

# Call to the other hourly file
cd ODbL
./hourly.sh
cd ..

# Call state.sh with the right parameter
./state.sh europe albania
./state.sh europe alps
./state.sh europe andorra
./state.sh europe austria
./state.sh europe azores
./state.sh europe belarus
./state.sh europe belgium
./state.sh europe bosnia-herzegovina
./state.sh europe british_isles
./state.sh europe bulgaria
./state.sh europe croatia
./state.sh europe cyprus
./state.sh europe czech_republic
./state.sh europe denmark
./state.sh europe estonia
./state.sh europe faroe_islands
./state.sh europe finland
./state.sh europe france
./state.sh europe germany
./state.sh europe great_britain
./state.sh europe greece
./state.sh europe hungary
./state.sh europe iceland
./state.sh europe ireland
./state.sh europe isle_of_man
#./state.sh europe italy
./state.sh europe kosovo
./state.sh europe latvia
./state.sh europe liechtenstein
./state.sh europe lithuania
./state.sh europe luxembourg
./state.sh europe macedonia
./state.sh europe malta
./state.sh europe moldova
./state.sh europe monaco
./state.sh europe montenegro
./state.sh europe netherlands
./state.sh europe norway
./state.sh europe poland
./state.sh europe portugal
./state.sh europe romania
./state.sh europe serbia
./state.sh europe slovakia
./state.sh europe slovenia
./state.sh europe spain
./state.sh europe sweden
./state.sh europe switzerland
./state.sh europe turkey
./state.sh europe ukraine

#Clean-up
rm users_agreed.txt
