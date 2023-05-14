from math import log2
import re

pattern = r'://([a-zA-Z0-9\-]+\.[a-zA-Z0-9\-]+\.?[a-zA-Z0-9\.]*)'
linkf = open('targetURLs.txt', 'r')
rankf = open('TF-IDFs.txt', 'r')
q4f = open('hw3-q4.txt', 'a')
add = lambda x: q4f.write(x + '\n')
links = linkf.readlines()
ranks = rankf.readlines()

TF = []
TF_IDF = []
query = 'Trump'
corpus = 1000
results = 0

add('\\\\\\\\\\\\\\\\TD-IDF LOG (MY COLLECTION)////////////////')
add('CORPUS OF MY COLLECTION: %d' % corpus)
for i in range(1000):
    
    link = links[i][:-1]
    match = re.findall(pattern, link)[0]

    count = str(i)
    dashes = '-' * (5 - len(count))
    file_name = 'clean/' + count + dashes + match
    
    link_file = open(file_name, 'r')
    text = link_file.read()
    if query in text:
        results += 1

add('NUMBER OF RESULTS FOR "%s": %d' % (query.upper(), results))
add('------------------------------------------\n\n')
IDF = log2(corpus/results)

for rank in ranks:
    rank = rank[:-1]
    if rank.startswith('TF-IDF/PR'):
        add(rank)
    elif rank.startswith('Link'):
        add(rank)
    elif rank.startswith('Total'):
        add(rank)
    elif rank.startswith('Number'):
        add(rank)
    elif rank.startswith('TF:'):
        TF.append(float(rank.split()[1]))
        add('TF:        %f' % TF[-1])
    elif rank.startswith('IDF:'):
        add('IDF:       %f' % IDF)    
        TF_IDF.append(TF[-1] * IDF)
    elif rank.startswith('TF-IDF:'):
        add('TF-IDF:    %f' % TF_IDF[-1])
        add('')

rankf.close()
linkf.close()
q4f.close()


