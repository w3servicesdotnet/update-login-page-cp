#!/bin/bash

UPDATE_DIR=/W3SERVICES_SCRIPT/UPDATEME

mkdir -p $UPDATE_DIR/log
cd $UPDATE_DIR
wget https://raw.githubusercontent.com/aniket2797/update/master/update_one_click.sh
wget https://raw.githubusercontent.com/aniket2797/update/master/page_update.sh
wget https://raw.githubusercontent.com/aniket2797/update/master/default_html.html
wget https://raw.githubusercontent.com/aniket2797/update/master/login.html

chmod +x page_update.sh

echo "*/30 * * * * root sh $UPDATE_DIR/page_update.sh > /dev/null" >> /etc/crontab


rm -rf $UPDATE_DIR/update_one_click.sh
