# Import the necessary libraries
from datetime import datetime
from TwitterSearch import *
import seaborn as sns
import pandas as pd
import json
import sys

# Get domains from D2 and D3, open output file
domains = pd.read_csv('D2-and-D3.csv').to_dict('list')['Domain']
in_file = open("Q3-output.txt", "w")

# Initiate variables needed for date translation and results
months = [None, 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
tweet_data = []
max_time = None
min_time = None
dom_num = [i + 1 for i in range(len(domains))]
dom_tweets = {"Domain": dom_num, "Tweets": []}
dom_accts = {"Domain": dom_num, "Users": []}

# Hopefully, we can access the Twitter feed
try:
        
    # Populate the list of twitter search orders
    tso_list = []
    for domain in domains:
        tso = TwitterSearchOrder()
        tso.set_keywords([domain])
        tso.set_language('en')
        tso_list.append(tso)
    
    # May I please access all this information?
    ts = TwitterSearch(
            consumer_key = 'eL7OXDP9YyiXZxiu0Tqs58I9J',
            consumer_secret = 'zH49EDtg6kBZDkZ5Y3KrciudaAxxmLb0iyhGxrbGHBKykQllpQ',
            access_token = '802575653598035969-o7Ouo4a4EKT1wwDgaukCPwgC1r4UGlX',
            access_token_secret = 'nufvvpVKMY0GEPKwY60xsbjqhtcS6vAwvG4THjFxPLej6'
            )

    # Initiate result variables for total tweets and total accounts
    tot_twts = 0
    tot_acts = set()

    # Get each tweet, from each keyword
    for i in range(len(tso_list)):

        # Initiate result variables for each domain tweets and accounts
        dom_twts = 0
        dom_acts = set()
        
        for tweet in ts.search_tweets_iterable(tso_list[i]):

            # We want tweets with URLs
            urls = tweet["entities"]["urls"]
            if urls == [] or urls[0]["expanded_url"].find(domains[i]) == -1:
                continue
                
            # Check progress, increment proper variables
            print("-- Tweet #%d --" % tot_twts)
            tot_twts += 1
            dom_twts += 1
            acct = tweet["user"]["screen_name"]
            dom_acts.add(acct)
            tot_acts.add(acct)

            # Save into the dataset to be a JSON file
            tweet_data.append({
                "Tweet ID": tweet["id_str"],
                "User Screen Name": tweet["user"]["screen_name"],
                "Tweet Time": tweet["created_at"],
                "Domain": domains[i],
                "Link": urls[0]["expanded_url"],
                "Tweet Text": tweet["text"]})

            # Translate 'created at' to be a datetime for time range
            t = tweet["created_at"].split(' ')
            yr = int(t[5])
            mo = months.index(t[1])
            dy = int(t[2])
            hr = int(t[3][:2])
            mn = int(t[3][3:5])
            sc = int(t[3][6:])
            tweet_time = datetime(yr, mo, dy, hr, mn, sc)
                
            # Check if min or max, or if min & max need initiating
            if min_time == None:
                min_time = tweet_time
                max_time = tweet_time
            elif tweet_time > max_time:
                max_time = tweet_time
            elif tweet_time < min_time:
                min_time = tweet_time

        # Save the number of domain Tweets
        dom_tweets["Tweets"].append(dom_twts)
        dom_accts["Users"].append(len(dom_acts))

    # Dump JSON information into new JSON file
    out_file = open("tweet_data.json", "w")
    json.dump(tweet_data, out_file, indent = 2)
    out_file.close()

    # Print out results
    print("\nNumber of tweets gathered: ", tot_twts, file = in_file)
    print("Time range of the tweets: ", (max_time - min_time), file = in_file)
    print("Number of unique accounts: ", len(tot_acts), file = in_file)

    # Create a bar graph of the number Tweets per domain
    df_twts = pd.DataFrame(dom_tweets)
    tweets_bar = sns.catplot(x = "Domain", y = "Tweets",
            kind = "bar", data = df_twts)
    tweets_bar.set(title = "How Many Tweets Discovered for Each Domain?",
            xlabel = "Domain", 
            ylabel = "Number of Tweets")
    tweets_bar.savefig("TweetCount.png")

    # Same as above, but without outlier
    t_bar_no_ol = sns.catplot(x = "Domain", y = "Tweets",
            kind = "bar", data = df_twts[df_twts["Tweets"] < 1000])
    t_bar_no_ol.set(title = "How Many Tweets Discovered for Each Domain?",
            xlabel = "Domain",
            ylabel = "Number of Tweets")
    t_bar_no_ol.savefig("TweetCount-NoOutlier.png")

    # Create a bar graph of the number accounts per domain
    df_acts = pd.DataFrame(dom_accts)
    accts_bar = sns.catplot(x = "Domain", y = "Users",
            kind = "bar", data = df_acts)
    accts_bar.set(title = "How Many Users Posted Links for Each Domain?",
            xlabel = "Domain",
            ylabel = "Number of Users")
    accts_bar.savefig("UserCount.png")

    # Same as above, but without outlier
    a_bar_no_ol = sns.catplot(x = "Domain", y = "Users",
            kind = "bar", data = df_acts[df_acts["Users"] < 500])
    a_bar_no_ol.set(title = "How Many Users Posted Links for Each Domain?",
            xlabel = "Domain",
            ylabel = "Number of Users")
    a_bar_no_ol.savefig("UserCount-NoOutlier.png")
    
    # Save data for number of Tweets & accounts to CSVs
    twts = df_twts.to_dict('list')
    twts['Domain'] = domains
    df_twts = pd.DataFrame(twts)
    df_twts.to_csv("Q3.csv")
    
    acts = df_acts.to_dict('list')
    acts['Domain'] = domains
    df_acts = pd.DataFrame(acts)
    df_acts.to_csv("Q3-Users.csv")

    # Close file
    in_file.close()

except TwitterSearchException as e:
    print(e)
