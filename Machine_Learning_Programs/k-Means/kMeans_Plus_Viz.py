from random import uniform
import matplotlib.pyplot as plt

# this will be populated with feature data
points = []

# Return desired amount of clusters [k] as
# Random float x-y values in range [x0 to xn] & [y0 to yn], respectively
def init_centroids(k = 3, x0 = -0.3, xn = 1.8, y0 = 0, yn = 2.4):
  return [[uniform(x0, xn), uniform(y0, yn)] for _ in range(k)]

# Open A.txt, make list of each line, split and turn into list of floats
with open("A.txt", "r") as a_txt:

    i = 0
    for line in a_txt:

        i += 1
        try:
            points.append([float(num) for num in line.rstrip().split()])
            
        except:
            print("Main: word in line #" + i + "is not a float")

# Lambda fns for square of difference, Euclidean distance, & new centroid
SqDiff = lambda a, b, i: (a[i] - b[i]) ** 2
euclidean = lambda a, b: (SqDiff(a, b, 0) + SqDiff(a, b, 1)) ** 0.5
new_coord = lambda C, i: sum([pt[i] for pt in C]) / len(C)

# kMeans function returns the centroids & points assigned to it
def kMeans(k = 3, iters = 40):

    # Initialize random centroids & iteration list
    centroids = init_centroids(k)
    iter_data = []

    # Run each iteration, starting with 'empty' clusters
    for i in range(iters):

        # For each of the points in the data
        clusters = [[] for _ in centroids]
        for point in points:

            # Get Euclidean distance from point to each centroid
            dists = [euclidean(point, cntrd) for cntrd in centroids]

            # Assign to centroid of least distance
            assigned = dists.index(min(dists))
            clusters[assigned].append(point)

        # For each of the centroids
        for j in range(len(centroids)):

            # Try to get average of points assigned to each cluster
            try: 
                centroids[j] = [new_coord(clusters[j], 0), 
                                new_coord(clusters[j], 1)]

            except:
                continue
            
        # Add the new centroids & assigned points as a new iteration
        iter_data += [{"iteration": i + 1,
                      "centroids": centroids,
                      "clusters": clusters}]
        
    # Return centroid & assigned points for each iteration
    return iter_data

# Calculate the sum of squared errors
def SSE(data):

    # For each of the clusters in the data
    SSE = 0
    for i in range(len(data["clusters"])):

        # For each point in the cluster, find & add SSE of distance
        for point in data["clusters"][i]:

            SSE += euclidean(data["centroids"][i], point) ** 2

    # Return the total SSE
    return SSE





# ---------
# Problem 1
# ---------

# Run algorithm with K = 3 (40 iterations), 100 times (find min SSE)
min_SSE = -1
k3_clusters = None
iter_SSE = [0] * 40
for _ in range(100):

    # If final SSE is smaller than current min, replace min & iter list
    k3_i40 = kMeans()
    if SSE(k3_i40[-1]) < min_SSE or min_SSE == -1:
        
        min_SSE = SSE(k3_i40[-1])
        k3_clusters = k3_i40[-1]
        for i in range(len(k3_i40)):

            iter_SSE[i] = SSE(k3_i40[i])

# Get x & y values
x = [i["iteration"] for i in k3_i40]
y = iter_SSE

# Plot the SSE for each iteration & save the figure
print(iter_SSE)
plt.plot(x, y, ls = '-', marker = '.')
plt.savefig("K=3,_100_times.png")





# ---------
# Problem 2
# ---------

# For each of the number of clusters (K = 2 through K = 10)
SSE_by_k = []
for i in range(2, 11):

    # Run kMeans 100 times to find SSE minimum
    min_SSE = -1
    for _ in range(100):

        k_means = kMeans(i)
        if SSE(k_means[-1]) < min_SSE or min_SSE == -1:

            min_SSE = SSE(k_means[-1])

    #Divide by 100 to get average
    SSE_by_k.append(min_SSE)

# Get x & y values
x = [i for i in range(2, 11)]
y = SSE_by_k

# Plot the SSE for each number of clusters & save the figure
print(SSE_by_k)
plt.clf()
plt.plot(x, y, ls = '-', marker = '.')
plt.savefig("K=2_thru_10,_100_times.png")





# ---------
# Problem 3
# ---------

# For each of the clusters (3 times)
plt.clf()
for i in range(3):

    # Get the x & y values for all points in the cluster
    x = [pt[0] for pt in k3_clusters["clusters"][i]]
    y = [pt[1] for pt in k3_clusters["clusters"][i]]

    # Plot the points for each cluster
    plt.plot(x, y, 'o')

# Save the figure
plt.savefig("K-Means_3_clusters.png")