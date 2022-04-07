#!/bin/bash

#kill existing process or specify the process to kill (if pm2 is used)
pm2 kill 

# cd to the project dir
cd ~/projects/<project path>/

# pull latest code from github
git pull -f origin master

# cd to the subdir if the code is nested
cd server/

# install dependencies
yarn

# start the server using pm2/node/npm/yarn/whatever
pm2 start ecosystem.config.js

# save the pm2 config (if pm2 is being used)
pm2 save
