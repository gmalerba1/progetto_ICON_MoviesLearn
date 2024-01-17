#--------------------------------------------------------------
#crea il file production_jobs.pl con i fatti crew(MovieID, CrewID ,Job).
#--------------------------------------------------------------

import pandas as pd
import ast

#legge il file csv
crew = pd.read_csv("Data preparation/credits.csv")

# crea un file production_jobs.pl con i fatti crew(MovieID, CrewID ,Job).
with open('Knowledge_base/production_jobs.pl', 'w', newline='',encoding='utf-8') as file:
    #scrive header
    file.write (f"%ruolo_crew(MovieID, CrewID ,Job)")
    file.write("\n")

    
    for i in range(len(crew)):
        for j in range(len(ast.literal_eval(crew["crew"][i]))):
            
            id = ast.literal_eval(crew["crew"][i])[j]["id"]
            movie_id = crew["id"][i]
            job = str(ast.literal_eval(crew["crew"][i])[j]["job"])
                
            #correzione di alcuni nomi: rimuoviamo gli apici, usati in alcuni nomi e i doppi apici usati per i soprannomi
            job = job.replace("'", " ")
            job = job.replace('"', "")
            job = job.lower()

            file.write(f'ruolo_crew({movie_id},{id},\"{job}\").\n')