#######################################################################
# The program predicts the season year of the game, the "part" of the #
# season (preseason, regular season, or finals), and the difference   #   
# in points difference (- = lost, + = won) using scored points, field #
# goal %, free throw %, three-pointer %, assists, and rebounds        #
#######################################################################

import pandas as pd
from math import exp, log
import matplotlib.pyplot as plt
import numpy as np

from numpy.linalg import inv
from numpy import \
     add as add, \
     matmul as mul, \
     transpose as T, \
     subtract as sub, \
     multiply as mult, \
     asmatrix as mtrx

# Gradient descent for multi-task learning
def mtl_gd(X, y,
           init_w = .004,
           alpha_w = .0005,
           init_s = .08,
           alpha_s = 0.00005,
           using_HU = True):

    # Get shape of X data and open the result file
    rows_X, cols_X = X.shape
    model_file = open("multi_task_gradient_descent.txt", "w")
    
    # Establish lambda functions for necessary calculations
    d_rgrsn = lambda s, L_model: (L_model - s**2) / (s**3)
    d_class = lambda s, L_model: (2 * L_model - s**2) / (s**3)
    d_model = lambda y_model: mul(inv(mul(T(X), X)),
                                  mul(T(X), y_model))

    # Get the model weights for each task in the train data
    all_model_wts = [[[init_w] * cols_X] * task.shape[1] for task in y]
    sigmas = [init_s] * len(y)
    
    # Initiate minimum loss variable
    min_loss = -1

    while True:

        # Initiate current total loss variable
        total_loss = 0

        # For each row in the test data
        for r in range(rows_X):

            # For each model in the list of train data
            for i in range(len(y)):

                # Get the shape and model weights
                rows_y, cols_y = y[i].shape
                model_wts = all_model_wts[i]
                sigma = sigmas[i]

                numer = 0
                denom = 0

                # For each column in the train data                               
                for c_y in range(cols_y):
                    
                    # Test data transposed times the weights matrix
                    XTw = float(np.sum(mul(T(X[r]), model_wts[c_y])))
                        
                    # If the season part model, get total loss
                    if cols_y > 1:
                        denom += exp(XTw)
                        
                        if int(y[i][r, c_y]) == 1:
                            numer = exp(XTw)

                        if c_y == cols_y - 1:
                            loss = -log(numer / denom)
                            total_loss += loss if not using_HU else \
                                          (loss / (sigma**2)) + \
                                          log(sigma)

                    # If not the season part model, get total loss 
                    else:
                        loss = (float(y[i][r, c_y]) - XTw) ** 2
                        total_loss += loss if not using_HU else \
                                      (loss / (2 * (sigma**2))) + \
                                      log(sigma)

                # Save the model weight
                all_model_wts[i] = add(model_wts,
                                       mult(alpha_w,
                                            T(d_model(y[i]))))
                
            # Get the sigmas for each model
            for i in range(len(y)):
                
                sigmas[i] = add(sigma,
                                mult(alpha_s,
                                     T(d_class(sigma, loss))))
                
                if cols_y == 1:
                    sigmas[i] = add(sigma,
                                    mult(alpha_s,
                                         T(d_rgrsn(sigma, loss))))
                    
        # If the loss is greater than the minimum loss, break
        if min_loss != -1 and total_loss >= min_loss:
            break
        
        model_file.write(str(total_loss) + "\n")
        min_loss = total_loss
        
    model_file.close()
    return all_model_wts

