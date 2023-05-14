from TwitterSearch import *
import pandas as pd

"""
import nltk
from nltk import word_tokenize

nltk.download('averaged_perceptron_tagger')
nltk.download('tagsets')
"""

df = pd.read_csv("raw_tweets.csv")

try:
    tso_list = []
    keywords = ['communism', 'communist', 'socialism', 'socialist',
                'liberal', 'centrism', 'centrist', 'conservative',
                'libertarian', 'capitalism', 'capitalist',
                'fascist', 'fascism', 'anarchism', 'anarchist']
    
    for keyword in keywords:

        tso = TwitterSearchOrder()
        tso.set_keywords([keyword])
        tso_list.append(tso)

    ts = TwitterSearch(
            consumer_key = 'eL7OXDP9YyiXZxiu0Tqs58I9J',
            consumer_secret = 'zH49EDtg6kBZDkZ5Y3KrciudaAxxmLb0iyhGxrbGHBKykQllpQ',
            access_token = '802575653598035969-o7Ouo4a4EKT1wwDgaukCPwgC1r4UGlX',
            access_token_secret = 'nufvvpVKMY0GEPKwY60xsbjqhtcS6vAwvG4THjFxPLej6'
            )

    for i in range(len(tso_list)):
        
        print("<" + ("|" * (i + 1)) + \
              (" " * (len(tso_list) - (i + 1))) + ">")
        
        for tweet in ts.search_tweets_iterable(tso_list[i]):

            if tweet['retweeted'] == False and \
                'retweeted_status' not in tweet and \
                tweet['entities']['urls'] == [] and \
                tweet['lang'] == 'en': 

                split_txt = [t for t in tweet['text'].split() \
                             if not t.startswith('http')]
                noURL_txt = ' '.join(split_txt)

                if noURL_txt not in df['Tweet']:
                    df.loc[-1] = [keywords[i], noURL_txt]

    df.to_csv('raw_tweets.csv', index=False)

except TwitterSearchException as e:

    print("Wait a few minutes... e.e")
    
    df.to_csv('raw_tweets.csv', index=False)

