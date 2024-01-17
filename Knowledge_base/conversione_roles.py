#----------------------------------------------------------
# crea il file roles.pl con i fatti crew(MovieID, ActorId ,Role).
#----------------------------------------------------------

import pandas as pd
import ast

#legge il file csv
roles = pd.read_csv("Data preparation/credits.csv")

# crea un file roles.pl con i fatti crew(MovieID, ActorId ,Role).
with open('Knowledge_base/roles.pl', 'w', newline='',encoding='utf-8') as file:
    #scrive header
    file.write (f"%crew(MovieID, ActorId ,Role)")
    file.write("\n")
    
    for i in range(len(roles)):
        for j in range(len(ast.literal_eval(roles["cast"][i]))):

            actor_id = ast.literal_eval(roles["cast"][i])[j]["id"]
            movie_id = roles["id"][i]
            role = str(ast.literal_eval(roles["cast"][i])[j]["character"])
                
            #correzione di alcuni nomi: rimuoviamo gli apici, usati in alcuni nomi e i doppi apici usati per i soprannomi, rimuoviamo le parentesi
            role = role.replace("'", " ")
            role = role.replace('"', "")
            role = role.replace("(", "")
            role = role.replace(")", "")
            role = role.replace ("/", " ")
            role = role.replace ("\\", " ")
            role = role.lower()
        

            file.write(f'ruolo({movie_id},{actor_id},\"{role}\").\n')
                