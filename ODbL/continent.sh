
#!/bin/bash

# Parse the list
python check_uids.py users_agreed.txt $1 $1 > $1_status
python check_not_accepted.py users_agreed.txt $1 > $1_not

# Better having results sorted
sort -rn $1_not > $1_not_accepted

# Add headers
sed -e "1i# File users_agreed.txt: `stat -c '%y' users_agreed.txt`" -i $1_not_accepted
sed -e "1i# File $1.osm: 22 October 2010" -i $1_not_accepted

# Move data to a public web_server
scp -P 65321 $1_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/$1_status
scp -P 65321 $1_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/$1_not_accepted

#Clean-up
rm $1_not
rm $1_status
rm $1_not_accepted
