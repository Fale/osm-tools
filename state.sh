#!/bin/bash

# Parse the list
python check_uids.py users_agreed.txt $1_uids_sorted $1 > $1_status
python check_not_accepted.py users_agreed.txt $1_uids_sorted > $1_not

# Better having results sorted
sort -rn $1_not > $1_not_accepted

# Move data to a public web_server
scp -P 65321 $1_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/
scp -P 65321 $1_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/

#Clean-up
rm $1_not
rm $1_status
rm $1_not_accepted
