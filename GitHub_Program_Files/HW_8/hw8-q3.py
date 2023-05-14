# Import necessary libraries
from PIL import Image, ImageDraw

# The readfile function
# Param(s): filename (name of the file)
def readfile(filename):

    # Open the file with the matrix
    with open(filename) as mtrx:

        # Initiate necessary data (user & counts)
        users = []
        data = []
        num_rows = 0

        # Each row in file, split into list
        for row in mtrx:
            row = row.split()

            # If not header row, save name & counts
            if num_rows > 0:
                users.append(row[0])
                data.append([float(c) for c in row[1:]])
            num_rows += 1

    # Return user and counts
    return (users, data)

# The pearson function
# Param(s): v1 - 1st cluster counts
        #   v2 - 2nd cluster counts
def pearson(v1, v2):

    # Get the average count for each cluster
    avg1 = sum(v1)/len(v1)
    avg2 = sum(v2)/len(v2)

    # Initiate products sum and squares sum
    sumProd = 0
    sumSq1 = 0
    sumSq2 = 0

    # For each term
    for i in range(len(v1)):

        # Get distance from average
        v1[i] = v1[i] - avg1
        v2[i] = v2[i] - avg2
        
        # Add product & square of difference
        sumProd += v1[i] * v2[i]
        sumSq1 += v1[i]**2
        sumSq2 += v2[i]**2

    # Return pearson's distance value
    return(sumProd / (sumSq1**0.5 * sumSq2**0.5))

# Class definition for bicluster
class bicluster:

    # Constructor function
    def __init__(self, vec, left = None, right = None,
            distance = 0.0, id = None):
        self.left = left
        self.right = right
        self.vec = vec
        self.id = id
        self.distance = distance

# The hcluster function (hierarchical clustering)
# Param(s): rows - the count data (100 rows for 100 users)
        #   distance - the distance formula, by default pearson
def hcluster(rows, distance = pearson):

    # Initiate distance dictionary, id of -1 for the next cluster
    distances = {}
    current_id = -1

    # Create a cluster for each row in cluster list
    clust = [bicluster(rows[i], id = i) for i in range(len(rows))]

    # While the 100 clusters haven't joined into 1
    while len(clust) > 1:

        # Initiate values to save for closest pair of clusters
        lowestpair = (0, 1)
        closest = distance(clust[0].vec, clust[1].vec)

        # For each of the clusters in cluster list
        for i in range(len(clust)):

            # For each cluster to compare it to
            for j in range(i + 1, len(clust)):

                # If their distance hasn't been calculated
                if (clust[i].id, clust[j].id) not in distances:

                    # Get their distance, save under tuple key in dict
                    distances[(clust[i].id, clust[j].id)] = \
                        distance(clust[i].vec, clust[j].vec)

                # Get distance using tuple key in distance dict
                d = distances[(clust[i].id, clust[j].id)]

                # If the distance is the closest of all cluster pairs
                if d < closest:

                    # Set values for closest pair of clusters
                    closest = d
                    lowestpair = (i, j)
        
        # Merge 2 closest clusters (get average count for each term)
        x = lowestpair[0]
        y = lowestpair[1]
        mergevec = [(clust[x].vec[i] + clust[y].vec[i])
                    / 2.0 for i in range(len(clust[0].vec))]

        # Create a new cluster from the merged 2 clusters
        # Have right and left cluster be 2 clusters merged from
        # Set ID to the new ID
        new_cluster = bicluster(mergevec, left = clust[x], right = clust[y],
                                distance = closest, id = current_id)

        # Decrement the ID, remove the clusters we already used
        current_id -= 1
        del clust[y]
        del clust[x]

        # Save the new cluster to the list of clusters
        clust.append(new_cluster)

    # Return the final, combined cluster
    return clust[0]

# The printclust function
# Param(s): filename - name of file to write to
        #   clust - the cluster list
        #   labels - individual cluster labels (users)
        #   n - the level of the dendrogram
