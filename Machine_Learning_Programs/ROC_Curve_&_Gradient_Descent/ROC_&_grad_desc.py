from sklearn.datasets import load_breast_cancer
import matplotlib.pyplot as plt
from math import exp, log
import numpy as np

def logistic_gradient_descent(x, y, w_init, alpha):
    
    d = lambda a, b, c: (b * a) - (a / (exp(-c) + 1))
    w = [w_init] * len(x[0])
    min_loss = -1
    
    while True:
        
        log_loss = 0
        temp_w = w
        
        for i in range(len(x)):
            
            xT_w = sum([x[i][j] * w[j] for j in range(len(x[i]))])
            
            try:
                log_loss += log(1 + exp(xT_w)) - y[i] * xT_w
                
                for j in range(len(x[i])):

                    temp_w[j] += (alpha * d(x[i][j], y[i], xT_w))

            except OverflowError:
                print("Overflow: try a smaller 'w_init' value!\n")
                return 

        if min_loss != -1 and log_loss > min_loss:
            
            break
        
        min_loss = log_loss
        w = temp_w

    return [w, min_loss]

def get_ROC_curve_pts(pred_y, w_init, alpha):

    pred_y.sort(reverse = True)
    
    tp, fp = 0, 0
    fn = sum([pred[1] for pred in pred_y])
    tn = len(pred_y) - fn

    x_pts = [0]
    y_pts = [0]
    diag_x = [0.01 * x for x in range(101)]
    diag_y = [0.01 * x for x in range(101)]

    for pred in pred_y:
        
        tp += pred[1]
        fn -= pred[1]
        fp += 1 - pred[1]
        tn -= 1 - pred[1]

        x_pts.append(fp / (fp + tn))
        y_pts.append(tp / (tp + fn))

    fig = plt.figure()
    ax = fig.add_subplot(111)
    
    ax.scatter(x_pts, y_pts, s=5, color="red")
    ax.scatter(diag_x, diag_y, s=5, color="blue")
    
    plt.xlabel("False Positive Rate")
    plt.ylabel("True Positive Rate")
    plt.title("ROC Curve (Initial W Values = " + str(w_init) + \
              ", Alpha = " + str(alpha) + ")")
    plt.savefig("ROC_curve.png")

data = load_breast_cancer()
split = 2 * len(data.data) // 3
w = None

train_x = data.data[:split]
train_y = data.target[:split]

test_x = data.data[split:]
test_y = data.target[split:]

while w == None:
    
    w_init = float(input("Enter a number for initial w values: "))
    alpha = float(input("Enter the step size alpha: "))
              
    w, log_loss = logistic_gradient_descent(
        train_x,
        train_y,
        w_init,
        alpha
        )

print("\nThe optimal w vector is:")
print(" _" + (" " * 23) + "_")

for i in range(len(w)):
    
    coeff = str(w[i])
    
    begin = "| " if i != len(w) - 1 else "|_"
    end = " |" if i != len(w) - 1 else "_|"
    
    print(begin + coeff + " " * (23 - len(coeff)) + end)
    
print("\n... with a logistic loss of " + str(log_loss) + "\n")
print("Running predictions...")

pred_y = []

for i in range(len(test_y)):

    xT_w = sum([w[j] * test_x[i][j] for j in range(len(test_x[i]))])
    pred = exp(xT_w) / (1 + exp(xT_w))
    pred_y.append([pred, test_y[i]])

get_ROC_curve_pts(pred_y, w_init, alpha)
print("Finished! ROC Curve is saved as 'ROC_curve.png'.")
