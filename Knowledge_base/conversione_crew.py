#-------------------------------------------------------------
#Crea il file crew.pl con i fatti ruoli_produzione(CrewID, Nome, Genere).
#-------------------------------------------------------------
import pandas as pd
import ast


#legge il file csv
crew = pd.read_csv("Data preparation/credits_originale.csv")

# crea un file production_jobs.pl con i fatti ruoli_produzione(CrewID, Nome, Genere).
with open('Knowledge_base/crew.pl', 'w', newline='', encoding='utf-8') as file:
    # scrive header
    file.write("%membro_crew(CrewID, Nome, Genere)")
    file.write("\n")

    lista_crew_inseriti = []

    for i in range(len(crew)):
        for crew_member in ast.literal_eval(crew["crew"][i]):
            id = crew_member["id"]

            # per evitare di inserire più volte lo stesso membro della produzione, controlliamo che l'id non sia già presente nella lista
            if id not in lista_crew_inseriti:
                lista_crew_inseriti.append(id)

                name = str(crew_member["name"])
                gender = crew_member["gender"]

                #correzione di alcuni nomi e lowercase
                name = name.lower()
                name = name.replace("'", " ")
                name = name.replace('"', " ")
                name = name.replace("(", "")
                name = name.replace(")", "")
                name = name.replace(",", "")


                # scrive il fatto nel file production_jobs.pl
                file.write(f"membro_crew({id}, \"{name}\", {gender}).")
                file.write("\n")
