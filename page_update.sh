#!/bin/bash

DATE=$(date)

# check default page of new hosting
if diff /W3SERVICES_SCRIPT/UPDATEME/default_html.html /usr/local/CyberCP/index.html > /dev/null ; then
{
echo "Same File"
}
else
{
cp /W3SERVICES_SCRIPT/UPDATEME/default_html.html /usr/local/CyberCP/index.html
echo "Default File updated"
}
fi


# check default page of login page
if diff /W3SERVICES_SCRIPT/UPDATEME/login.html /usr/local/CyberCP/loginSystem/templates/loginSystem/login.html > /dev/null ; then
{
echo "Same File"
}
else
{
cp /W3SERVICES_SCRIPT/UPDATEME/login.html /usr/local/CyberCP/loginSystem/templates/loginSystem/login.html
echo "Login File updated"
}
fi

echo "Last Check done at $DATE" >> /W3SERVICES_SCRIPT/UPDATEME/log/page_update.log
