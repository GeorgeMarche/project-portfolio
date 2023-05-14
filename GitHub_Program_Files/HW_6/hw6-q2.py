# Import pandas
import pandas as pd

# Extract data from the 3 datasets, open output file
d1 = pd.read_csv('D1.csv')
d1 = set(d1.to_dict('list')['Domain'])
d1 = set([d.lower() for d in d1])

d2 = pd.read_csv('D2.csv')
d2 = set(d2.to_dict('list')['Domain'])

d3 = pd.read_csv('D3.csv')
d3 = set(d3.to_dict('list')['Domain'])
d3 = set([d.lower() for d in d3])

in_file = open("Q2-output.txt", "w")

# Initialize dataset for each intersection of datasets
d1n2 = {'Domain': list(d1.intersection(d2))}
d2n3 = {'Domain': list(d2.intersection(d3))}
d1n3 = {'Domain': list(d1.intersection(d3))}
d1n2n3 = {'Domain': list(d1.intersection(d2.intersection(d3)))}

# Print number of rows and each domain for each data set
data = {"D1 AND D2": d1n2, "D2 AND D3": d2n3,
        "D1 AND D3": d1n3, "ALL FILES": d1n2n3}
for name in data:
    domains = data[name]["Domain"]
    print("\n*** %s ***" % name, file = in_file)
    print("*****************\n", file = in_file)
    print("Total domains: %d" % len(domains), file = in_file)
    for domain in domains: 
        print("\t%s" % domain, file = in_file)
    
# Save the data sets into CSVs, close file
df1n2 = pd.DataFrame(d1n2)
df1n2.to_csv('D1-and-D2.csv')
df2n3 = pd.DataFrame(d2n3)
df2n3.to_csv('D2-and-D3.csv')
df1n3 = pd.DataFrame(d1n3)
df1n3.to_csv('D1-and-D3.csv')
df1n2n3 = pd.DataFrame(d1n2n3)
df1n2n3.to_csv('All-3.csv')
in_file.close()
