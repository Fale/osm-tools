
#!/bin/bash

# Parse the list
python check_uids.py users_agreed.txt $2_$5 $2 > $2_$5_status
python check_not_accepted.py users_agreed.txt $2_$5 > $2_$5_not

# Better having results sorted
sort -rn $2_$5_not > $2_$5_not_accepted

# Add headers
sed -e "1i# File users_agreed.txt: `stat -c '%y' users_agreed.txt`" -i $2_$5_not_accepted
sed -e "1i# File $5.osm: `stat -c '%y' $2_$5`" -i $2_$5_not_accepted

# Move data to a public web_server
scp -P 65321 $2_$5_status chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/$1/$2/$3/$4/$5_status
scp -P 65321 $2_$5_not_accepted chopr@repo.grimp.eu:/home/chopr/repo.grimp.eu/public_html/osm/$1/$2/$3/$4/$5_not_accepted

#Clean-up
rm $2_$5_not
rm $2_$5_status
rm $2_$5_not_accepted
