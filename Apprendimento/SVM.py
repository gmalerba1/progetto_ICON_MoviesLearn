#-----------------------------------------------------------------------------------------------------------------------
# Crea un modello di classificazione binaria SVM e lo valuta, utilizzando "dataset_apprendimento_classificazione.csv"
# Le previsioni con SVM possono essere effettuate eseguendo questo file
#-----------------------------------------------------------------------------------------------------------------------

from sklearn.metrics import accuracy_score, fbeta_score, precision_score, recall_score, confusion_matrix
from sklearn.model_selection import train_test_split, GridSearchCV
from sklearn.metrics import classification_report
from sklearn.preprocessing import OneHotEncoder
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from matplotlib import pyplot as plt
from sklearn.svm import SVC

import seaborn as sns
import pandas as pd
import joblib
import os 

dataset = pd.read_csv("Apprendimento/dataset_apprendimento_classificazione.csv")
X = dataset[['attore1', 'attore2', 'attore3', 'regista', 'sceneggiatore', 'genres', 'original_language', 'production_companies']]
y = dataset['vote_average']

cat_cols = ['attore1', 'attore2', 'attore3', 'regista', 'sceneggiatore', 'genres', 'original_language', 'production_companies']

#Crea il preprocessore
preprocessor = ColumnTransformer([('cat', OneHotEncoder(handle_unknown = 'ignore'), cat_cols)])

#Crea la pipeline
clf = Pipeline(steps = [('preprocessor', preprocessor),('classifier', SVC())])

#Definisci la griglia di parametri
param_grid = {
    'classifier__C': [0.1, 1, 10],
    'classifier__gamma': [1, 0.1, 0.01]
}

#Crea il modello di ricerca della griglia
grid_search = GridSearchCV(clf, param_grid, cv = 2)

#Dividi il dataset in training e test set
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 42)

#Controllo se il modello è già stato addestrato
if os.path.exists("Apprendimento/modello_classificazione_SVM.pkl"):
    grid_search = joblib.load("Apprendimento/modello_classificazione_SVM.pkl")
else:
    #Addestramento del modello
    grid_search.fit(X_train, y_train)
    #Salavataggio del modello
    joblib.dump(grid_search, "Apprendimento/modello_classificazione_SVM.pkl")

#Stampa i migliori parametri trovati
print("Best parameters: \n", grid_search.best_params_)

#Previsione sul test set
y_pred = grid_search.predict(X_test)

#Valutazione del modello
print(classification_report(y_test, y_pred))

print ("-------------------------------------------------")
print ("Modello: SVM")
print ("Accuracy: ", accuracy_score(y_test, y_pred))
print ("Precision: ", precision_score(y_test, y_pred, average='weighted'))
print ("Recall: ", recall_score(y_test, y_pred, average='weighted'))
print ("F1: ", fbeta_score(y_test, y_pred, average='weighted', beta=1))
print ("-------------------------------------------------")


cm = confusion_matrix(y_test, y_pred)
plt.figure(figsize = (10,7))
sns.heatmap(cm, annot = True, fmt = 'd', cmap='Blues')
plt.title('Matrice di Confusione')
plt.xlabel('Previsto')
plt.ylabel('Verità')
plt.xticks([0.5,1.5], ['Negativo', 'Positivo'])
plt.yticks([0.5,1.5], ['Negativo', 'Positivo'])
plt.show()

#Predizione
while True:
    print("Inserisci i dati del film")
    attore1 = input("Attore 1: ")
    attore2 = input("Attore 2: ")
    attore3 = input("Attore 3: ")
    regista = input("Regista: ")
    sceneggiatore = input("Sceneggiatore: ")
    genres = input("Genere: ")
    original_language = input("Lingua originale: ")
    production_companies = input("Casa di produzione: ")
    new_data = pd.DataFrame([{
        'attore1': attore1.lower(),
        'attore2': attore2.lower(),
        'attore3': attore3.lower(),
        'regista': regista.lower(),
        'sceneggiatore': sceneggiatore.lower(),
        'genres': genres.lower(),
        'original_language': original_language.lower(),
        'production_companies': production_companies.lower()
    }])
    
    predictions = grid_search.predict(new_data)
    
    if predictions == 0:
        print("Bad movie\n")
    else:
        print("Good movie\n")
