# Open the input file and create a movie dictionary
in_file = open("Q4-output.txt", "w")
movs = {}

# Simpler inputting methods
def title(string):
    return "*** " + string.upper() + " ***\n"

def write(string, t = 0, n = 1):
    global in_file
    in_file.write("\t" * t + string + n * "\n")

# Open the movie data set & save year & genre values for each
with open("u.item", "r") as u_item:
    movies = u_item.readlines()
    for mov in movies:
        mov = mov.split("|")        
        if mov[2] == "":
            continue

        # Get the year released
        date = mov[2].split("-")
        year = int(date[2])

        # Add values with movie ID as key in dictionary
        vals = [year] + [int(m) for m in mov[5:]]
        movs[mov[0]] = vals

# Print 5 most and least recommended movies based on most/least liked
def get_first5(movs, most = True, fave = True):
    eucls = {}
    mov1 = "127" if fave else "254"
    
    # Don't compare if it is the movie in question
    for mov in movs:
        if mov == mov1:
            continue

        # Initiate and save values for sum of squares & movie data
        sos = 0
        mv_vals = movs[mov]
        vals1 = movs[mov1]

        # Calculate the Euclidean distance between the two movies
        for i in range(len(mv_vals)):

            # Add less weight to the year difference
            wt = 0.02 if i == 0 else 1
            sos += float((mv_vals[i] - vals1[i]) * wt) ** 2

        eucls[mov] = 1 / (1 + sos ** 0.5)

    # Create proper strings, get input file, sort the Euclidean distances
    global in_file
    x = "most" if most else "least"
    y = "most" if fave else "least"

    eucls = sorted(eucls.items(),
            key = lambda x: x[1],
            reverse = most)

    # Make iterator limiter for only 5 movies
    write(title("The 5 %s recommended movies like my %s favorite movie" % (x, y)))
    count = 5

    for eucl in eucls:
        mv = eucl[0]
        eucl = eucl[1]

        # Print the movie and its respective Euclidean distance
        write("Movie %s - Euclidean Distance: %f" % (mv, eucl), 1)
        with open("u.item", "r") as u_item:
            lines = u_item.readlines()
            write(lines[int(mv) - 1].split("|")[1], 2)

        count -= 1
        if count == 0:
            break
    write("")

# Get 5 most/least recommended movies based on most/least favorite
get_first5(movs, True, True)
get_first5(movs, False, True)
get_first5(movs, True, False)
get_first5(movs, False, False)

# Close the input file
in_file.close()
