#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys

agreed = sys.argv[1]
uids = sys.argv[2]

users = {}
total = 0

for line in open(uids):
    line = line.strip()
    try:
        count, usercouple = line.split(' ', 1)
    except ValueError:
        # one of the anonymous objects, skip it
        continue
    user, uid = usercouple.rsplit(' ', 1)
    users[uid] = {'user':user, 'count':int(count)}
    total += int(count)

agreed = filter(lambda x: not x.startswith('#'), open(agreed).readlines())
agreed = map(lambda x: x.strip(), agreed)

intersect = filter(users.has_key, agreed)

s = 0

for uid in users:
    if uid < "286582":
        for a in agreed:
            if uid == a:
                s = 1
        if s != 1:
	    print users[uid]["count"], users[uid]["user"], uid
            s = 0
        else:
            s = 0
