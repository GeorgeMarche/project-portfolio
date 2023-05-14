# Import needed libraries
import requests as reqs
import pandas as pd
import re

# Domain pattern, initiate both data files
pattern = r'://([a-zA-Z0-9\-]+\.?)([a-zA-Z0-9\-]+\.?[a-zA-Z0-9\.]*)'
data1 = {'Original URL': [], 'Tweets': [], 'Final URL': [], 'HTTP Status': []}
data2 = {'Domain': [], 'Count': [], 'Tweets': []}

# Open file to save output in & read CSV into a DataFrame
in_file = open("Q1-output.txt", "w")
df = pd.read_csv('expanded-URLs.csv')

# Initiate redirected, 200, and non-200 counts
redir = 0
ok = 0
not_ok = 0

# Iterate through rows in DataFrame
for i, row in df.iterrows():

    # Track progress, save original URL into first dataset
    print("-- Processing Link #%d --" % (i + 1))
    link = row['Article URL']
    data1['Original URL'].append(link)

    # If total_freq is NaN, set to zero; otherwise, its value
    try:
        freq = int(row['total_freq'])
    except ValueError as e:
        freq = 0

    # Try to make an HTTP request, increment the proper counts
    try:
        res = reqs.get(link, timeout = 10)
        url = res.url
        if (url != link):
            redir += 1
        if (res.status_code == 200):
            ok += 1
        else:
            not_ok += 1
        resp = True
    except:
        url = link
        not_ok += 1
        resp = False

    # Add the data into the first set
    data1['Final URL'].append(url)
    data1['HTTP Status'].append(res.status_code if resp else 404)
    data1['Tweets'].append(freq)

    # Get the domain from the final URL
    found = re.findall(pattern, url)[0]
    domain = found[1]
    ind = -1

    # If no sub-domain, correct
    if domain.count('.') == 0:
        domain = found[0] + domain
    
    # Add new domain or update domain data
    if domain not in data2['Domain']:
        data2['Domain'].append(domain)
        data2['Count'].append(1)
        data2['Tweets'].append(freq)
    else:
        ind = data2['Domain'].index(domain)
        data2['Count'][ind] += 1
        data2['Tweets'][ind] += freq

    # Print the rows to check for accuracy
    print("Link: %s" % url)
    print("Domain: %s" % data2['Domain'][ind])
    print("Count: %d" % data2['Count'][ind])
    print("Tweets: %d\n" % data2['Tweets'][ind])

# Print/write the needed responses
print("Number of redirects: %d" % redir, file = in_file)
print("Number of 200 statuses: %d" % ok, file = in_file)
print("Number of non-200 statuses: %d\n" % not_ok, file = in_file)
print("Number of unique domains: %d" % len(data2['Domain']), file = in_file)

# Get the top 5 domains with regards to tweets
tweets = sorted(data2['Tweets'], reverse = True)
print("Top 5 domains: ")
num = 0

# Iterate through highest 5
for i in range(5):
    
    # Check for tie to find the next domain
    start = ind + 1 if num == tweets[i] else 0
    ind = data2['Tweets'].index(tweets[i], start)
    
    # Print/write the URL with the next highest tweet count
    dom = data2['Domain'][ind]
    twts = data2['Tweets'][ind]
    print("\t%s showed up in %d tweets" % (dom, twts), file = in_file)

    num = tweets[i] 

# Save the DataFrames in a CSV and close the file
df = pd.DataFrame(data1)
df.to_csv('Links.csv')
df = pd.DataFrame(data2)
df.to_csv('D2.csv')
in_file.close()
