# Import necessary library
from random import random as rand

# readfile - returns users and the data when given filename
def readfile(filename):
    with open(filename) as mtrx:
        users = []
        data = []
        num_rows = 0

        # For every row other than the 1st, append user & data
        for row in mtrx:
            row = row.split()
            if num_rows > 0:
                users.append(row[0])
                data.append([float(c) for c in row[1:]])
            num_rows += 1

    # Return the lists
    return (users, data)

# Pearson - returns Pearson distance of two vectors
def pearson(v1, v2):

    # Get average, initiate sum variables
    avg1 = sum(v1)/len(v1)
    avg2 = sum(v2)/len(v2)
    sumProd = 0
    sumSq1 = 0
    sumSq2 = 0

    # For each item in vectors, add to sum of product & squares
    for i in range(len(v1)):
        v1[i] = v1[i] - avg1
        v2[i] = v2[i] - avg2
        sumProd += v1[i] * v2[i]
        sumSq1 += v1[i]**2
        sumSq2 += v2[i]**2

    # Return the Pearson distance
    return(sumProd / (sumSq1**0.5 * sumSq2**0.5))

# kcluster - return 
def kcluster(rows, filename, k = 4, distance = pearson):

    # These are ranges in which each item count is in
    ranges = [(min([row[i] for row in rows]), max([row[i] for row in rows]))
                for i in range(len(rows[0]))]

    # Place the centroids in a random spot across these ranges
    clusters = [[rand() * (ranges[i][1] - ranges[i][0]) + ranges[i][0]
                for i in range(len(rows[0]))] for j in range(k)]

    # While loop that breaks when best_matches equals last_matches
    # or prev_last_matches (if it alternates between 2 results)
    last_matches = None
    prev_last_matches = None
    for i in range(200):
        print("k = %d - Iteration #%d" % (k, i + 1))
        best_matches = [[] for i in range(k)]

        # For each row in data (user)
        for j in range(len(rows)):
            row = rows[j]
            best_match = 0

            # Iterate through centroids to find closest one
            for i in range(k):
                d = distance(clusters[i], row)
                if d < distance(clusters[best_match], row):
                    best_match = i

            # Add best match to best match list
            best_matches[best_match].append(j)

        # If the best matches haven't changed, finish iterating
        if best_matches == last_matches or \
                best_matches == prev_last_matches:
            break
        prev_last_matches = last_matches
        last_matches = best_matches

        # For each centroid, find average value across cluster
        for i in range(k):
            avgs = [0.0] * len(rows[0])

            # Check if centroid cluster isn't empty
            if len(best_matches[i]) > 0:

                # Add each row's item into respective average
                for rowID in best_matches[i]:
                    for m in range(len(rows[rowID])):
                        avgs[m] += rows[rowID][m]

                # Calculate averages and set new centroid position
                for j in range(len(avgs)):
                    avgs[j] /= len(best_matches[i])
                clusters[i] = avgs

    # Return best matches
    return best_matches

# Extract information
users, data = readfile("matrix.txt")

# For each k number of clusters, create a file & open it
for k in [5, 10, 20]:
    filename = "kmeans-" + str(k) + ".txt"
    with open(filename, "w") as kmeans:

        # Get the k-Means cluster
        clusters = kcluster(data, kmeans, k)
        write = lambda x: kmeans.write(x + "\n")
        title = lambda x: write("*** " + x + " ***\n")
        
        # Write each user in the cluster along with a header
        for i in range(k):
            title("Cluster #%d" % (i + 1))
            for i in clusters[i]:
                write(users[i])
            write('')
            
        
