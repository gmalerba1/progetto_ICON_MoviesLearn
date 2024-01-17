#------------------------------------------------------------------------------------------------------------
#Crea un modello di regressione lineare e lo valuta, usa il dataset dataset_apprendimento_regressione.csv
#------------------------------------------------------------------------------------------------------------

from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, mean_absolute_error
import matplotlib.pyplot as plt
import os
import joblib
import pandas as pd

#Se impostato a False, il modello viene ricreato anche se già esistente
KEEP_TRAINING_DATA = True

#Carica il dataset
dataset = pd.read_csv("Apprendimento/dataset_apprendimento_regressione.csv")

#Features di input e feature target
features = ['attore1','attore2','attore3','regista','sceneggiatore', 'genres','original_language','production_companies']
target = ['vote_average']

#Encoding delle features con OneHotEncoding
encoder = joblib.load("Apprendimento/encoder.pkl")
encoded_dataset_features = encoder.transform(dataset[features])

#Training set e test set
features_train, features_test, target_train, target_test = train_test_split(encoded_dataset_features, dataset[target], test_size=0.2, random_state=42)    

#Creazione modello di regressione lineare
model = LinearRegression()

#Addestramento solo se il modello non è già stato creato
if os.path.exists("Apprendimento/modello_regressione.pkl") and KEEP_TRAINING_DATA:
    model = joblib.load("Apprendimento/modello_regressione.pkl")
else:
    model.fit(features_train, target_train)
    #Salvataggio del modello
    joblib.dump(model, "Apprendimento/modello_regressione.pkl")


#Predizione
predictions = model.predict(features_test)


#Valutazione del modello
print("----------------------------------------")
print("Modello: Linear Regression")
print ("Mean Squared Error: ", mean_squared_error(target_test, predictions))
print ("Mean Absolute Error: ", mean_absolute_error(target_test, predictions))
print ("R2: ", model.score(features_train, target_train)) #R2 score
print ("----------------------------------------")


#Plot
plt.figure()
plt.title("Scatter plot")
plt.xlabel("Predicted values")
plt.ylabel("Actual values")
plt.scatter(predictions, target_test, color = "b")
plt.show()
