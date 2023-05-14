# Import the necessary libraries
import tweepy

# Authorize me, captain
consumer_key = "eL7OXDP9YyiXZxiu0Tqs58I9J"
consumer_secret = "zH49EDtg6kBZDkZ5Y3KrciudaAxxmLb0iyhGxrbGHBKykQllpQ"
access_token = "802575653598035969-o7Ouo4a4EKT1wwDgaukCPwgC1r4UGlX"
access_token_secret = "nufvvpVKMY0GEPKwY60xsbjqhtcS6vAwvG4THjFxPLej6"

auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(auth,
        wait_on_rate_limit = True,
        wait_on_rate_limit_notify = True)

# Get the 100 accounts from the textfile
with open("screen_names.txt", "r") as in_file:
    
    # For each screen_name
    acct_num = 0
    for screen_name in in_file:
        screen_name = screen_name[:-1]
        acct_num += 1

        # Create a file for the screen_name with the tweets
        print("%d. Processing Tweets For: %s" % (acct_num, screen_name))
        with open(screen_name + ".txt", "w") as tweets:

            # Get 250 English tweets
            count = 0
            tweet_cursor = tweepy.Cursor(api.user_timeline, id = screen_name, lang = "en")
            for tweet in tweet_cursor.items(205):

                # Check tweet for non-Latin-1, increment count
                text = ''.join([c for c in tweet.text if ord(c) < 128])
                tweets.write(text + "\n\n")
                count += 1

            # Print total extracted tweets
            print("\t- Total tweets: %d\n" % count)
