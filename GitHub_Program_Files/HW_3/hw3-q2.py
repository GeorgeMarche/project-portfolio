from math import log2
import requests
import re

# Regex hostname pattern, open the URL list and create file for TF-IDFs
pattern = r'://([a-zA-Z0-9\-]+\.[a-zA-Z0-9\-]+\.?[a-zA-Z0-9\.]*)'
linkf = open('targetURLs.txt', 'r')
rankf = open('TF-IDF.txt', 'a+')

# Create a lambda for convenience for TF-IDF writing, read URL file
add = lambda x: rankf.write(x + '\n')
links = linkf.readlines()

# Initiate lists for TF, PageRank, TF-IDF, word count, query count, etc.
TF = []
PR = []
TF_IDF = []
query_words = []
total_words = []
query = 'Trump'

# Calculate the IDF
corpus = 5.5E10
results = 1.55E9
IDF = log2(corpus/results)

# Fancy title, write into file the corpus and number of search results
add('\\\\\\\\\\\\\\\\TD-IDF LOG////////////////')
add('CORPUS OF GOOGLE: %d' % corpus)
add('NUMBER OF RESULTS FOR "%s": %d' % (query.upper(), results))
add('------------------------------------------\n\n')

# Loop through 1,000 URLs
for i in range(1000):
    
    # Remove newlines, find hostname
    link = links[i][:-1]
    match = re.findall(pattern, link)[0]

    # Re-establish filename to retrieve it from clean/ directory
    count = str(i)
    dashes = '-' * (5 - len(count))
    file_name = 'clean/' + count + dashes + match
    with open(file_name) as file:

        # Initiate counts for words in the text
        query_words.append(0)
        total_words.append(0)
        
        # for every line, split it into words, enter total
        for line in file:
            line = line.split()
            total_words[i] += len(line)
            
            # If the word contains the query, enter it in
            for word in line:
                query_words[i] += word.count(query)
    
    # 18 occurreences is the magic number to seek 10 unique links
    if query_words[i] >= 18 and len(TF_IDF) < 10:

        # Write to the file for each link in question
        add('TF-IDF/PR #%d' % (len(TF_IDF) + 1))
        add('Link #%d: %s' % (i, link))
        add('Total number of words in document: %d' % total_words[i])
        add('Number of occurences of "%s": %d' % (query, query_words[i]))
        
        # Calculate TF and TF-IDF
        TF.append(query_words[i]/total_words[i])
        add('TF:      %f' % TF[-1])
        add('IDF:     %f' % IDF)
        TF_IDF.append(TF[-1] * IDF)
        add('TF-IDF:  %f' % TF_IDF[-1])

        # Prompt the user to enter in the PageRank
        PR.append(float(input("What is the PageRank for \n%s? " % link))) 
        add('PR:      %.1f' % PR[-1])
        add('')

# Close those files
rankf.close()
linkf.close()