def printclust(filename, clust, labels = None, n = 0):

    # Open writing file (appending file if not zero level)
    with open(str(filename), "w" if n == 0 else "a") as f:   
        write = lambda x: f.write(x + "\n")

        # Each level goes further right in the file
        for i in range(n):
            f.write("  ")

        # If not bottom level, write dash indicating fustion
        if clust.id < 0:
            write('-')

        # Otherwise, write the label (screen name)
        else:
            if labels == None:
                write(clust.id)
            else:
                write(labels[clust.id])

    # If there are subclusters, process into the diagram
    if clust.left != None:
        printclust(filename, clust.left, labels = labels, n = n + 1)
    if clust.right != None:
        printclust(filename, clust.right, labels = labels, n = n + 1)

# The getheight function
# Param(s): clust - the cluster
def getheight(clust):

    # If an endpoint, the height is just one
    if clust.left == None and clust.right == None:
        return 1

    # Otherwise, get the sum of heights for each L & R cluster
    return getheight(clust.left) + getheight(clust.right)

# The getdepth function
def getdepth(clust):

    # If an endpoint, there's no distance from itself
    if clust.left == None and clust.right == None:
        return 0

    # Branch distance is greater of 2 sides plus own distance
    return max(getdepth(clust.left), getdepth(clust.right)) + clust.distance

# The drawnode function
# Param(s): draw - image to draw to
        #   clust - the cluster to draw diagram for
        #   x - the x coordinate
        #   y - the y coordinate
        #   scaling - the scaling for the picture
        #   labels - the names of the points (users)
def drawnode(draw, clust, x, y, scaling, labels):

    # If not an endpoint
    if clust.id < 0:

        # Get how many users are under cluster branch
        h1 = getheight(clust.left) * 20
        h2 = getheight(clust.right) * 20

        # Get the top and bottom for distance from parent to children
        top = y - (h1 + h2) / 2
        bottom = y + (h1 + h2) / 2

        # Length of horizontal line to children
        ll = clust.distance * scaling

        # Draw vertical line from this cluster to children
        draw.line((x, top + h1 / 2, x, bottom - h2 / 2), fill = (255, 0, 0))

        # Horizontal line to left item
        draw.line((x, top + h1 / 2, x + ll, top + h1 / 2), fill = (255, 0, 0))

        # Vertical line to right item
        draw.line((x, bottom - h2 / 2, x + ll, bottom - h2 / 2), fill = (255, 0, 0))

        #Function to draw left and right nodes
        drawnode(draw, clust.left, x + ll, top + h1 / 2, scaling, labels)
        drawnode(draw, clust.right, x + ll, bottom - h2 / 2, scaling, labels)
    
    # If it's an endpoint, draw the item label
    else:
        draw.text((x + 5, y - 7), labels[clust.id], (0, 0, 0))

# The drawdendrogram function
# Param(s): clust - the cluster to draw diagram for
        #   labels - the names of the points (users)
        #   jpeg - the image file name to save it to
def drawdendrogram(clust, labels, jpeg = "twitter_clusters.jpg"):

    # The dimensions of the diagram
    h = getheight(clust) * 20
    w = 1200
    depth = getdepth(clust)

    # Width is fixed, so scale distances accordingly
    scaling = float(w - 150) / depth

    # Create a new image with a white background
    img = Image.new('RGB', (w, h), (255, 255, 255))
    draw = ImageDraw.Draw(img)

    # Draw the initial line
    draw.line((0, h / 2, 10, h / 2), fill = (255, 0, 0))

    # Draw the first node... which will have the rest drawn
    drawnode(draw, clust, 10, h / 2, scaling, labels)

    # Save the entire image in a JPEG file
    img.save(jpeg, 'JPEG')

# Get the necessary data, create the hierarchical cluster
users, data = readfile("matrix.txt")
clust = hcluster(data)

# Make dendrogram first as an ASCII file, then a JPEG file
printclust("twitter_clusters.ascii", clust, labels = users)
drawdendrogram(clust, users, jpeg = "twitter_clusters.jpg")
