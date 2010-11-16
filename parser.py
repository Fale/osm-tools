#!/usr/bin/env python
# -*- coding: utf-8 -*-

f = open("italy.osm", "r")

users = {}

for line in f:
   start = line.find("uid='")
   if start != -1:
       end = line.find("'",start+5)
       uid = line[start+5:end]
       start = line.find("user='")
       end = line.find("'",start+6)
       users[uid] = line[start+6:end]
       print line[start+6:end] + " " + uid
