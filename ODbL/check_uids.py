#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys

agreed = sys.argv[1]
uids = sys.argv[2]
place = sys.argv[3]

users = {}
total = 0
newuser = 0

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
    if uid > "286581":
        newuser += 1

agreed = filter(lambda x: not x.startswith('#'), open(agreed).readlines())
agreed = map(lambda x: x.strip(), agreed)

intersect = filter(users.has_key, agreed)

print "Users who have edited in", place, ":", len(users)
print "Users who have agreed at registration in", place, ":", newuser
print "Users in", place, "who have explicitly agreed: %s (%.2f%%)" % (len(intersect), len(intersect) * 100.0 / len(users))
print "Users in", place, "who have agreed: %s (%.2f%%)" % ((len(intersect)+newuser), (len(intersect)+newuser) * 100.0 / len(users))

count = {"ok": 0, "notok": 0}
for uid in users:
    if uid in intersect:
        count["ok"] += users[uid]["count"]
    else:
	if int(uid) < 286582:
	    count["notok"] += users[uid]["count"]
	else:
	    count["ok"] += users[uid]["count"]

print "Objects versions ready for relicensing: %s (%.2f%%)" % (count['ok'], count['ok'] * 100.0 / total)
print "Objects versions not yet available for relicensing: %s (%.2f%%)" % (count['notok'], count['notok'] * 100.0 / total)

