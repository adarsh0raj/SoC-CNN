## Covid19 Disease Detection using Convolutional Neural Networks
- Source paper for reference : https://journals.physiology.org/doi/pdf/10.1152/physiolgenomics.00084.2020 
- Dataset used : https://www.kaggle.com/tawsifurrahman/covid19-radiography-database 

### Binary Classification :

The first model implemented is a binary classifier(Covid+ve/ Covid-ve) using Convolutional Neural Networks. The summary of the model is as follows : 

<img src = "https://github.com/adarsh0raj/SoC-CNN/blob/a5f312f59a0a2aee382c0d7ced7c83d3a33ce8b1/COVID19%20Disease%20Detection/Team1(Jash,%20Subarno)/images/binary%20model.png" alt = "Binary Model Summary" width=50%>

The dataset was split into training and test data sets. The final result obtained on the validation set is :
- Accuracy : 97.42%
- Precision : 0.96
- Recall : 0.94

### Multiclass Classification :

The next model implemented is a multiclass classifier(Normal/ Covid+ve/ Pneumonia) again using Convolutional Neural Networks. The summary of the model is as follows :

<img src = "https://github.com/adarsh0raj/SoC-CNN/blob/a5f312f59a0a2aee382c0d7ced7c83d3a33ce8b1/COVID19%20Disease%20Detection/Team1(Jash,%20Subarno)/images/multiclass%20model.png" alt = "Multiclass Model Summary" width=50%>

The final result obtained on the validation set :
- Accuracy : 97.09%
- Precision : 0.97
- Recall : 0.96

### Conventional Machine Learning algorithms :

We also implemented a few conventional Machine Learning models for the multiclass classification. The accuracy obtained was far less than the one obtained using the CNN architechture, which shows that CNNs are superior for such image classification tasks. Here are the final accuracies obtained on the validation set:
- Random Forest : 92.25%
- One Vs All Stochastic Gradient Descent : 83.83%
- One vs One Stochastic Gradient Descent : 79.94%
