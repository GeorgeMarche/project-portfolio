# Import necessary libraries
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

# Create list of 2 list dictionaries, one without outliers
data_dicts = [{"Q3": None}, {"D1": None}, {"D2": None}]
noOL_dicts = []

# Open input file
in_file = open("Q4-output.txt", "w")

# Iterate through datasets
for data_dict in data_dicts:

    # Read the data into a list dictionary
    csv = list(data_dict.keys())[0]
    df = pd.read_csv(csv + ".csv")
    data = df.to_dict("list")
    
    # Extract domains and tweet counts, sort by tweet count
    domains = data["Domain"]
    limit = 500 if csv != "D2" else 100
    twt_col = "Tweets" if csv != "D1" else \
            "# Citations in our Alternative Narrative Tweets"
    tweets = [int(t) if t == t else 0 for t in data[twt_col]]
    data_dict[csv] = tweets
    noOL_tweets = [t for t in tweets if t < limit]
    noOL_dicts.append({csv: noOL_tweets})
    len_data = len(tweets)
    len_noOL = len(noOL_tweets)
    s_tweets = sorted(tweets, reverse = True)

    # Get the top 5 domains with tweets
    print("\n\\\\ %s Data Information: //\n" % csv, file = in_file)
    print("  ** Top 5 **\n", file = in_file)
    num = 0
    for i in range(5):
        tweet = s_tweets[i]

        # If same number of tweets as last top domain, advance index
        start = 0 if num != tweet else ind + 1
        ind = tweets.index(tweet, start)

        domain = domains[ind]
        print("  %d. %d tweets -- %s." % 
                ((i + 1), tweet, domain), 
                file = in_file)

        num = tweet

    # Print comparison of original and outlier-less data
    print("\n  ** Removing Outliers **\n", file = in_file)
    print("  Value limit: %d" % limit, file = in_file)
    print("  Outliers: %d" % (len_data - len_noOL), file = in_file)
    print("  Out of total: %d" % len_data, file = in_file)
    pct_lost = (len_data - len_noOL) / len_data
    print("  Percent lost:  {:.2%}".format(pct_lost), file = in_file)

# Make an image for each trio of eCDFs
fig = 0
colors = ["red", "green", "blue"]
for list_dicts in [data_dicts, noOL_dicts]:
    plt.figure(fig)
    for i in range(len(list_dicts)):
        df = pd.DataFrame(list_dicts[i])
        sns.ecdfplot(data = df, palette = [colors[i]])
    plt.legend(labels = ["Q3", "D1", "D2"])
    add = fig * "-NoOutlier" + ""        
    plt.savefig("Tweets-eCDF%s.png" % add)
    fig += 1

in_file.close()
