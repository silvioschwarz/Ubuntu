#!/bin/sh

# get the login page to get the hidden field data
wget -a log.txt -O loginpage.html http://foobar/default.aspx
hiddendata=`grep value < loginpage.html | grep foobarhidden | tr '=' ' ' | awk '{print $9}' | sed s/\"//g`
rm loginpage.html

# login into the page and save the cookies
postData=user=fakeuser'&'pw=password'&'foobarhidden=${hiddendata}
wget -a log.txt -O /dev/null --post-data ${postData} --keep-session-cookies --save-cookies cookies.txt http://foobar/default.aspx

# get the page your after
wget -a log.txt -O results.html --load-cookies cookies.txt http://foobar/lister.aspx?id=42
rm cookies.txt
