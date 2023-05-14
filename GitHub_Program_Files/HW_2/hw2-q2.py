from subprocess import check_output
import json
import pandas as pd

# Get a list of links from file and initialize a dictionary of lists to store CSV data
link_file = open("targetURLs.txt", 'r')
links = link_file.readlines()
TM_data = {'Current_URL': [], 'Mementos': [], 'Init_Date': []}

# Create a while loop that will stop when all links have been traversed through
count = 0
while(count != len(links) - 1):
    
    # Get data from CSV into a DataFrame; turn DataFrame into a dictionary of lists, and pick up where we left off
    df = pd.read_csv("TimeMap_data.csv")
    TM_data = df.to_dict('list')
    TM_data.pop('Unnamed: 0')
    count = len(TM_data['Current_URL'])

    # Enter a command line argument to use MemGator for the next lnik
    args = "./MemGator -T 120s -f JSON "
    link = links[count][:-1]
    cmd = (args + link).split()
    print("Currently getting TimeMap for Link #%d..." % (count + 1))
    
    # Get the output, parse JSON, and add information into the dictionary lists. If there's no mementos, provide entry
    output = check_output(cmd, universal_newlines = True)
    TM_data['Current_URL'].append(link)
    if output:
        j = json.loads(output)
        mems = j['mementos']
        TM_data['Mementos'].append(len(mems['list']))
        TM_data['Init_Date'].append(mems['first']['datetime'])
    else:
        TM_data['Mementos'].append(0)
        TM_data['Init_Date'].append('N/A')
    
    # Prevent duplicates
    if(count > 1):
        ind = count - 1
        if(TM_data['Current_URL'][ind] == TM_data['Current_URL'][ind - 1]):
            for key in TM_data.keys():
                TM_data[key].pop(ind)

    # Save information into the CSV
    df = pd.DataFrame(TM_data)
    df.to_csv('TimeMap_data.csv')
    print("Saved Data For Link #%d in CSV file!" % (count + 1))

# If we had to use all the links, this would have printed out... it's honeslty unnecessary!
print("*** TRANSFER COMPLETE... FINALLY!***")
