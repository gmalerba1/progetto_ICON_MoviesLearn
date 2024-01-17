#-----------------------------------------------------------------------------------------------------------------------
# Contiene diverse funzioni per la predizione del voto di un film, realizzate con più modelli di machine learning
#-----------------------------------------------------------------------------------------------------------------------

import joblib
import pandas as pd

#Funzione di predizionde per Random Forest
def predict_random_forest(lista_input):

    attore1 = lista_input[0]
    attore2 = lista_input[1]
    attore3 = lista_input[2]
    regista = lista_input[3]
    sceneggiatore = lista_input[4]
    genres = lista_input[5]
    original_language = lista_input[6]
    production_companies = lista_input[7]

   
    #Caricamento del modello
    model = joblib.load("Apprendimento/modello_classificazione_RF.pkl")

    #Caricamento dell'encoder
    encoder = joblib.load("Apprendimento/encoder.pkl")

    vettore_input = [attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies]
    input_data = pd.DataFrame([vettore_input], columns = ["attore1", "attore2", "attore3", "regista", "sceneggiatore","genres", "original_language", "production_companies"])
    input_encoded = encoder.transform(input_data)

    #Predizione
    output = model.predict(input_encoded)
    output = str(output)

    #Converte le classi numeriche in stringhe
    if output == "[0]":
        output = "Bad movie"
    elif output == "[1]":
        output = "Good movie"

    return output


#Funzione di predizione per albero di decisione
def predict_albero_decisione(lista_input):

    attore1 = lista_input[0]
    attore2 = lista_input[1]
    attore3 = lista_input[2]
    regista = lista_input[3]
    sceneggiatore = lista_input[4]
    genres = lista_input[5]
    original_language = lista_input[6]
    production_companies = lista_input[7]
    
    #Caricamento del modello
    model = joblib.load("Apprendimento/modello_classificazione_DT.pkl")
    
    #Caricamento dell'encoder
    encoder = joblib.load("Apprendimento/encoder.pkl")

    vettore_input = [attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies]
    input_data = pd.DataFrame([vettore_input], columns = ["attore1", "attore2", "attore3", "regista", "sceneggiatore","genres", "original_language", "production_companies"])
    input_encoded = encoder.transform(input_data)

    #Predizione
    output = model.predict(input_encoded)
    output = str(output)

    if output == "[0]":
        output = "Bad movie"
    elif output == "[1]":
        output = "Good movie"

    return output


#Funzione di predizione per Regressione lineare
def predict_regressione(lista_input):

    attore1 = lista_input[0]
    attore2 = lista_input[1]
    attore3 = lista_input[2]
    regista = lista_input[3]
    sceneggiatore = lista_input[4]
    genres = lista_input[5]
    original_language = lista_input[6]
    production_companies = lista_input[7]
    
    #Caricamento del modello
    model = joblib.load("Apprendimento/modello_regressione.pkl")
    
    #Caricamento dell'encoder
    encoder = joblib.load("Apprendimento/encoder.pkl")

    vettore_input = [attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies]
    input_data = pd.DataFrame([vettore_input], columns = ["attore1", "attore2", "attore3", "regista", "sceneggiatore","genres", "original_language", "production_companies"])
    input_encoded = encoder.transform(input_data)

    #Predizione
    output = model.predict(input_encoded)
    output = str(output)

    #La regressione può restituire valori maggiori di dieci
    output = float(output.strip("[]"))
    if output > 10:
        output = 10
    elif output < 1:
        output = 1

    return output
