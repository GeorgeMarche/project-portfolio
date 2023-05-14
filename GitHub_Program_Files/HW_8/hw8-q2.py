# Read screen_names into matrix dictionary from file
def read_file(filename):
    
    # From file with screen names, put screen names in dictionary
    matrix = {}
    with open(filename, "r") as screen_names:
        for screen_name in screen_names:
            screen_name = screen_name[:-1]
            matrix[screen_name] = {}

    # Return dictionary of screen_name dictionaries
    return matrix

# Populate matrix with term counts, get term document count
def populate_matrix(matrix):
    count = {}

    # Get each screen_names tweets, break them down into words
    for screen_name in matrix:
        with open(screen_name + ".txt", "r") as tweets:
            for tweet in tweets:
                terms = tweet.split()

                # Iterate through terms
                for term in terms:
                    
                    # If a URL or account mention, continue
                    if "://" in term or term[0] == "@":
                        continue

                    # Turn lowercase and remove punctuation
                    term = ''.join([char for char in term.lower() \
                            if ord(char) in range(97, 123)])

                    # If too small or too large, continue
                    if len(term) not in range(3, 16):
                        continue
                   
                    # Or, if not in matrix, add term and set to 1
                    if term not in matrix[screen_name] or \
                            matrix[screen_name][term] == 0:
                        matrix[screen_name][term] = 1

                        # For screen_names without the term, default at 0
                        for u in matrix:
                            if term not in matrix[u]:
                                matrix[u][term] = 0

                        # Initiate doc count to 1 or increment
                        if term not in count:
                            count[term] = 1
                        else:
                            count[term] += 1

                    # If already in screen_name, increment
                    else:
                        matrix[screen_name][term] += 1
    
    # Return the matrix and count
    return matrix, count

# Returns 1000 most popular terms, stopwords removed
def filter_terms(matrix, count):

    # Iterate through & remove stopwords, add good words to list
    terms = []
    for term in count:
        if count[term] not in range(11, 50):
            for screen_name in matrix:
                matrix[screen_name].pop(term)
        else:
            terms.append(term)

    # Get the 1000 most popular terms, account for all screen_names
    terms = {term: sum([matrix[screen_name][term] for screen_name in matrix]) \
                            for term in terms}
    while len(terms) > 1000:
        unpop_term = min(terms, key = terms.get)
        terms.pop(unpop_term)
        for screen_name in matrix:
            matrix[screen_name].pop(unpop_term)

    # Return filtered matrix
    return matrix, terms

# Create new file with matrix
def save_matrix(filename, matrix, terms):

    # Open file to write to
    with open(filename, "w") as mtrx:

        # Write a header with the 1000 terms
        header = " " * 16
        for term in terms:
            header += " " * (16 - len(term)) + term
        mtrx.write(header + "\n")

        # for each screen_name, write the screen name and count for each term
        for screen_name in matrix:
            row = " " * (16 - len(screen_name)) + screen_name
            for term in terms:
                num = str(matrix[screen_name][term])
                row += " " * (16 - len(num)) + num
            mtrx.write(row + "\n")

matrix = read_file("screen_names.txt")
matrix, count = populate_matrix(matrix)
matrix, terms = filter_terms(matrix, count)
save_matrix("matrix.txt", matrix, terms)
