# Open the file and simplify methods
in_file = open("Q1-output.txt", "w")
title = lambda x: "*** " + x.upper() + " ***"
write = lambda x: in_file.write(x + "\n")

# Initiate necessary variables and 'constants'
me = ['0', 27, 'M', 'student', '22407']
u_films = {}
avg_age = 0
size = 0

# Calculate the average age of the users
with open("u.user", "r") as users:
    for u in users:
        size += 1
        u = u.split("|")
        avg_age += int(u[1])

avg_age /= size
write("Average age: %.2f" % avg_age)
avg_diff = abs(avg_age - me[1])
write("Difference from my age: %.2f\n" % avg_diff)

# Find people with the closest Euclidean distance to me
write(title("those like me"))

# For every user, extract their data
with open("u.user", "r") as users:
    for u in users:
        u = u.split("|")
        u[1] = int(u[1])

        # Add sum of squares if there is a difference
        sum_sqs = (u[1] - me[1]) ** 2
        sum_sqs += avg_diff if u[2] != me[2] else 0
        sum_sqs += avg_diff * 0.5 if u[3] != me[3] else 0

        # Get Euclidean distance. If it's 1, add it to the list
        euclid = 1 / (1 + sum_sqs ** 0.5)
        if euclid == 1:
            write("\tUser ID: %s" % u[0])
            u_films[u[0]] = {"Top": [], "Bottom": []}

write("")

# Get the ratings data, row by row
with open("u.data", "r") as ratings:
    for r in ratings:
        r = r.split()

        # If the user is the most similar to us, check rating
        if r[0] in u_films:
            r[2] = int(r[2])

            # If rated most or least favorite, add to the dictionary
            if r[2] == 5:
                u_films[r[0]]["Top"].append(r[1])
            elif r[2] == 1:
                u_films[r[0]]["Bottom"].append(r[1])

# Get the movie names
movie = [0]
with open("u.item", "r") as items:
    for item in items:
        movie.append(item.split("|"))

# Get the most and least favorite for each
write(title("THEIR MOST AND LEAST FAVORITE MOVIES"))
for user in u_films:

    # Print out most and least favorite
    write("\tUser ID: %s" % user)
    user = u_films[user]

    write("\n\t\tFavorite:\n")
    
    for top in user["Top"]:
        mv = movie[int(top)]
        write("\t\t\t%s" % mv[1])

    write("\n\t\tLeast Favorite:\n")

    for bottom in user["Bottom"]:
        mv = movie[int(bottom)]
        write("\t\t\t%s" % mv[1])
    
    write("\n")

# Close the file
in_file.close()
