# Breast Cancer Wisconsin Diagnostic (WDBC) — Classification Comparison

Assessment 3 notebook, already complete. This is a strong portfolio piece because it compares five models on the same unseen test set, with no leakage in feature selection.

## Dataset
569 records, 30 numeric features, diagnosis Benign (B) / Malignant (M). 80% training (455) / 20% testing (114), stratified. Feature selection (SelectKBest, 15 features) was learned only from training data. The supplied data file is in `breast_cancer_wisconsin_diagnostic_2.zip` (wdbc.data, public Wisconsin diagnostic data). The notebook was written for Colab upload, so when re-running it, upload the data file first.

## Models compared
Decision Tree, Random Forest, Gaussian Naive Bayes, Multilayer ANN, and Logistic Regression as an additional benchmark. All final values are on the same unseen test set.

## Test-set results (from the notebook outputs)
- Logistic Regression: accuracy 0.9825, precision 0.9762, recall 0.9762, F1 0.9762, ROC-AUC 0.9993 — highest F1 on the test set
- Multilayer ANN: accuracy 0.9561, precision 0.9744, recall 0.9048, F1 0.9383, ROC-AUC 0.9974
- Random Forest: accuracy 0.9561, precision 1.0000, recall 0.8810, F1 0.9367, ROC-AUC 0.9939
- Decision Tree: accuracy 0.9474, precision 0.9737, recall 0.8810, F1 0.9250, ROC-AUC 0.9439
- Naive Bayes: accuracy 0.9298, precision 0.9722, recall 0.8333, F1 0.8974, ROC-AUC 0.9924

## Cross-validation (5-fold, training data, feature selection inside each fold)
- Random Forest: mean CV F1 0.9257
- Logistic Regression: mean CV F1 0.9254
- Decision Tree: mean CV F1 0.9000
- Naive Bayes: mean CV F1 0.8988

So Logistic Regression wins on the single test set, but Random Forest is essentially tied on cross-validation — a good, honest interview point: do not over-claim from one test split.

## Top Random Forest features
perimeter_worst, concave_points_worst, concave_points_mean, radius_worst, and area_worst were the strongest.

## Portfolio note
Upload this notebook as-is, with this README. Do not claim it is a medical diagnostic tool. It is a classification exercise on a public dataset, and the honest framing is model comparison, evaluation, and leakage avoidance.
