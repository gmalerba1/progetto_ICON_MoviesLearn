#-----------------------------------------------------------------------------------------
# Per poter usare SKlearn su stringhe è necessario effettuare un encoding delle features.
# L'encoding è usato sia per il training che per la predizione.
#-----------------------------------------------------------------------------------------

import joblib
import pandas as pd
from sklearn.preprocessing import OneHotEncoder


#Caricamento del dataset
dataset = pd.read_csv("Apprendimento/dataset_apprendimento_classificazione.csv")

#Selezione delle features da codificare
features = ['attore1','attore2','attore3','regista','sceneggiatore','genres','original_language','production_companies']

#Encoding delle features
encoder = OneHotEncoder(handle_unknown ='ignore')
encoder.fit(dataset[features])

encoded_dataset_features = encoder.transform(dataset[features])

#Salvataggio del modello di encoding
joblib.dump(encoder, "Apprendimento/encoder.pkl")
