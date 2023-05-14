import pandas as pd
import numpy as np
import nltk

import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib.gridspec as gridspec

from heapq import nlargest

df = pd.read_csv("tweet_data.csv")
words = pd.read_csv("words.csv")

size_cols = []
num_cols = []

num_cols = [col for col in df.columns if col.endswith("s")]
size_cols = [col for col in df.columns if col.endswith("Letter")]
pol_cols = ['Negative', 'Neutral', 'Positive', 'Compound']
pos_cols = [col for col in df.columns if len(col) < 5]
pos_cols.sort()

size_cols = list(map(
    lambda s: [int(s.split("-")[0]), s.split("-")[1]], size_cols))
size_cols = list(map(
    lambda s: "-".join([str(s[0]), s[1]]), sorted(size_cols)))

fig1, ax1 = plt.subplots(figsize=(12, 5))
corr1 = pd.concat([df[num_cols], df[size_cols]],
                        axis=1,
                        keys=['num', 'size']
                        ).corr().loc['num', 'size']

an = corr1.round(2).astype(str)
an[abs(corr1) < 0.05] = ''

sns.heatmap(corr1, annot=an, fmt='s', ax=ax1)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/size_vs_num.png")

fig2, ax2 = plt.subplots(figsize=(22, 12))
corr2 = pd.concat([df[size_cols], df[pos_cols]],
                        axis=1,
                        keys=['size', 'pos']
                        ).corr().loc['size', 'pos']

an = corr2.round(2).astype(str)
an[abs(corr2) < 0.05] = ''

sns.heatmap(corr2, annot=an, fmt='s', ax=ax2)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/pos_vs_size.png")

fig3, ax3 = plt.subplots(figsize=(20, 4))
corr3 = pd.concat([df[num_cols], df[pos_cols]],
                        axis=1,
                        keys=['num', 'pos']
                        ).corr().loc['num', 'pos']

an = corr3.round(2).astype(str)
an[abs(corr3) < 0.05] = ''

sns.heatmap(corr3, annot=an, fmt='s', ax=ax3)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/num_vs_pos.png")

fig4, ax4 = plt.subplots(figsize=(6, 12))
corr4 = df[num_cols + ['Keyword']].groupby('Keyword').agg('mean')

an = corr4.round(2).astype(str)
an[abs(corr4) < 0.8] = ''

sns.heatmap(corr4, annot=an, fmt='s', ax=ax4)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/num_avg.png")

fig5, ax5 = plt.subplots(figsize=(12, 8))
corr5 = df[size_cols + ['Keyword']].groupby('Keyword').agg('mean')

an = corr5.round(2).astype(str)
an[abs(corr5) < 0.8] = ''

sns.heatmap(corr5, annot=an, fmt='s', ax=ax5)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/size_avg.png")

fig6, ax6 = plt.subplots(figsize=(20, 10))
corr6 = df[pos_cols + ['Keyword']].groupby('Keyword').agg('mean')

an = corr6.round(2).astype(str)
an[abs(corr6) < 0.8] = ''

sns.heatmap(corr6, annot=an, fmt='s', ax=ax6)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/pos_avg.png")

fig7, ax7 = plt.subplots(figsize=(5, 6))
corr7 = pd.concat([df[num_cols], df[pol_cols]],
                        axis=1,
                        keys=['num', 'pol']
                        ).corr().loc['num', 'pol']

an = corr7.round(2).astype(str)
an[abs(corr7) < 0.05] = ''

sns.heatmap(corr7, annot=an, fmt='s', ax=ax7)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/num_vs_pol.png")

fig8, ax8 = plt.subplots(figsize=(5, 12))
corr8 = pd.concat([df[size_cols], df[pol_cols]],
                        axis=1,
                        keys=['size', 'pol']
                        ).corr().loc['size', 'pol']

an = corr8.round(2).astype(str)
an[abs(corr8) < 0.05] = ''

sns.heatmap(corr8, annot=an, fmt='s', ax=ax8)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/pol_vs_size.png")

fig9, ax9 = plt.subplots(figsize=(22, 4))
corr9 = pd.concat([df[pol_cols], df[pos_cols]],
                        axis=1,
                        keys=['pol', 'pos']
                        ).corr().loc['pol', 'pos']

an = corr9.round(2).astype(str)
an[abs(corr9) < 0.05] = ''

sns.heatmap(corr9, annot=an, fmt='s', ax=ax9)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/pol_vs_pos.png")

fig10, ax10 = plt.subplots(figsize=(5, 10))
corr10 = df[pol_cols + ['Keyword']].groupby('Keyword').agg('mean')

an = corr10.round(2).astype(str)
an[abs(corr10) < 0.05] = ''

sns.heatmap(corr10, annot=an, fmt='s', ax=ax10)
plt.xticks(rotation=45)
plt.yticks(rotation=45)
plt.savefig("DataVis/pol_avg.png")

keywords = list(words['Keyword'].unique())
top_words = dict.fromkeys(keywords)

for idx, row in words.iterrows():
    
    row_dict = dict(row)
    keyword = row_dict.pop('Keyword')
    
    top_3 = nlargest(3, row_dict, key=row_dict.get)
    top_words[keyword] = {word: row_dict[word] for word in top_3}

for keyword in top_words:
    
    print(keyword + ": " + str(top_words[keyword]))

parts = ['size', 'num', 'pos']
matrices = {'pos': dict.fromkeys(parts, 0),
            'neg': dict.fromkeys(parts, 0)}

for idx, row in df.iterrows():

    keyword_ind = keywords.index(row['Keyword'])
    pol = 'pos' if row['Compound'] > 0 else 'neg'

    for part in parts:

        cols = size_cols
        
        if part == 'num':
            cols = num_cols
            
        elif part == 'pos':
            cols = pos_cols

        if type(matrices[pol][part]) == int:
            matrices[pol][part] = np.zeros((len(keywords), len(cols)))
                
        for col in cols:
            
            col_adj = abs(row['Compound']) * row[col]
            col_ind = cols.index(col)
            matrices[pol][part][keyword_ind][col_ind] += col_adj
                
for pol in matrices:

    sign = 'Positive' if pol == 'pos' else 'Negative'
    for part in parts:
        
        cols = size_cols
        
        if part == 'num':
            cols = num_cols
            
        elif part == 'pos':
            cols = pos_cols
            
        for i in range(len(keywords)):

            count = len(df[(df['Keyword'] == keywords[i]) &
                           (df[sign] > 0)])

            for j in range(len(matrices[pol][part][i])):

                val = matrices[pol][part][i][j] / count
                matrices[pol][part][i][j] = round(val, 2)
                                           
        fig, ax = plt.subplots(figsize=(13, 7))
        matrix = pd.DataFrame(matrices[pol][part],
                              columns=cols,
                              index=keywords)
                                           
        an = matrix.astype(str)
        an[matrix < 0.4] = ''

        sns.heatmap(matrix, annot=an, fmt='s', ax=ax)
        plt.xticks(rotation=45)
        plt.yticks(rotation=45)
        plt.savefig("DataVis/style_" + pol + "_" + part + ".png")
    


