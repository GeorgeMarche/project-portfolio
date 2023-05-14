import pandas as pd
import emoji
import nltk

from nltk.corpus import stopwords
from nltk.sentiment.vader import SentimentIntensityAnalyzer as SIA

data = {'Keyword': [],
        'Emojis': [],
        'Punctuations': [],
        'Capitals': [],
        'Hashtags': [],
        'Numbers': [],
        'Percents': [],
        'Negative': [],
        'Neutral': [],
        'Positive': [],
        'Compound': []}

df = pd.read_csv("raw_tweets.csv")
print(len(df))

keywords = list(df['Keyword'].unique())
results = {k: {} for k in list(keywords)}
keyword_words = {}

stop_words = set(stopwords.words('english'))

for ids, row in df.iterrows():
    
    tweet = row['Tweet']
    keyword = row['Keyword']
    
    pol_score = SIA().polarity_scores(tweet)
    
    for key in pol_score:
        
        if key not in results[keyword]:
            results[keyword][key] = pol_score[key]
            
        else:
            results[keyword][key] += pol_score[key]


    tokens = nltk.word_tokenize(tweet)

    num_emojis = 0
    num_puncs = 0
    num_wrdsz = {}
    num_caps = 0
    num_hash = 0
    num_nums = 0
    num_POS = {}
    num_pct = 0

    ind = 0
    
    while(ind < len(tokens)):

        token = tokens[ind]
        words = {}

        if token == "@":
            tokens.remove(tokens[ind + 1])
            tokens.remove(token)
            continue
        
        for char in token:

            if char in emoji.UNICODE_EMOJI["en"]:
                num_emojis += 1

            elif char in [".", ",", "!", "?",
                          "-", ":", ";", "(",
                          ")", "\"", "'"]:
                num_puncs += 1

            elif char.isupper():
                num_caps += 1

        if token == "#":
            tokens.remove(tokens[ind + 1])
            tokens.remove(token)
            num_hash += 1
            continue

        if token == "%":
            tokens.remove(token)
            num_pct += 1
            continue

        if token.isnumeric():
            num_nums += 1

        size = len(token)
        if token.isalpha():
            
            if size not in num_wrdsz:
                num_wrdsz[str(size) + "-Letter"] = 1
                
            else:
                num_wrdsz[str(size) + "-Letter"] += 1

            if token not in stop_words and \
               token != keyword:
                
                if token not in words:
                    words[token] = 1
                    
                else:
                    words[token] += 1
                
        ind += 1

    try:
        tagged = nltk.pos_tag(tokens)

        for tag in tagged:

            if tag[1] in ["$", "''"]:
                continue
                
            if tag[0].isalnum():
                
                if tag[1] not in num_POS:
                    num_POS[tag[1]] = 1
                    
                else:
                    num_POS[tag[1]] += 1
                
    except Exception as e:
        print(str(e))

    data['Keyword'].append(keyword)
    data['Emojis'].append(num_emojis)
    data['Punctuations'].append(num_puncs)
    data['Capitals'].append(num_caps)
    data['Hashtags'].append(num_hash)
    data['Numbers'].append(num_nums)
    data['Percents'].append(num_pct)
    
    data['Negative'].append(round(pol_score['neg'], 3))
    data['Neutral'].append(round(pol_score['neu'], 3))
    data['Positive'].append(round(pol_score['pos'], 3))
    data['Compound'].append(round(pol_score['compound'], 3))

    for sz in num_wrdsz:

        if sz not in data:
            data[sz] = [0] * (len(data["Emojis"]) - 1) + [num_wrdsz[sz]]
            
        else:
            data[sz].append(num_wrdsz[sz])

    for pos in num_POS:

        if pos not in data:
            data[pos] = [0] * (len(data["Emojis"]) - 1) + [num_POS[pos]]

        else:
            data[pos].append(num_POS[pos])

    for key in data:

        if len(data[key]) != len(data['Emojis']):
            data[key].append(0)

    for word in words:
        
        ind = keywords.index(keyword)
        
        if word not in keyword_words:
            keyword_words[word] = [0] * len(keywords)
            
        keyword_words[word][ind] += 1
    
del_list = []
for word in keyword_words:

    if 3 not in keyword_words[word] and \
       sum(keyword_words[word]) < 3:
        del_list.append(word)

for word in del_list:
    
    keyword_words.pop(word)
    
keyword_words['Keyword'] = keywords

for keyword in results:

    normalizer = sum(results[keyword].values())
    for key in results[keyword]:
        
        if key != 'compound':
            results[keyword][key] /= normalizer
            
        results[keyword][key] = round(results[keyword][key], 3)

pol_data = {'Keyword': [k for k in results],
            'neg': [results[k]['neg'] for k in results],
            'neu': [results[k]['neu'] for k in results],
            'pos': [results[k]['pos'] for k in results],
            'compound': [results[k]['compound'] for k in results]}
    
pol_data = pd.DataFrame(pol_data)
pol_data.to_csv("polarity.csv", index=False)

data = pd.DataFrame(data)
data.to_csv("tweet_data.csv", index=False)

keyword_words = pd.DataFrame(keyword_words)
keyword_words.to_csv("words.csv", index=False)
    
