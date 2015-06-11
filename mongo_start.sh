#!/bin/bash
mongod  --replSet test --port 27011 --dbpath=/home/mongodb/data/master --logpath=/home/mongodb/log/master.log --logappend --fork --bind_ip 192.168.10.203
sleep 5
mongod --port 27012 --replSet test --dbpath=/home/mongodb/data/slaver --logpath=/home/mongodb/log/slaver.log --logappend --fork --bind_ip 192.168.10.203
sleep 5
mongod --port 27013 --replSet test --dbpath=/home/mongodb/data/slaver2 --logpath=/home/mongodb/log/slaver2.log --logappend --fork --bind_ip 192.168.10.203
sleep 5
echo "rep start ok"
