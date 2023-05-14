# Initiate necessary variables
correlations = {}
ratings = {}
averages = {}

# Create simpler methods for inputting
def title(header):
    return "*** " + header.upper() + " ***\n"

def write(string, tabs = 0):
    in_file.write("\t" * tabs + string + "\n")

# Save the ratings data, sorted by each user
with open("u.data", "r") as data:
    for row in data:    
        row = row.split()

        user = row[0]
        item = row[1]
        rating = int(row[2])
   
        if user not in ratings:
            ratings[user] = {item: rating}
        else:
            ratings[user][item] = rating

# For each user saved, get their average rating
for user in ratings:
    n = 0
    total = 0
    r = ratings[user]

    for movie in r: 
        total += r[movie]
        n += 1
    
    averages[user] = total / n

# Select User 758 to be our substitute user
user1 = "758"
avg_1 = averages["758"]

# Get each user's correlation to us
for user2 in ratings:

    # Initiate values - mult of diffs, each sums of sqs
    mod = 0
    sos_1 = 0
    sos_2 = 0

    # Save the information in a simple variable
    r1 = ratings[user1]
    r2 = ratings[user2]
    avg_2 = averages[user2]

    # If a movie is in both the substitute and compared user
    for movie in r2:
        if movie in r1:

            # Get the rating's distance for the respective mean
            df_1 = r1[movie] - avg_1
            df_2 = r2[movie] - avg_2

            # Save the mult of diffs & sums of sqs
            mod += df_1 * df_2
            sos_1 += df_1 ** 2
            sos_2 += df_2 ** 2

    # Use the data to calculate the correlation of the user
    denom = (sos_1 ** 0.5) * (sos_2 ** 0.5)
    correlations[user2] = 0 if denom == 0 else mod / denom

# Open the input file
in_file = open("Q2-output.txt", "w")

# Create a method to access the top/bottom five (specified by param)
def get_first5(user1, correlations, most = True):
    
    # Get input file to write to
    global in_file

    # Initiate string and count variables, sort dictionary
    x = "most" if most else "least"
    y = 6 if most else 5
    correlations = sorted(correlations.items(),
            key = lambda x: x[1],
            reverse = most)
    
    # Write to file
    write(title("Top 5 %s correlated user to substitute user" % x))

    # Get top 6 (incl self) or bottom 5
    for i in range(y):
        corr = correlations[i][1]
        user = correlations[i][0]
   
        # Print information
        write("User %s - Correlation: %f" % (user, corr), 1)
        write("Number of ratings: %d" % len(ratings[user]), 1)
        rate_same = sum([1 for m in ratings[user] if m in ratings[user1]])
        write("Matching ratings: %d" % rate_same, 1)
        write("Average: %f" % averages[user], 1)
        write("")

# Use method to get top 5 and bottom 5
get_first5(user1, correlations)
get_first5(user1, correlations, False)

# Print the correlations - necessary for Question 3
write(title("Correlations of all users"))
write("User:    Correlation:", 1)
for user in correlations:
    write("%s   %s" % (user, correlations[user]), 1)

# Close the file
in_file.close()
