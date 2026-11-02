# Breast Cancer Wisconsin Diagnostic (WDBC) — Classification Comparison

In this project, I compared five classification models on the Wisconsin diagnostic dataset, and I made sure the comparison was fair: all models were tested on the same unseen test set, and I learned feature selection only from the training data, so nothing leaked from the test set.

## Dataset
I worked with 569 records and 30 numeric features, with diagnosis Benign (B) / Malignant (M). I split the data 80% training (455) / 20% testing (114), stratified. The data file I used is in `breast_cancer_wisconsin_diagnostic_2.zip` (public Wisconsin diagnostic data). My notebook was written for Colab upload, so to re-run it, upload the data file first.

## Models I compared
Decision Tree, Random Forest, Gaussian Naive Bayes, Multilayer ANN, and Logistic Regression as an additional benchmark.

## My test-set results
- Logistic Regression: accuracy 0.9825, precision 0.9762, recall 0.9762, F1 0.9762, ROC-AUC 0.9993 — my highest F1 on the test set
- Multilayer ANN: accuracy 0.9561, F1 0.9383, ROC-AUC 0.9974
- Random Forest: accuracy 0.9561, F1 0.9367, ROC-AUC 0.9939
- Decision Tree: accuracy 0.9474, F1 0.9250, ROC-AUC 0.9439
- Naive Bayes: accuracy 0.9298, F1 0.8974, ROC-AUC 0.9924

## My cross-validation check
On 5-fold cross-validation of the training data, Random Forest (mean CV F1 0.9257) was essentially tied with Logistic Regression (0.9254). I include that honestly, because I don't want to over-claim from one test split alone.

## Top features I found
In my Random Forest model, perimeter_worst, concave_points_worst, concave_points_mean, radius_worst, and area_worst were the strongest features.

## A note on framing
I present this as a classification exercise on public data, not as a medical diagnostic tool.
