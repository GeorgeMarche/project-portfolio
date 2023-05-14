#!/usr/bin/python3

from TwitterSearch import *
import requests
import re

links_seen = 0

# Create Regex pattern for shortened URLs & open file for storing unique URLs
short = r'http[s]?://[a-zA-Z0-9]{1,5}\.[a-zA-Z0-9]{1,2}/'
link_file = open("targetURLs.txt", "w+")

# Hopefully, we can access the Twitter feed
try:

    # Declare list of TwitterSearchOrders; initiate list of keywords
    tso_list = []
    keywords = ['COVID-19', 'Trump', 'Biden', 'coronavirus',
            'Bernie', 'Russia', 'China', 'BLM', 
            'election', 'anxiety', 'depression', 'article', 
            'BREAKING:', 'omg', 'memes', 'lol']
    
    # Create a TwitterSearchOrder for each keyword, to be added to the declared list
    for keyword in keywords:
        tso = TwitterSearchOrder()
        tso.set_keywords([keyword])
        tso_list.append(tso)
    
    # May I please access all this information?
    ts = TwitterSearch(
            consumer_key = 'eL7OXDP9YyiXZxiu0Tqs58I9J',
            consumer_secret = 'zH49EDtg6kBZDkZ5Y3KrciudaAxxmLb0iyhGxrbGHBKykQllpQ',
            access_token = '802575653598035969-o7Ouo4a4EKT1wwDgaukCPwgC1r4UGlX',
            access_token_secret = 'nufvvpVKMY0GEPKwY60xsbjqhtcS6vAwvG4THjFxPLej6'
            )

    # Function to check for URLs in each Tweet; takes Tweet as argument
    def CheckForLinks(tweet):
        links = []
        
        # Add link to the list if there is one in specific part of the Tweet
        if 'entities' in tweet:
            for url in tweet['entities']['urls']:
                links.append(url['expanded_url'])

            if 'media' in tweet['entities']:
                for url in tweet['entities']['media']:
                    links.append(url['media_url_https'])

        if 'url' in tweet['user']['entities']:
            for url in tweet['user']['entities']['url']['urls']:
                links.append(url['expanded_url'])

        # Keep unique URLs. Check if there are any Twitter links
        links_seen += len(links)
        final_links = set()    
        for link in links:
            if (link and link.find('twitter') == -1):
                final_links.add(link)
        
        # Return list of the links
        return final_links

    links = set()
    redirected = 0
    shortened = 0

    # Check each link, from each tweet, from each keyword
    for tso in tso_list:
        for tweet in ts.search_tweets_iterable(tso):
            for link in CheckForLinks(tweet):

                # If it is indeed shortened, increment value
                if re.match(short, link):
                    shortened += 1

                # Try HTTP request. Add to set of target URLs
                try:
                    response = requests.get(link)
                    links.add(response.url)

                    # If it was redirected, increment value
                    if response.history:
                        redirected += 1
                except:
                    pass

            # Once it hits at least 1,300 links, stop.
            if len(links) >= 1300:
                break

    # Write to file and close
    for link in links:
        link_file.write(link + '\n')

    link_file.close()
    
    # Hooray!
    print("***file transfer of unique links complete***")
    print("Number of searched URLs: %d" % links_seen)
    print("Number of unique target URLs: %d" % len(links))
    print("Number of shortened URLs: %d" % shortened)
    print("Number of redirected URLs: %d" % redirected)

except TwitterSearchException as e:
    print(e)
