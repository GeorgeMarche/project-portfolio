#!/usr/bin/python3
# hw1-ex3.py

import re
import sys
import requests as req
from bs4 import BeautifulSoup as BS

pattern = re.compile('\/url\?q=([^&]+)')

param = None if len(sys.argv) == 2 else {'q':sys.argv[2]}
res = req.get(sys.argv[1], params = param)

soup = BS(res.text, 'html.parser')
for link in soup.find_all('a'):
    link = link.get('href')

    if len(sys.argv) == 3:    
        link = pattern.match(link)

        if (link != None):
            link = link.groups()[0]
        else:
            continue
     
    res = req.get(link)
    head = res.headers

    if head['content-type'] == 'application/pdf':
        print("URI: " + link)
        print("Final URI: " + res.request.url)
        print("Content Length: {:,.0f} bytes\n".format(int(head['content-length'])))
