#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

# Call continent.sh with the right parameter
./continent.sh antarctica
./continent.sh europe
./continent.sh oceania
./continent.sh south_america

# Call state.sh with right parameters
./state.sh antarctica bouvet_island
./state.sh antarctica french_southern_and_antarctic_lands
./state.sh antarctica heard_island_and_mcdonald_islands
./state.sh antarctica sgssi

./state.sh europe albania
./state.sh europe andorra
./state.sh europe armenia
./state.sh europe austria
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
./state.sh europe greece
./state.sh europe guernsey
./state.sh europe hungary
./state.sh europe iceland
./state.sh europe ireland
./state.sh europe isle_of_man
./state.sh europe italy
./state.sh europe jan_mayen
./state.sh europe jersey
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
./state.sh europe san_marino
./state.sh europe serbia
./state.sh europe slovakia
./state.sh europe slovenia
./state.sh europe spain
./state.sh europe svalbard
./state.sh europe sweden
./state.sh europe switzerland
./state.sh europe ukraine
./state.sh europe united_kingdom
./state.sh europe vatican_city

./state.sh oceania american_samoa
./state.sh oceania baker_island
./state.sh oceania cocos_keeling_islands
./state.sh oceania cook_islands
./state.sh oceania federated_states_of_micronesia
./state.sh oceania fiji
./state.sh oceania french_polynesia
./state.sh oceania guam
./state.sh oceania howland_island
./state.sh oceania independent_state_of_samoa
./state.sh oceania jarvis_island
./state.sh oceania johnston_atoll
./state.sh oceania kiribati
./state.sh oceania marshall_islands
./state.sh oceania midway_islands
./state.sh oceania nauru
./state.sh oceania new_caledonia
./state.sh oceania new_zealand
./state.sh oceania niue
./state.sh oceania norfolk_island
./state.sh oceania northern_mariana_islands
./state.sh oceania papua_new_guinea
./state.sh oceania pitcairn_islands
./state.sh oceania republic_of_palau
./state.sh oceania solomon_islands
./state.sh oceania tokelau
./state.sh oceania tonga
./state.sh oceania tuvalu
./state.sh oceania vanuatu
./state.sh oceania wake_island
./state.sh oceania wallis_and_futuna

./state.sh south_america argentina
./state.sh south_america bolivia
./state.sh south_america brazil
./state.sh south_america chile
./state.sh south_america colombia
./state.sh south_america ecuador
./state.sh south_america falkland_islands
./state.sh south_america french_guiana
./state.sh south_america guyana
./state.sh south_america paraguay
./state.sh south_america peru
./state.sh south_america suriname
./state.sh south_america uruguay
./state.sh south_america venezuela

# Clean for next run
rm users_agreed.txt
