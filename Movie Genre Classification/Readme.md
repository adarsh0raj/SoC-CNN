# Poster Genre Classification Using CNN
- Source paper for reference : http://cs229.stanford.edu/proj2019spr/report/9.pdf
- CSV file link : https://www.kaggle.com/grouplens/movielens-20m-dataset
   This is the link for the CSV file which contains title of the movies and their corresponding genres. There were total 27278 movies in the file. Each movie is classified in a few    of the 20 genres. Of the 20 genres one was "No genre available".
- Movie Poster Dataset  : https://www.kaggle.com/ghrzarea/movielens-20m-posters-for-machine-learning
   This is the link for the poster dataset of 26938 of 27278 movies in the above CSV file. We removed the data corresponding to remaining 340 movies (whose posters were not            available) from the CSV file also.
- Model  : We have used ResNet50 model implemented via keras, using transfer learning with the pretrained weights from imagenet. For the final layer we have added a global average pooling layer, a dropout layer and finally a dense layer which is connected to 19 nodes corresponding to the 19 genre labels. The model has been stored in model.json file and the weights we got after training of the last layer are stored in the model.h5 file. The file poster_prediction_model.ipynb contains the original python notebook we used for training and also test results corresponding to all the genres. The file trained_genre_predictor.ipynb uses the pretrained weights from model.h5 to make individual predictions.
- Final Result - The model gave around 16.36% accuracy for all genres correct prediction. This accuracy is considerably better than the accuracy achieved in the source paper(12.34%) where they have used ResNet34 model instead of ResNet50. Here are the top 5 movies on the basis of their recall score -

   | **Genre**  | **Recall** | **F1-score** | **Accuracy** |
   | ---------- | ---------- | ------------ | ------------ |
   | Comedy     | 0.62       | 0.42         | 46%          |
   | Romance    | 0.29       | 0.20         | 66%          |
   | Adventure  | 0.25       | 0.12         | 71%          |
   | Documentary| 0.18       | 0.13         | 80%          |
   | Drama      | 0.14       | 0.22         | 51%          |
