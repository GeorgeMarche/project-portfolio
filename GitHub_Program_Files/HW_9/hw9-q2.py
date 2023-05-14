# Import necessary libraries
import sqlite3 as sqlite
import re
import math

# Get the words from a doc
def getwords(doc):
    splitter = re.compile('\W+')

    # Turn lowercase, only between 2 & 20 letters
    words = [s.lower() for s in splitter.split(doc) 
            if len(s) > 2 and len(s) < 20]

    # Get & return unique words only
    uniq_words = dict([(w,1) for w in words])
    return uniq_words

# ----- Basic classifier class
class basic_classifier:
    
    def __init__(self, getfeatures, filename = None):
        # Count of each feature & docs per category
        self.fc = {}
        self.cc = {}

        # Set method to get features
        self.getfeatures = getfeatures
    
    # Increment count of feature in category dict
    def incf(self, f, cat):
        self.fc.setdefault(f, {})
        self.fc[f].setdefault(cat, 0)
        self.fc[f][cat] += 1
  
    # Increment doc count in a category
    def incc(self, cat):
        self.cc.setdefault(cat, 0)
        self.cc[cat] += 1  

    # Get count of a feature in a category
    def fcount(self, f, cat):
        if f in self.fc and cat in self.fc[f]:
            return float(self.fc[f][cat])
        return 0.0

    # Get count of docs in a category
    def catcount(self, cat):
        if cat in self.cc:
            return float(self.cc[cat])
        return 0

    # Get count of all docs
    def totalcount(self):
        return sum(self.cc.values())

    # Return the categories
    def categories(self):
        return self.cc.keys()

    # Train the classifier
    def train(self, item, cat):
        features = self.getfeatures(item)
    
        # Increment count for every feature w/ this category
        for f in features:
            self.incf(f, cat)

        # Increment category count
        self.incc(cat)

    # Get probability an item in category is the feature
    def fprob(self, f, cat):
        if self.catcount(cat) == 0:
            return 0
    
        # Total num times feature is in category divided
        # by total num of items in the category
        return self.fcount(f, cat) / self.catcount(cat)

    # Get the weighted average probability
    def weightedprob(self, f, cat, prf, weight = 1.0, ap = 0.5):
        
        # Get current probability
        basicprob = prf(f, cat)

        # Count the number of times feature appeared in total
        totals = sum([self.fcount(f, c) for c in self.categories()])

        # Calculate weighted average
        bp = ((weight * ap) + (totals * basicprob)) / (weight + totals)
        return bp

# ----- Naive Bayes classifier class
class naivebayes(basic_classifier):

    def __init__(self, getfeatures):   
        
        # Initiate basic classifier, add thresholds dict
        basic_classifier.__init__(self, getfeatures)
        self.thresholds = {}
  
    # Prob each term is in doc given category multiplied
    def docprob(self, item, cat):
        features = self.getfeatures(item)   

        # Multiply probs of all features together
        p = 1
        for f in features:
            p *= self.weightedprob(f, cat, self.fprob)
        return p

    # Get likeliness doc is in category
    def prob(self, item, cat):
        catprob = self.catcount(cat) / self.totalcount()
        docprob = self.docprob(item, cat)
        return docprob * catprob
  
    def setthreshold(self, cat, t):
        self.thresholds[cat] = t
    
    def getthreshold(self, cat):
        if cat not in self.thresholds: 
            return 1.0
        return self.thresholds[cat]
  
    def classify(self, item, default = None):
        probs = {}

        # Find category w/ highest prob
        max = 0.0
        for cat in self.categories():
            probs[cat] = self.prob(item, cat)
            if probs[cat] > max: 
                max = probs[cat]
                best = cat

        # Check that prob exceeds threshold
        for cat in probs:
            if cat == best:
                continue
            if probs[cat] * self.getthreshold(best) > probs[best]: 
                return default
            return best

# Get docs from text file
def getdocs(filename):
    with open(filename, "r") as dataset:
        docs = []
        doc = ""
        cat = None

        # Use text markers to separate by category and save
        for line in dataset:
            if line == "--J--\n":
                cat = "job"
            elif line == "--N--\n":
                cat = "not"
            elif line == "-----\n":
                docs.append((doc, cat))
                doc = ""
            else:
                # Concatenate line to document
                doc += line
        
        return docs 

# Get the documents & initiate Naive Bayes
docs = getdocs("Training.txt")
cl = naivebayes(getwords)

# Train model using each document
for doc in docs:
    cl.train(doc[0], doc[1])

# Get test set
correct = 0
docs = getdocs("Testing.txt")

# Variables to populate confusion matrix
fp = 0
fn = 0
tp = 0
tn = 0

# Classify each test document
for doc in docs:
    n_bayes = cl.classify(doc[0], default = "unknown")

    # Compare actual vs Naive Bayes classification
    print("Correct classification: %s" % doc[1])
    print("Bayes classification: %s" % n_bayes)
    
    # Add to proper Type Error or true value
    if n_bayes == doc[1]:
        print("BAYES PROVIDED CORRECT RESULT!")
        if n_bayes == "job":
            tp += 1
        else:
            tn += 1
        correct += 1
    else:
        print("BAYES RESULT IS INCORRECT!")
        if n_bayes == "job":
            fp += 1
        else:
            fn += 1
    print('')

print("Number of correct results: %d out of 10" % correct)

# Write results to output file
with open("Q2-output.txt", "w") as results:
    results.write("True Positive: %d\n" % tp)
    results.write("True Negative: %d\n" % tn)
    results.write("False Positive: %d\n" % fp)
    results.write("False Negative: %d\n" % fn)
