#!/bin/bash

# Parse the list
python check_uids.py users_agreed.txt $1_$2 $2 > $1_$2_status
python check_not_accepted.py users_agreed.txt $1_$2 > $1_$2_not

# Better having results sorted
sort -rn $1_$2_not > $1_$2_not_accepted

# Move data to a public web_server
scp -P 65321 $1_$2_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/
scp -P 65321 $1_$2_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/

#Clean-up
rm $1_$2_not
rm $1_$2_status
rm $1_$2_not_accepted
