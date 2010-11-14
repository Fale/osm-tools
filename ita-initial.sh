#!/bin/bash

# Clean
rm italy*

# Download the planet
wget http://download.geofabrik.de/osm/europe/italy.osm.bz2
bunzip2 italy.osm.bz2

# Get all the people from nodes
grep 'node id' italy.osm | grep uid | awk -F'"' '{print $12" "$14}' > italy_nodes
sort italy_nodes | uniq -c | sort -rn >italy_nodes_sorted

# Get all the people from ways
grep 'way id' italy.osm | grep uid | awk -F'"' '{print $8" "$10}' > italy_ways
sort italy_ways | uniq -c | sort -rn > italy_ways_sorted

# Get all the people from relations
grep 'relation id' italy.osm | grep uid | awk -F'"' '{print $8" "$10}' > italy_relations
sort italy_relations | uniq -c | sort -rn >italy_relations_sorted

# Create a file with all previous data
cat italy_nodes > italy_uids
cat italy_ways >> italy_uids
cat italy_relations >> italy_uids
sort italy_uids | uniq -c | sort -rn >italy_uids_sorted

