#!/bin/bash

# Download the list of users who agreed
wget planet.openstreetmap.org/users_agreed/users_agreed.txt

#!/bin/bash

#Call state.sh with the right parameter
./state.sh europe italy

# Clean for next run
rm users_agreed.txt
