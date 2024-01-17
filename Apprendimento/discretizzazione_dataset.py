#--------------------------------------------------------------------------------------------------------------------------------------------
# Discretizza la feature vote_average del "dataset_apprendimento_regressione.csv" in modo da poterla usare per task di classificazione
#--------------------------------------------------------------------------------------------------------------------------------------------

import pandas as pd

dataset = pd.read_csv("Apprendimento/dataset_apprendimento_regressione.csv")

#Per ogni riga, se il valore di vote_average è minore di 6, lo sostituisce con 0, altrimenti con 1
with open("Apprendimento/dataset_apprendimento_classificazione.csv", "w", encoding = 'utf-8') as file:
    
    #Definisce l'intestazione del file
    file.write("id,attore1,attore2,attore3,regista,sceneggiatore,budget,genres,original_language,popularity,production_companies,release_date,revenue,runtime,title,vote_average,vote_count\n")
    
    for i in range(len(dataset)):
        
        if float(dataset['vote_average'][i]) < 7:
            vote_average = "0"
        
        elif float(dataset['vote_average'][i]) >= 7:
            vote_average = "1"
        
        #Valori di una riga:
        id = str(dataset['id'][i])
        attore1 = str(dataset['attore1'][i])
        attore2 = str(dataset['attore2'][i])
        attore3 = str(dataset['attore3'][i])
        regista = str(dataset['regista'][i])
        sceneggiatore = str(dataset['sceneggiatore'][i])
        budget = str(dataset['budget'][i])
        genres = str(dataset['genres'][i])
        original_language = str(dataset['original_language'][i])
        popularity = str(dataset['popularity'][i])
        production_companies = str(dataset['production_companies'][i])
        release_date = str(dataset['release_date'][i])
        revenue = str(dataset['revenue'][i])
        runtime = str(dataset['runtime'][i])
        title = str(dataset['title'][i])
        vote_count = str(dataset['vote_count'][i])

        #Scrive la riga nel file
        file.write(id + "," + attore1 + "," + attore2 + "," + attore3 + "," + regista + "," + sceneggiatore + "," + budget + "," + genres + "," + original_language + "," + popularity + "," + production_companies + "," + release_date + "," + revenue + "," + runtime + "," + title + "," + vote_average + "," + vote_count + "\n")