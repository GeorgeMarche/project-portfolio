# Import necessary libraries
from random import random as rand
from PIL import Image, ImageDraw

# Like Q3 and Q4, extract data and define pearson distance
def readfile(filename):
    with open(filename) as mtrx:
        users = []
        data = []
        num_rows = 0
        for row in mtrx:
            row = row.split()
            if num_rows > 0:
                users.append(row[0])
                data.append([float(c) for c in row[1:]])
            num_rows += 1
    return (users, data)

def pearson(v1, v2):
    avg1 = sum(v1)/len(v1)
    avg2 = sum(v2)/len(v2)
    sumProd = 0
    sumSq1 = 0
    sumSq2 = 0
    for i in range(len(v1)):
        v1[i] = v1[i] - avg1
        v2[i] = v2[i] - avg2
        sumProd += v1[i] * v2[i]
        sumSq1 += v1[i]**2
        sumSq2 += v2[i]**2
    return(sumProd / (sumSq1**0.5 * sumSq2**0.5))

# scaledown - returns each account's location & total error
def scaledown(data, distance = pearson, rate = 1e-20):

    # Get the real distance between every pair of users
    n = len(data)
    real_dist = [[distance(data[i], data[j]) \
                    for j in range(n)] \
                    for i in range(0, n)]

    # Place in a random location, initialize fake distances
    loc = [[rand(), rand()] for i in range(n)]
    fake_dist = [[0.0 for j in range(n)] for i in range(n)]

    # For each pair of users get their fake distance from the difference
    # of each of their location coordinates
    last_error = None
    for m in range(0, 1000):
        for i in range(n):
            for j in range(n):
                diffs = [(loc[i][x] - loc[j][x])**2 \
                        for x in range(len(loc[i]))]
                fake_dist[i][j] = sum(diffs)**0.5

        # Initialize gradient
        grad = [[0.0, 0.0] for i in range(n)]
        total_error = 0

        # Get the error for each pair
        for i in range(n):
            for j in range(n):
                if i == j:
                    continue

                # Error is percent difference between distances
                error_term = (fake_dist[j][i] - real_dist[j][i]) \
                        / real_dist[j][i]

                # Each point moved away/towards other point in
                # proportion to amount of error
                grad[i][0] += (loc[i][0] - loc[j][0]) / \
                        fake_dist[j][i] * error_term
                grad[i][1] += (loc[i][1] - loc[j][1]) / \
                        fake_dist[j][i] * error_term

        # Track total error
                total_error += abs(error_term)
        print(total_error)
        
        # If error got worse by moving points, we are done
        if last_error and last_error < total_error:
            print("Total iterations: %d\n" % (m + 1))
            break
        last_error = total_error

        # Move each point by learning rate times gradient
        for i in range(n):
            loc[i][0] -= rate * grad[i][0]
            loc[i][1] -= rate * grad[i][1]

    # Return final locations
    return loc

# draw2d - saves an image of the MDS plot in JPEG format
def draw2d(data, labels, jpeg = "mds2d.jpg"):
    img = Image.new("RGB", (2000, 2000), (255, 255, 255))
    draw = ImageDraw.Draw(img)

    # For each point, add it on the plot with the right label
    for i in range(len(data)):
        x = (data[i][0] + 0.5) * 1000
        y = (data[i][1] + 0.5) * 1000
        draw.text((x, y), labels[i], (0, 0, 0))
    img.save(jpeg, "JPEG")

# Get data
users, data = readfile("matrix.txt")

# Get the MDS coordinates
coords = scaledown(data)

# Save final MDS processing into the JPEG file
draw2d(coords, users, jpeg = "users-mds.jpg")

