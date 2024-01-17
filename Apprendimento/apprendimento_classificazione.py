#-----------------------------------------------------------------------------------------
# Crea due modelli di classificazione (Random Forest e Albero di decisione) e li valuta
# Utilizza il dataset dataset_apprendimento_classificazione.csv
#-----------------------------------------------------------------------------------------


from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, fbeta_score, precision_score, recall_score, confusion_matrix
from sklearn.preprocessing import OneHotEncoder
from matplotlib import pyplot as plt

import os
import joblib
import pandas as pd


#Se impostato a False, i modelli vengono ricreati anche se già esistenti
KEEP_TRAINING_DATA_RF = True
KEEP_TRAINING_DATA_DT = True

#Carica il dataset
dataset = pd.read_csv("Apprendimento/dataset_apprendimento_classificazione.csv")

#Selezioniamo features di input e feature target
features = ['attore1','attore2','attore3','regista','sceneggiatore','genres','original_language','production_companies']
target = ['vote_average']

#Carichiamo l'encoder (il target è già un valore numerico e non ha bisogno di encoding)
encoder = joblib.load("Apprendimento/encoder.pkl")
encoded_dataset_features = encoder.transform(dataset[features])

#Training set e test set
features_train, features_test, target_train, target_test = train_test_split(encoded_dataset_features, dataset[target], test_size = 0.2, random_state = 42)

#Creazione dei modelli
model = RandomForestClassifier(n_estimators = 50)
model2 = DecisionTreeClassifier(max_depth = 20)

#Apprendimento solo se i modelli non sono già stati creati
if os.path.exists("Apprendimento/modello_classificazione_RF.pkl") and KEEP_TRAINING_DATA_RF:
    model = joblib.load("Apprendimento/modello_classificazione_RF.pkl")
else:
    model.fit(features_train, target_train)
    #Salvataggio del modello
    joblib.dump(model, "Apprendimento/modello_classificazione_RF.pkl")

if os.path.exists("Apprendimento/modello_classificazione_DT.pkl") and KEEP_TRAINING_DATA_DT:
    model2 = joblib.load("Apprendimento/modello_classificazione_DT.pkl")

else:
    model2.fit(features_train, target_train)
    #Salvataggio del modello
    joblib.dump(model2, "Apprendimento/modello_classificazione_DT.pkl")


#Predizioni
predictions = model.predict(features_test)
predictions2 = model2.predict(features_test)

#Valutazione dei modelli
print("----------------------------------------")
print("Modello: Random Forest")
print ("Accuracy: ", accuracy_score(target_test, predictions, normalize=True))
print ("Precision: ", precision_score(target_test, predictions, average= 'weighted'))
print ("Recall: ", recall_score(target_test, predictions, average='weighted'))
print ("F1: ", fbeta_score(target_test, predictions, beta=1, average='weighted'))
print ("----------------------------------------")

print("----------------------------------------")
print("Modello: Albero di decisione")
print ("Accuracy: ", accuracy_score(target_test, predictions2, normalize=True))
print ("Precision: ", precision_score(target_test, predictions2, average= 'weighted'))
print ("Recall: ", recall_score(target_test, predictions2, average='weighted'))
print ("F1: ", fbeta_score(target_test, predictions2, beta=1, average='weighted'))
print ("----------------------------------------")

#Plot per Random Forest
confusion_rf = confusion_matrix(target_test, predictions)
plt.imshow(confusion_rf, cmap = 'Blues')
plt.title("Random Forest - Matrice di Confusione")
plt.colorbar()
plt.xlabel("Valori Predetti")
plt.ylabel("Valori Veri")
plt.show()

#Plot per Albero di Decisione
confusion_dt = confusion_matrix(target_test, predictions2)
plt.imshow(confusion_dt, cmap = 'Reds')
plt.title("Albero di Decisione - Matrice di Confusione")
plt.colorbar()
plt.xlabel("Valori Predetti")
plt.ylabel("Valori Veri")
plt.show()
