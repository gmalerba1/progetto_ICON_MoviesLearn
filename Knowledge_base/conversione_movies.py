#----------------------------------------------------
# Conversione del dataset movies.csv in un file prolog movies.pl
#----------------------------------------------------


import pandas as pd
from datetime import datetime

def csv_to_prolog(csv_file, prolog_file):
    df = pd.read_csv(csv_file)
    with open(prolog_file, 'w', encoding='utf-8') as f:
        #scrive header
        f.write ('% film(budget, genres, id, original_language, popularity, production_companies, release_date, revenue, runtime, title, vote_average, vote_count).\n')
        for index, row in df.iterrows():
            budget = row['budget']
            genres = row['genres']
            id = row['id']
            original_language = row['original_language']
            popularity = row['popularity']
            #rimuoviamo i seguenti caratteri, per non avere problemi con prolog
            production_companies = str(row['production_companies']).replace("'", "")
            production_companies = production_companies.replace('"', "")
            production_companies = production_companies.replace(".", "")
            production_companies = production_companies.replace(",", "")
            production_companies = production_companies.replace("\\", "")
            production_companies = production_companies.replace("(", "")
            production_companies = production_companies.replace(")", "")

            release_date = row['release_date']
            revenue = row['revenue']
            runtime = row['runtime']
            #rimuoviamo i seguenti caratteri, per non avere problemi con prolog
            title = str(row['title']).replace("'", "") 
            title = title.replace('"', "")
            title = title.replace(".", "")
            title = title.replace(",", "")
            title = title.replace("(", "")
            title = title.replace(")", "")


            #di release date teniamo solo l'anno
            if str(release_date) != 'nan':
                data = datetime.strptime(str(release_date), "%Y-%m-%d")
                release_date = data.year
            else:
                release_date = ''
            
            vote_average = row['vote_average']
            vote_count = row['vote_count']
            
            #controlli per valori nulli
            if str(genres) == 'nan':
                genres = ''
            if str(original_language) == 'nan':
                original_language = ''
            if str(production_companies) == 'nan':
                production_companies = ''
            if str(title) == 'nan':
                title = ''
            if str(vote_average) == 'nan':
                vote_average = ''
            if str(vote_count) == 'nan':
                vote_count = ''
            if str(popularity) == 'nan':
                popularity = ''
            if str(runtime) == 'nan':
                runtime = 0
            
            #lowercase per alcuni attributi
            if type(genres) == str:
                genres = genres.lower()
            if type(original_language) == str:
                original_language = original_language.lower()
            if type(production_companies) == str:
                production_companies = production_companies.lower()
            if type(title) == str:
                title = title.lower()

            f.write(f'film({budget}, \"{genres}\", {id}, \"{original_language}\", {popularity}, \"{production_companies}\", \"{release_date}\", {revenue}, {runtime}, \"{title}\", {vote_average}, {vote_count}).\n')

csv_to_prolog('Data preparation/Dataset finali/movies_final.csv', 'Knowledge_base/movies.pl')
