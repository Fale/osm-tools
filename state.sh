#!/bin/bash

# Parse the list
python check_uids.py users_agreed.txt $1_uids_sorted $2 > $3_status
python check_not_accepted.py users_agreed.txt $1_uids_sorted > $3_not

# Better having results sorted
sort -rn $3_not > $3_not_accepted

# Move data to a public web_server
scp -P 65321 $3_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/
scp -P 65321 $3_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/

#Clean-up
rm $3_not
rm $3_status
rm $3_not_accepted
