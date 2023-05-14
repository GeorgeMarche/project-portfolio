##################################################
# The program unifies data from USPTO, Scopus, & #
# Google Books under the same clean data format. #
##################################################

from os import listdir as listFiles
import json
import csv
import sys

# Get the list of files from the respective directory
files = listFiles(r"C:\Users\gmarc\OneDrive\Documents\Unified Dataset")

# Set up the CSV library to handle wider columns
maxInt = sys.maxsize

# Tests the 'maxsize' - if too big, keep reducing it by 10x until okay
while True:
    
    try:
        csv.field_size_limit(maxInt)
        break
    
    except OverflowError:
        maxInt = int(maxInt / 10)

# The resulting CSV's dataset, initialized with only the headers
unifiedData = [("Title",
                "Authors",
                "Publication Year",
                "Category",
                "Source",
                "ID",
                "Kind",
                "Search Term",
                "Archive URL",
                "Abstract")]

# Iterate each file name in the directory
for file in files:

    # Read the file, set header to True to prevent it from being parsed as data
    inputData = csv.reader(open(file, encoding = "utf8"))
    header = True

    # Checks if the file contains Google Books data
    if "googlebooks" in file or "google_books" in file:

        # Iterate through each row of the CSV
        for row in inputData:

            # If it's the first column, continue
            # Take this time to set up how we find the correct columns
            if header:

                # These are the expected column names to collect data from
                titleInd = row.index("title")
                subtitleInd = row.index("subtitle")
                authorsInd = row.index("authors")
                yearInd = row.index("publishedDate")
                categInd = row.index("categories")
                idInd = row.index("id")
                kindInd = row.index("printType")
                urlInd = row.index("infoLink")
                abstrInd = row.index("description")

                # Set header to false since we will move on to the next row
                header = not header
                continue

            # Many Google Books titles have a subtitle, but some don't
            # We will add the subtitle to the title after a colon
            addSubtitle = ": " if row[subtitleInd] != "" else ""

            # Add the row to our dataset with the data properly manipulated
            unifiedData.append(
                (
                    row[titleInd] + addSubtitle + row[subtitleInd],     # Title may or may not have a subtitle
                    row[authorsInd].split(","),                         # The authors are comma-separated
                    int(row[yearInd][:4]),                              # The year is the first four characters in the date
                    [row[categInd]],                                    # Category is in array form (will make sense soon)
                    "Google Books",                                     # Hard-coded so it looks pretty
                    row[idInd],                                         # Simply the ID of the document
                    row[kindInd].lower().capitalize(),                  # Initially written as "BOOK" - changed to "Book"
                    file.split("_")[1].replace("+", " "),               # Get the query directly from the file name (googlebooks_SEARCH+TERM+SEPARATED+BY+PLUSES_output.csv)
                    row[urlInd],                                        # Simply the URL of the document
                    row[abstrInd]                                       # The quic description of the book
                )
            )

    # Checks if the file contains Scopus data
    elif "Scopus" in file or "scopus" in file:

        # Iterate through each row of the CSV
        for row in inputData:

            # If it's the first column, continue
            # Take this time to set up how we find the correct columns
            if header:
                
                # These are the expected column names to collect data from
                titleInd = row.index("Title")
                authorsInd = row.index("Authors")
                yearInd = row.index("Published Time")
                categInd = row.index("Author Keywords")
                idInd = row.index("Scopus ID")
                searchInd = row.index("search term")
                abstrInd = row.index("Abstract")

                # Set header to false since we will move on to the next row
                header = not header
                continue

            # Extracting the authors is a little tricky
            authors = []
            first = None
            last = None

            # Split the information into an array, split by spaces
            rawAuthors = row[authorsInd].split()

            # Check each term in the raw author data
            for i in range(len(rawAuthors)):

                # The first name comes two items after "'preferred-name':"
                # The last name comes six items after
                if rawAuthors[i] == "'preferred-name':":

                    first = rawAuthors[i + 2][1: -2]
                    last = rawAuthors[i + 6][1: -2]

                    # Some people have two names in their first name. This addresses that                    
                    if rawAuthors[i + 2][-1] != ",":

                        # Add in both names into the first name
                        first = rawAuthors[i + 2][1:] + " " + \
                                rawAuthors[i + 3][:-2]
                        last = rawAuthors[i + 7][1: -2]

                    # Once finished, add the name into the authors array
                    authors.append(first + " " + last)
            
            # Add the row to our dataset with the data properly manipulated
            unifiedData.append(
                (
                    row[titleInd],
                    authors,
                    int(row[yearInd][:4]),                              # First four digits represented the year of publishing
                    row[categInd],                                      # Categories are author "keywords", since no actual categorization existed                              
                    "Scopus",
                    row[idInd],
                    "Paper",
                    row[searchInd],                                     # Search term is in a column in the dataset
                    "",                                                 # No URL provided to access the data
                    row[abstrInd]
                )
            )

    # Checks if the file contains USPTO data
    elif "USPTO" in file or "uspto" in file:
        
        # Iterate through each row of the CSV
        for row in inputData:

            # If it's the first column, continue
            # Take this time to set up how we find the correct columns
            if header:
                
                # These are the expected column names to collect data from
                titleInd = row.index("inventionTitle")
                authorsInd = row.index("inventorNameArrayText")
                yearInd = row.index("publicationDate")
                categInd = row.index("inventionSubjectMatterCategory")
                idInd = row.index("publicationDocumentIdentifier")
                urlInd = row.index("archiveURI")
                abstrInd = row.index("descriptionText")

                # Set header to false since we will move on to the next row
                header = not header
                continue
            
            # Add the row to our dataset with the data properly manipulated
            unifiedData.append(
                (
                    row[titleInd],
                    row[authorsInd].split("|"),                         # The authors are pipe-separated
                    int(row[yearInd][-4:]),                             # Last 4 digits are the year
                    [row[categInd].capitalize()],                       # As with Google Books, it's placed in an array
                    "USPTO",
                    row[idInd],
                    "Patent",
                    file[6:-4].replace("_", " "),                       # First 6 characters are "uspto". Last 4 characters are ".csv". Search term separated by "_"
                    row[urlInd],
                    row[abstrInd]
                )
            )

# Create a new CSV and open it - call it "unified_data.csv"
# Call a writer to write to this new CSV
# Set the proper encoding to prevent it from misreading characters
unifiedCSV = open('unified_data.csv', 'w', newline = '', encoding = "utf-8")
writer = csv.writer(unifiedCSV)

# Write each row in our manipulated unified dataset into the new CSV
for data in unifiedData:
    writer.writerow(data)

# Close the CSV file
unifiedCSV.close()
                    
