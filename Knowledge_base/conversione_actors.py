#--------------------------------------------------------------------
#crea i file actors.pl, crew.pl, roles.pl e production.pl a partire dal file credits.csv
#credits.csv contiene delle tabelle innestate, dalle quali andiamo a scomporre dei file separati. 
#--------------------------------------------------------------------

import pandas as pd 
import ast 

#legge il file csv
actors = pd.read_csv("Data preparation/credits_originale.csv")

# crea un file actors.pl con i fatti attore(Nome,Id,gender).
with open('Knowledge_base/actors.pl', 'w', newline='',encoding='utf-8') as file:
    #scrive header
    file.write (f"%attore(Nome,Id,Gender)")
    file.write("\n")


    lista_attori_inseriti = []
    
    for i in range(len(actors)):
        for j in range(len(ast.literal_eval(actors["cast"][i]))):

            id = ast.literal_eval(actors["cast"][i])[j]["id"]
            
            #per evitare di inserire più volte lo stesso attore, controlliamo che l'id non sia già presente nella lista
            if id not in lista_attori_inseriti:
                lista_attori_inseriti.append(id)

                name = str(ast.literal_eval(actors["cast"][i])[j]["name"])
                gender = ast.literal_eval(actors["cast"][i])[j]["gender"]
            
                #correzione di alcuni nomi: rimuoviamo gli apici, usati in alcuni nomi e i doppi apici usati per i soprannomi
                name = name.replace("'", " ")
                name = name.replace('"', "")
                name = name.replace(",", "")
                name = name.lower()

                string = f'attore(\"{name}\",{id},{gender}).'
                file.write(f'attore(\"{name}\",{id},{gender}).\n')
                



           