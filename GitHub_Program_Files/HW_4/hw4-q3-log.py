from math import log
import seaborn as sns
import pandas as pd
import tweepy

# Handle Tweepy errors
try:

    # Key values
    consumer_key = 'eL7OXDP9YyiXZxiu0Tqs58I9J'
    consumer_secret = 'zH49EDtg6kBZDkZ5Y3KrciudaAxxmLb0iyhGxrbGHBKykQllpQ'
    access_token = '802575653598035969-o7Ouo4a4EKT1wwDgaukCPwgC1r4UGlX'
    access_token_secret = 'nufvvpVKMY0GEPKwY60xsbjqhtcS6vAwvG4THjFxPLej6'

    # Authorize me, captain
    auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
    auth.set_access_token(access_token, access_token_secret)
    api = tweepy.API(auth)

    # Get information on users that @weiglemc is following
    c = tweepy.Cursor(api.friends, screen_name = 'weiglemc', count = 200)
    n_following = 0
    f_counts = []

    # For each, get the number they follow, increment count
    for user in c.items():
        n_following += 1
        print("Retrieving #%d of those followed." % n_following)
        f_count = user.friends_count
        f_counts.append(f_count)

    # Print number of following, calculate mean, std dev, median
    f_counts = sorted(f_counts)
    N = len(f_counts)
    mean = sum(f_counts) / N
    dev = lambda x: (x - mean)**2
    var_num = sum(dev(f) for f in f_counts)
    std_dev = (var_num / N)**0.5
    median = f_counts[N//2]

    # Print the results
    print("The mean is %f." % mean)
    print("The std dev is %f." % std_dev)
    print("The median is %d." % median)

    # Add Dr. Weigle's following count to the list
    for i in range(N):
        if f_counts[i] >= N:
            print("Dr. Weigle is following %d users." % N)
            print("%d users followed have less users they follow." % i)
            f_counts.insert(i, N)
            break

    # Create new labels/log values for the chart
    f_labels = []
    f_logs = []
    user = True
    f_num = 1
    for f in f_counts:

        # Make it logarithmic (if not zero)
        f_logs.append(f if f == 0 else log(f, 2))

        # If it's the user, label U
        if f == N and user:
            f_labels.append('U')
            user = False
            continue

        # If not, label f and the index
        f_labels.append('f' + str(f_num))
        f_num += 1

    # Convert the list dictionary into DataFrame
    f_data = {'label': f_labels, 'followed_count': f_logs}
    df = pd.DataFrame(f_data)

    # Create bar chart with one red bar for the user, set labels
    clrs = ["steelblue" if x != 'U' else "red" for x in df['label']]
    f_bar = sns.catplot(x = "label", y = "followed_count",
            kind = "bar", data = df, palette = clrs)
    
    f_bar.set(title = "How Many Log2(Users) Do The Users Dr. Weigle Is Following Follow?",
            xlabel = "Followed User",
            ylabel = "Number of Users Followed (Log)")

    # Add comma separators for the number of y-axis
    ticks = f_bar.axes[0][0].get_yticks()
    labels = ['{:,.0f}'.format(x) for x in ticks]
    f_bar.set_yticklabels(labels)
    f_bar.set_xticklabels('' if x != 'U' else x for x in df['label'])

    # Save the chart as a PNG file
    f_bar.savefig("LogFollowingCount.png")

# Handle Tweepy exceptions
except tweepy.TweepError as e:
    print("TweepError: %s" % str(e.args[0][0]['message']))
