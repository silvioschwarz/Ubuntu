#! /bin/sh



wget -c https://github.com/mozilla/geckodriver/releases/download/v0.24.0/geckodriver-v0.24.0-linux64.tar.gz

tar xvfz geckodriver-v0.24.0-linux64.tar.gz
mv geckodriver ~/.local/bin


wget -c https://chromedriver.storage.googleapis.com/2.46/chromedriver_linux64.zip

pip install selenium
pip install requests BeautifulSoup4 mechanize