# Plot ROC curve to determine accuracy
def get_ROC_curve_pts(preds, model, trial):

    # Plot a diagonal line     
    diag_x = [0.01 * x for x in range(101)]
    diag_y = [0.01 * x for x in range(101)]

    plt.clf()
    plt.plot(diag_x, diag_y, color="blue")

    # Establish an x- and y-point list
    x_pts = []
    y_pts = []

    # For each model in the predictions
    for loc in preds:

        # For each team in the model
        for team in preds[loc]:

            # Get the predictions for a trial for a team
            pred_y = preds[loc][team][trial]
            pred_y.sort(reverse = True)
            
            # Get true and false positives and negatives
            tp, fp = 0, 0
            fn = sum([pred[1] for pred in pred_y if pred[1] == 1])
            tn = len(pred_y) - fn

            # For each prediction, get the point on the ROC curve
            for pred in pred_y:
                
                tp += pred[1]
                fn -= pred[1]
                fp += 1 - pred[1]
                tn -= 1 - pred[1]

                x_pts.append(fp / (fp + tn))
                y_pts.append(tp / (tp + fn))

    # Plot the ROC curve          
    plt.plot(x_pts, y_pts, color="red")
                     
    plt.xlabel("False Positive Rate")
    plt.ylabel("True Positive Rate")
    plt.title("ROC Curve (Initial W Values = .0004, Alpha = 0.0005)")

    alg = "NO" if trial.startswith("W/O") else "W"
    plt.savefig(model + "_" + alg + "_sigmas_ROC.png")
    
# Read CSVs with data
games = pd.read_csv('games.csv')   
teams_data = pd.read_csv('teams.csv')
teams = teams_data.copy()['TEAM_ID']

# Establish arrays to separate models and clean data
models = ['SEASON', 'PART']
trials = ['W/ SIGMAS', 'W/O SIGMAS']
locs = ['HOME_TEAM_ID', 'VISITOR_TEAM_ID']

# Establish dictionaries for loss and model predictions
w_keys = dict.fromkeys
lin_loss = w_keys(trials, 0)
preds_y = w_keys(models,
                 w_keys(locs,
                        w_keys(teams,
                               w_keys(trials, []))))

# Get unique seasons and make season part list
seasons = games['SEASON'].unique()
part = ['PRESEASON', 'REGULAR', 'FINALS']

