from os import system, path
from bs4 import BeautifulSoup
import re

# Hostname regex pattern, open file with URLs and read it to a list
pattern = r'://([a-zA-Z0-9\-]+\.[a-zA-Z0-9\-]+\.?[a-zA-Z0-9\.]*)'
link_file = open('targetURLs.txt', 'r')
links = link_file.readlines()

# For each of the 1,000 links I'm selecting
for i in range(1000):
    
    # Remove the newline and get the hostname
    print('-------------PROCESSING LINK #%d-------------' % (i + 1))
    link = links[i][:-1]
    match = re.findall(pattern, link)[0]
    
    # Create filename for both clean & raw path, check if they exist
    count = str(i)
    dashes = '-' * (5 - len(count))
    file_name = count + dashes + match
    rfile_name = 'raw/' + file_name
    cfile_name = 'clean/' + file_name
    if path.isfile(rfile_name) and \
            path.isfile(cfile_name):
        continue

    # Enter command to make HTTP request into Linux OS with curl
    cmd = 'curl ' + link + ' > ' + rfile_name
    system(cmd)
    
    # Save the raw content and parse and ignore odd characters
    raw_file = open(rfile_name, 'r')
    raw = raw_file.read()
    clean = BeautifulSoup(raw, 'html.parser')
    text = clean.getText().encode('latin-1', 'ignore')

    # Save the clean content into the clean version
    clean_file = open(cfile_name, 'w')
    clean_file.write(str(text))

    # Close both clean & raw files
    clean_file.close()
    raw_file.close()

# Close the file with the URL list
link_file.close()
