import pandas as pd

# Create an empty Excel file and open text files
csv = open('link-ranks.csv', 'a')
csv.close()
rankf = open('TF-IDFs.txt', 'r')
my_rankf = open('My-TF-IDFs.txt', 'r')

# Read text files, make lambda for getting value
ranks = rankf.readlines()
my_ranks = my_rankf.readlines()
get_int = lambda x: int(x.split()[-1])
get_flt = lambda x: float(x.split()[1])

# Form the dictionary list to save the information
rank_data = {
        'TF': [],
        'IDF': [],
        'TF-IDF': [],
        'PageRank': [],
        'My TF': [],
        'My IDF': [],
        'My TF-IDF': [],
        'Link': []}

# Parse file to get the information needed
for rank in ranks:
    rank = rank[:-1]
    if rank.startswith('Link'):
        link = rank.split()[-1]
        rank_data['Link'].append(link)
    elif rank.startswith('Total'):
        total = get_int(rank)
        rank_data['Total Words'].append(total)
    elif rank.startswith('Number'):
        finds = get_int(rank)
        rank_data['Occurrences'].append(finds)
    elif rank.startswith('TF:'):
        tf = get_flt(rank)
        rank_data['TF'].append(tf)
    elif rank.startswith('IDF:'):
        idf = get_flt(rank)
        rank_data['IDF'].append(idf)
    elif rank.startswith('TF-IDF:'):
        tf_idf = get_flt(rank)
        rank_data['TF-IDF'].append(tf_idf)
    elif rank.startswith('PR:'):
        pr = get_flt(rank)
        rank_data['PageRank'].append(pr)

for rank in my_ranks:
    rank = rank[:-1]
    if rank.startswith('TF:'):
        tf = get_flt(rank)
        rank_data['My TF'].append(tf)
    elif rank.startswith('IDF:'):
        idf = get_flt(rank)
        rank_data['My IDF'].append(idf)
    elif rank.startswith('TF-IDF:'):
        tf_idf = get_flt(rank)
        rank_data['My TF-IDF'].append(tf_idf)

# Save the data to the CSV
df = pd.DataFrame(rank_data)
df.to_csv('link-ranks.csv')