# For home and away teams
pts = ['PTS_home', 'PTS_away']
for loc in locs:

    # For each team
    print("- " + pts[0][4:].capitalize() + " games")
    for team in teams:

        # Get the team name and games associated with the team
        name = teams_data.loc[teams_data['TEAM_ID'] == team,
                              'ABBREVIATION'
                              ].values[0]
        print("  + " + name, end='')
        team_games = games[games[loc] == team].copy()

        # Establish the points differential targets to predict
        print("    > Targets")
        targets = pd.DataFrame({
            "GAME_ID": [r['GAME_ID'] for i, r \
                        in team_games.iterrows()],
            "PTS_DIFF": [r[pts[0]] - r[pts[1]] for i, r \
                         in team_games.iterrows()]})
        targets[seasons] = [0] * len(seasons)
        targets[part] = [0] * len(part)

        # For each row in the targets
        for idx, row in targets.iterrows():

            # Save the row in a shorter variable name
            game_row = team_games[
                team_games['GAME_ID'] == row['GAME_ID']]

            # Get the season part from GAME_ID
            if str(row['GAME_ID']).startswith('1'):
                targets.loc[idx, "PRESEASON"] = 1
            elif str(row['GAME_ID']).startswith('2'):
                targets.loc[idx, "REGULAR"] = 1
            else:
                targets.loc[idx, "FINALS"] = 1
               
            targets.loc[idx, game_row['SEASON']] = 1
        
        # Get the game year and establish the data split
        season_cols = [x for x in list(targets.columns) \
                       if str(x)[:2] == '20']
        splits = {"TRAIN": None, "TEST": None}

        # Get the data to predict as a DataFrame copy
        y_won_data = targets[["PTS_DIFF"]].copy()
        y_szn_data = targets[season_cols].copy()
        y_pts_data = targets[part].copy()

        # Split the data into a 75/25 train-test split
        train = lambda df: [i for i, r in df.iterrows() if i % 4 != 0]
        test = lambda df: [i for i, r in df.iterrows() if i % 4 == 0]
        to_numpy_train = lambda data: \
                         data.copy().iloc[train(data)].fillna(0).values
        to_numpy_test = lambda data: \
                        data.copy().iloc[test(data)].fillna(0).values
        
        # Convert the DataFrame to a Numpy table and save into a list
        train_y_won = to_numpy_train(y_won_data)
        train_y_szn = to_numpy_train(y_szn_data)
        train_y_pts = to_numpy_train(y_pts_data)

        test_y_won = to_numpy_test(y_won_data)
        test_y_szn = to_numpy_test(y_szn_data)
        test_y_pts = to_numpy_test(y_pts_data)

        train_y = [train_y_won, train_y_szn, train_y_pts]
        test_y = [test_y_won, test_y_szn, test_y_pts]

        # Drop unnecessary columns from the DataFrame
        print("    > Features", end='')
        feature_drop_cols = ['HOME_TEAM_WINS', 'GAME_DATE_EST', 
                             'GAME_STATUS_TEXT', 'SEASON', 'GAME_ID',
                             'HOME_TEAM_ID', 'VISITOR_TEAM_ID',
                             'TEAM_ID_home', 'TEAM_ID_away']
        features = team_games.drop(feature_drop_cols, 
                                   axis=1
                                   ).reset_index()

        # Convert the feautures to a Numpy table
        train_x = to_numpy_train(features)
        test_x = to_numpy_test(features)

        # Multi-task learn gradient desc to find wts w/ and w/o sigmas
        print("    > Running MTL")
        weights = {}
        weights['W/ SIGMAS'] = mtl_gd(train_x, train_y)
        weights['W/O SIGMAS'] = mtl_gd(train_x, train_y, 
                                       using_HU=False)

        # For each trial (w/ and w/o sigmas)
        for trial in weights:

            # For each model in the test target data
            for i in range(len(test_y)):
                
                # Initialize probability and table size variables
                prob = 0
                rows_y, cols_y = test_y[i].shape
                
                # For each row
                for r in range(rows_y):

                    # Initialize lists
                    numers = []
                    y_vals = []
                    
                    # For each column
                    for c in range(cols_y):
                    
                        # Multiply the test matrix transpose by weights
                        XTw = float(np.sum(mul(T(test_x[r]),
                                               weights[trial][i][c])))
                        
                        # If not predicting the season part
                        if cols_y == 1:

                            # Increase the sum of loss by (y - X^T*W)^2
                            prob += ((float(test_y[i][r, 0]) - XTw)**2)

                        else:
                            numers.append(exp(XTw))

                    # If predicting the season part
                    if cols_y > 1:
                 
                        # Calculate the predictions
                        pred = [[numers[c] / sum(numers),
                                 test_y[i][r, c]] \
                                    for c in range(cols_y)]
                        
                        preds_y[models[i - 1]] \
                            [loc][team][trial] += pred

                # If not season part, divide sum of loss by # rows
                if cols_y == 1:
                    lin_loss[trial] += prob / rows_y

    # Alternative home and away games                               
    print()
    pts.reverse()

# Create an output file for results
model_file = open("multi_task_gradient_descent.txt", "a")    
model_file.write("The Loss:\n")
print("\nThe Loss:")
for i in range(len(test_y)):

    # If not predicting the season part, print MSE results
    if test_y[i].shape[1] == 1:
        model_file.write(" - Model: Pts Diff")
        model_file.write("   > (W/ SIGMAS) MSE: " + \
                         str(lin_loss['W/ SIGMAS'] / 60) + "\n")
        model_file.write("   > (W/O SIGMAS) MSE: " + \
                         str(lin_loss['W/O SIGMAS'] / 60) + "\n")
        print(" - Model: Pts Diff")
        print("   > (W/ SIGMAS) MSE: " + \
              str(lin_loss['W/ SIGMAS'] / 60))
        print("   > (W/O SIGMAS) MSE: " + \
              str(lin_loss['W/O SIGMAS'] / 60))

    # If not, plot the ROC curve
    else:
        m = models[i - 1]
        print(" - Model: " + m)
        for trial in trials:

            print("   > (" + trial + ") ROC Curve")
            get_ROC_curve_pts(preds_y[m], m, trial)
        
model_file.close()
