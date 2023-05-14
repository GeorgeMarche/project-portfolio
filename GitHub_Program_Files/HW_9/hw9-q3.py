tp = 0
tn = 0
fp = 0
fn = 0

# Extract confusion matrix values
with open("Q2-output.txt", "r") as results:
    for result in results:
        if result.startswith("True P"):
            tp = result[-2]
        elif result.startswith("True N"):
            tn = result[-2]
        elif result.startswith("False P"):
            fp = result[-2]
        else:
            fn = result[-2]

# Write matrix to an output file
with open("Q3-output.txt", "w") as matrix:

    # Make easier file write function
    w = lambda x: matrix.write(x + '\n')

    # Draw the matrix in an output file
    w("   P N ")
    w("  -----")
    w(" P|" + tp + "|" + fp + "|")
    w("  -----")
    w(" N|" + fn + "|" + tn + "|")
    w("  -----\n")

    # Turn values into floats
    tp = float(tp)
    tn = float(tn)
    fp = float(fp)
    fn = float(fn)

    # Calculate precision and accuracy scores
    w("ACC: %.3f" % ((tp + tn) / (tp + tn + fp + fn)))
    w("TPR: %.3f" % (tp / (tp + fn)))
    w("TNR: %.3f" % (tn / (tn + fp)))
    w("FPR: %.3f" % (fp / (fp + tn)))
    w("FNR: %.3f" % (fn / (fn + tp)))
    w("PPV: %.3f" % (tp / (tp + fp)))
    w("FDR: %.3f" % (fp / (tp + fp)))
    w("NPV: %.3f" % (tn / (tn + fn)))
    w("FOR: %.3f" % (fn / (tn + fn)))
    
    # Calculate likelihood ratios if denominator isn't zero
    LRp = None
    if fp != 0:
        LRp = (tp / (tp + fn)) / (fp / (fp + tn))
        w("LR+: %.3f" % LRp)
    else:
        w("LR+: None (TP + FN is zero)")
    
    LRn = None
    if tn != 0:
        LRn = (fn / (fn + tp)) / (tn / (tn + fp))
        w("LR-: %.3f" % LRn)
    else:
        w("LR-: None (TP + FN is zero)")
    
    if LRn not in [0, None]:
        w("DOR: %.3f" % (LRp / LRn))
    else:
        w("DOR: N/A (LR- is zero)")
