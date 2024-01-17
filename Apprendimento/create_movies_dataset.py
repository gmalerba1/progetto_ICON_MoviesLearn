#-------------------------------------------------------------------------------------------------
# Unifica i dataset movies e credits, per poter poi eseguire su di esso task di regressione
#-------------------------------------------------------------------------------------------------

import pandas as pd


credits = pd.read_csv("Data preparation/Dataset finali/credits_simple.csv")
movies = pd.read_csv("Data preparation/Dataset finali/movies_final.csv")

#Unisco i due dataset
dataset = pd.merge(credits, movies, on = 'id')

#Elimino alcuni caratteri da alcuni campi per ogni riga
for index, row in dataset.iterrows():

    #Variabili da modificare
    attore1 = str(row['attore1'])
    attore2 = str(row['attore2'])
    attore3 = str(row['attore3'])
    regista = str(row['regista'])
    sceneggiatore = str(row['sceneggiatore'])
    title = str(row['title'])
    genres = str(row['genres'])
    production_companies = str(row['production_companies'])
    budget = str(row['budget'])
    revenue = str(row['revenue'])
    popularity = str(row['popularity'])
    release_date = str(row['release_date'])
    runtime = str(row['runtime'])
    vote_average = str(row['vote_average'])
    original_language = str(row['original_language'])
    vote_count = str(row['vote_count'])


    #Modifica delle variabili
    attore1 = attore1.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    attore2 = attore2.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    attore3 = attore3.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    regista = regista.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    sceneggiatore = sceneggiatore.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    title = title.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    genres = genres.replace("'", "").replace(",","").replace(".","").replace("-"," ")
    production_companies = production_companies.replace("'", "").replace(",","").replace(".","").replace("-"," ")

    #Caratteri minuscoli per tutti i campi
    attore1 = attore1.lower()
    attore2 = attore2.lower()
    attore3 = attore3.lower()
    regista = regista.lower()
    sceneggiatore = sceneggiatore.lower()
    title = title.lower()
    genres = genres.lower()
    production_companies = production_companies.lower()
    

    lista_feature = [attore1, attore2, attore3, regista, sceneggiatore, title, genres, production_companies, budget, revenue, popularity, release_date, runtime, vote_average, original_language, vote_count]

    #Salvataggio delle modifiche
    dataset.at[index, 'attore1'] = attore1
    dataset.at[index, 'attore2'] = attore2
    dataset.at[index, 'attore3'] = attore3
    dataset.at[index, 'regista'] = regista
    dataset.at[index, 'sceneggiatore'] = sceneggiatore
    dataset.at[index, 'title'] = title
    dataset.at[index, 'genres'] = genres
    dataset.at[index, 'production_companies'] = production_companies

    #Salva la riga solo se non contiene valori nulli o nan
    if "nan" in lista_feature or "" in lista_feature or " " in lista_feature:
        dataset.drop(index, inplace = True)


#Salvataggio del dataset
dataset.to_csv("Apprendimento/dataset_apprendimento_regressione.csv", index = False)
