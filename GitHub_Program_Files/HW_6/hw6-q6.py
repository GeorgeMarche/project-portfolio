# Import JSON library
import json
from nltk.corpus import stopwords

# Create input file, load JSON data
in_file = open("Q6-output.txt", "w")
with open("tweet_data.json") as json_file:
    tweet_data = json.load(json_file)

# Initiate term & tweet count dictionaries, RT counter
term_cnt = {}
RTs = 0
tweet_cnt = {}

# Iterate each tweet
for tweet in tweet_data:

    # If it's a retweet, increment
    text = tweet["Tweet Text"]
    if text.startswith("RT"):
        RTs += 1
        text = text[3:]
    
    # Increment or add new tweet count
    if text not in tweet_cnt:
        tweet_cnt[text] = 1
    else:
        tweet_cnt[text] += 1

    # Add in the number of words in text to dictionary
    stop_words = set(stopwords.words('english'))
    more = ['going', 'says', 'new', 'call', 'amid', 'via', 'return']
    stop_words.update(more)
    text = text.lower()
    words = [w for w in text.split() if w not in stop_words]
    for word in words:
        if word[0] == '#':
            word = word[1:]
        
        if (word == 'rt' and words.count('rt') == 1) or \
                any([ord(char) >= 256 for char in word]) or \
                word[0] == '@' or '/' in word:
                    continue
 
        if word not in term_cnt:
            term_cnt[word] = 1
        else:
            term_cnt[word] += 1

# Sort the tweet & term dictionary based on occurrences
rank_terms = sorted(term_cnt.items(),
        key = lambda x: x[1],
        reverse = True)
rank_tweets = sorted(tweet_cnt.items(),
        key = lambda x: x[1],
        reverse = True)

# Print the number of retweets and 30 most common words
print("Number of retweets: %d\n" % RTs, file = in_file)
print("** TOP 30 TERMS **", file = in_file)

# Iterate 30 times
iters = 1
for term in rank_terms:
    
    # Print the most common terms
    print("\t%d. '%s' -- %d occurrences" % (iters, term[0], term[1]), file = in_file)
    
    # Count the number of tweets with that word in it
    count = 0
    for tweet in tweet_data:
        text = tweet["Tweet Text"]
        if term[0] in text:
            count += 1

    # Print the count
    print("\t\t%d tweets have the word '%s' in the text." % (count, term[0]), file = in_file)

    # Stop at 30 iterations
    iters += 1
    if iters > 30:
        iters = 1
        break

# Get the 10 most repeated tweets
print("\n** TOP 10 REPEATED TWEETS **", file = in_file)
iters = 1
for tweet in rank_tweets:

    # Print the tweet and number of occurrences
    text = str(tweet[0].encode('latin-1', 'ignore'))
    print("\t%d. '%s' -- %d occurrences" % (iters, text, tweet[1]), file = in_file)

    iters += 1
    if iters > 10:
        break

# Get the 10 most repeated tweets NOT from PressTV
print("\n** TOP 10 REPEATED TWEETS OMITTING PRESSTV **", file = in_file)
iters = 1
for tweet in rank_tweets:

    # If tweet refers to PressTV, continue
    text = str(tweet[0].encode('latin-1', 'ignore'))
    if '@PressTV' in tweet[0]:
        continue

    # Print the text and number of occurrences
    print("\t%d. '%s' -- %d occurrences" % (iters, text, tweet[1]), file = in_file)

    iters += 1
    if iters > 10:
        break

in_file.close()
