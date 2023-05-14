# Dictinaries for user correlation, ratings per movie,
# total similarity, and the weighted averages
corrs = {}
num_rtgs = {}
tot_sim = {}
wtd_avgs = {}

# Open the input file, create marker to start saving correlation values
# Save the substitute user and initiate a set of already seen movies
in_file = open("Q3-output.txt", "w")
save = False
user1 = "758"
seen = set()

# Open the previous input file and get the correlation data
with open("Q2-output.txt", "r") as Q2:
    for line in Q2:
        line = line.split()
        
        if save:
            user = line[0]
            corr = float(line[1])
            corrs[user] = corr
        
        if line != [] and line[0] == "User:":
            save = True

# Create simpler inputting methods
def title(string):
    return "*** " + string.upper() + " ***\n"

def write(string, t = 0, n = 1):
    global in_file
    in_file.write("\t" * t + string + n * "\n")

# Get the ratings data
with open("u.data", "r") as u_data:
    ratings = u_data.readlines()
    
    # Find the movies seen by my substitute user
    for rtg in ratings:
        rtg = rtg.split()
        if rtg[0] == user1:
            seen.add(rtg[1])

    # Get each rating and save the values
    for rtg in ratings:
        rtg = rtg.split()
        usr = rtg[0]
        mv = rtg[1]
        rtg = int(rtg[2])
        corr = corrs[usr]

        # If the substitute user didn't see the movie and the user who
        # rated it has a positive correlation
        if mv not in seen and corr > 0:
            # Add rating adjusted for correlation into weighted average
            # and correlation into total similarity, increment rtg count
            if mv not in wtd_avgs:
                wtd_avgs[mv] = corr * rtg
                tot_sim[mv] = corr
                num_rtgs[mv] = 1
            else:
                wtd_avgs[mv] += corr * rtg
                tot_sim[mv] += corr
                num_rtgs[mv] += 1

# Print the top or bottom most recommended movies
def get_first5(wtd_avgs, most = True):
    
    # Get input file, string addition, and sort dictionary
    global in_file
    x = "most" if most else "least"
    wtd_avgs = sorted(wtd_avgs.items(),
            key = lambda x: x[1],
            reverse = most)

    # Stop iteration at 5 movies
    write(title("The 5 %s recommended movies" % x))
    count = 5
    
    for wtd_avg in wtd_avgs:
        
        # Make sure it gets at least 5 ratings
        mv = wtd_avg[0]
        if num_rtgs[mv] < 5:
            continue

        # Print the movie name and weighted score
        wtd_avg = wtd_avg[1]
        write("Movie %s - Weighted Score: %f" % (mv, wtd_avg), 1)
        with open("u.item", "r") as u_item:
            lines = u_item.readlines()
            write(lines[int(mv) - 1].split("|")[1], 2)

        count -= 1
        if count == 0:
            break
    write("")

# Calculate the weighted average after dividing the total similarity
for mv in wtd_avgs:
    wtd_avgs[mv] /= tot_sim[mv]

# Call the methods, close the file
get_first5(wtd_avgs)
get_first5(wtd_avgs, False)
in_file.close()
