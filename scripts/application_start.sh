#!/bin/bash
cd /home/ec2-user/t3-frontend
nvm use 16
npm run build
pm2 start npm --name "myt3app" -- start
pm2 startup
pm2 save
pm2 restart all
