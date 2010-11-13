#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

# Parse the list
python check_uids.py users_agreed.txt italy_uids_sorted Italy > ita_status
python check_not_accepted.py users_agreed.txt italy_uids_sorted > bl_ita

# Better having results sorted
sort -rn bl_ita > ita_not_accepted

# Move data to a public web_server
scp -P 65321 ita_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/
scp -P 65321 ita_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/

#Clean-up
rm users_agreed.txt
rm bl_ita
rm ita_status
rm ita_not_accepted
