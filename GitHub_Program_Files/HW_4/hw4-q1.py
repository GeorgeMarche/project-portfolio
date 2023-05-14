import seaborn as sns
import pandas as pd

# CSV to DataFrame to List Dictionary, sort the Count
df = pd.read_csv("HW4-friend-count.csv");
friends = df.to_dict('list');
f_counts = sorted(friends[' FRIENDCOUNT'])

# Calculate the mean, standard deviation, and median
N = len(f_counts)
mean = sum(f_counts) / N
dev = lambda x: (x - mean)**2
var_num = sum(dev(f) for f in f_counts)
std_dev = (var_num / N)**0.5
median = f_counts[N//2]

# Print out the results
print("The mean is %f." % mean)
print("The std dev is %f."% std_dev)
print("The median is %d." % median)

# Add the User data into the list
for i in range(N):
    if f_counts[i] >= N:
        print("The user has %d friends." % N)
        print("Only %d friends have less." % i)
        f_counts.insert(i, N)
        break

# Create new labels to use for the chart
f_labels = []
user = True
f_num = 1
for f in f_counts:
    
    # If it's the user, label U
    if f == N and user:
        f_labels.append('U')
        user = False
        continue
   
    # If not, label f and the index
    f_labels.append('f' + str(f_num))
    f_num += 1

# Convert the list dictionary into DataFrame
f_data = {'label': f_labels, 'friend_count': f_counts}
df = pd.DataFrame(f_data)

# Create bar chart with one red bar for the user, set labels
clrs = ["steelblue" if x != 'U' else "red" for x in df['label']]
f_bar = sns.catplot(x = "label", y = "friend_count",
        kind = "bar", data = df, palette = clrs)
f_bar.set(title = "How Many Friends Do My Friends Have?",
        xlabel = "Friend/User",
        ylabel = "Number of Friends")

# Add comma separators for the numbers on y-axis
ticks = f_bar.axes[0][0].get_yticks()
labels = ['{:,.0f}'.format(x) for x in ticks]
f_bar.set_yticklabels(labels)
f_bar.set_xticklabels('' if x != 'U' else x for x in df['label'])

# Save the chart as a PNG file
f_bar.savefig("FriendCount.png")
