import seaborn as sns
import pandas as pd
from datetime import date
from matplotlib import pyplot as plt

# Make the grid white. Get data from the CSV into a dictionary of lists. Create 'Days_Ago' column
sns.set_style("whitegrid")
archive = pd.read_csv('TimeMap_data.csv')
TM_data = archive.to_dict('list')
TM_data["Days_Ago"] = []

# Find # of days since first memento datetime. Add to the new data column
today = date.today()
for dt in TM_data["Init_Date"]:
    if type(dt) == str:
        yr = int(dt[:4])
        mo = int(dt[5:7])
        dy = int(dt[8:10])
        init_date = date(yr, mo, dy)
        days_ago = (today - init_date).days
        TM_data["Days_Ago"].append(days_ago)
    else:
        TM_data["Days_Ago"].append(0)

# Adjust the CSV file accordingly
del TM_data["Unnamed: 0"]
del TM_data["Init_Date"]    
archive = pd.DataFrame(TM_data)
archive.to_csv('TimeMap_data.csv')

# Create 4 histograms: split into with and without links with no mementos,
# further split into with 100 bins or with automatic number of bins
plot = lambda x, y, z: sns.displot(data = x, color = y, bins = z)
axis = lambda x: x.set_axis_labels('Number of Mementos', 'Frequency of Occurence')
titles = lambda x: x.set_titles('How Often Does The Number of Mementos Occur?')
save = lambda x, y: x.savefig(y + ".png")

histos = []
histos.append(plot(archive['Mementos'], 'red', 'auto'))
histos.append(plot(archive['Mementos'], 'red', 100))
histos.append(plot(archive['Mementos'][archive['Mementos'] != 0], 'black', 'auto'))
histos.append(plot(archive['Mementos'][archive['Mementos'] != 0], 'black', 100))

count = 1
for hist in histos:
    axis(hist)
    titles(hist)
    save(hist, "histogram" + str(count))
    count += 1

# How many have no mementos? 
noHistCheck = archive.apply(lambda x: True if x['Mementos'] == 0 else False, axis = 1)
numLinks = len(noHistCheck[noHistCheck == True].index)
print("Number of links with no mementos: %d" % numLinks)

# Create scatterplot for data with at least one memento; there's also a log(y) version
age_and_mems = sns.scatterplot(
        x = "Days_Ago",
        y = "Mementos", 
        data = archive[archive["Mementos"] != 0])
# Log(y) version
age_and_mems.set_yscale('log')

# Set some limits, add some labels, and add the title
age_and_mems.set_xlim(0, max(archive["Days_Ago"]) + 100)
age_and_mems.set_xlabel('Age of Earliest Memento in Days')
age_and_mems.set_ylabel('Number of Mementos')
age_and_mems.set_title('Relationship Between Age and Number of Mementos')

# Add commas to the numbers to make them nice and neat, and save it as an image
age_and_mems.set_xticks(age_and_mems.get_xticks()[::2])
age_and_mems.set_yticks(age_and_mems.get_yticks()[::2])
xticks = age_and_mems.get_xticks()
yticks = age_and_mems.get_yticks()
xlabels = ['{:,.0f}'.format(x) for x in xticks]
ylabels = ['{:,.0f}'.format(y) for y in yticks]
age_and_mems.set_xticklabels(xlabels)
age_and_mems.set_yticklabels(ylabels)
plt.savefig("scatterplot.png")
