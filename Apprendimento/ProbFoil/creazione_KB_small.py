#------------------------------------------------------------
# Unisce i file .pl nella cartekka Knlowledge_base in un unico file, per poter essere usato da ProbFoil
#------------------------------------------------------------

import pandas as pd
from pyswip import Prolog 
import random

#numero di esempi positivi e negativi per l'apprendimento
#cambiare questi valori modifica anche il numero di movies, actors, crew, roles e production_jobs che vengono considerati
N_POSITIVE_EXAMPLES = 25
N_NEGATIVE_EXAMPLES = 25

#Se RANDOM = True, gli esempi positivi e negativi vengono scelti casualmente, altimenti 
# vengono scelti con l'ordine con cui compaiono nel file movies_new.pl
RANDOM = True


#Istanziamo pyswip
prolog = Prolog()
prolog.consult("Knowledge_base/movies.pl")
prolog.consult("Knowledge_base/regole.pl")

#Vogliamo eliminare la proprietà vote_average, perchè non è il target dell'apprendimento
#Creiamo un nuovo file movies_new.pl, senza la proprietà vote_average

#leggo i file .pl
file1 = open("Knowledge_base/actors.pl", "r", encoding="utf-8")
file2 = open("Knowledge_base/crew.pl", "r", encoding="utf-8")
file3 = open("Apprendimento/ProbFoil/movies_new.pl", "r", encoding="utf-8") #file senza la proprietà vote_average
file4 = open("Knowledge_base/production_jobs.pl", "r", encoding="utf-8")
file5 = open("Knowledge_base/roles.pl", "r", encoding="utf-8")

#Creazione del file KB.pl

with open("Apprendimento/ProbFoil/KB_small.pl", "w", errors= "ignore") as KB_file:

    # Scriviamo le istruzioni per ProbFoil
    KB_file.write("% Modes\n")
    KB_file.write("mode(film(-, -, +, -, -, -, -, -, -, -, - )).\n")
    KB_file.write("mode(film(-, c, +, -, -, -, -, -, -, -, - )).\n")
    KB_file.write("mode(film(-, -, +, c, -, -, -, -, -, -, - )).\n")
    KB_file.write("mode(film(-, -, +, -, -, c, -, -, -, -, - )).\n")
    KB_file.write("mode(ruolo_crew(+,-, -)).\n")
    KB_file.write("mode(ruolo_crew(+,-, c)).\n")
    KB_file.write("mode(ruolo(+,-, -)).\n")
    KB_file.write("mode(ruolo(+,-, c)).\n")
    KB_file.write("mode(membro_crew(+,-, -)).\n")
    KB_file.write("mode(membro_crew(+,-, c)).\n")
    KB_file.write("mode(membro_crew(+,c, -)).\n")
    KB_file.write("mode(membro_crew(+,c, c)).\n")
    KB_file.write("mode(membro_crew(+,-, +)).\n")
    KB_file.write("mode(attore(-,+, -)).\n")
    KB_file.write("mode(attore(c,+, -)).\n")
    KB_file.write("mode(attore(-,+, c)).\n")
    KB_file.write("mode(attore(c,+, c)).\n")
    KB_file.write("mode(attore(-,+, +)).\n")
    KB_file.write("\n")

    KB_file.write("% Definizioni dei tipi\n")
    KB_file.write("base(attore(nome,actorID,gender)).\n")
    KB_file.write("base(membro_crew(crewID, nome, gender)).\n")
    KB_file.write("base(film(budget, genres, movieID, original_language, popularity, production_companies, release_date, revenue, runtime, title, vote_count)).\n")
    KB_file.write("base(ruolo_crew(movieID, crewID ,job)).\n")
    KB_file.write("base(ruolo(movieID, actorID ,role)).\n")
    KB_file.write("base(high_vote_average(movieID)).\n")
    KB_file.write("\n")

    KB_file.write("% Target\n")
    KB_file.write("learn(high_vote_average/1).\n")
    KB_file.write("\n")

    KB_file.write("% Come generare esempi negativi\n")
    KB_file.write("example_mode(closed).\n")
    KB_file.write("\n")


    #servono per selezionare N esempi positivi e M esempi negativi
    # dipendono dai valori di N_POSITIVE_EXAMPLES e N_NEGATIVE_EXAMPLES
    nuova_lista_voti_alti = []
    nuova_lista_voti_bassi = []

     #servono degli esempi positivi per l'apprendimento
    KB_file.write("\n")
    lista_voti_alti = list(prolog.query("film_voti_alti_ID(Lista)"))[0]["Lista"]

    if RANDOM:
        random.shuffle(lista_voti_alti)

    KB_file.write("% Esempi positivi\n")

    i = 0
    for movieID in lista_voti_alti:
        if i == N_POSITIVE_EXAMPLES + 1 :
            break
        KB_file.write(f"high_vote_average({movieID}).\n")
        i += 1
        nuova_lista_voti_alti.append(movieID)
       

    #servono degli esempi negativi per l'apprendimento
    KB_file.write("\n")
    lista_voti_bassi = list(prolog.query("film_voti_bassi(Lista)"))[0]["Lista"]

    if RANDOM:
        random.shuffle(lista_voti_bassi)
        
    KB_file.write("% Esempi negativi\n")

    i = 0
    for movieID in lista_voti_bassi:

        if i == N_NEGATIVE_EXAMPLES + 1:    
            break
        KB_file.write(f"0.0::high_vote_average({movieID}).\n")
        i += 1
        nuova_lista_voti_bassi.append(movieID)
      

    # scriviamo la base di conoscenza in un unico file
        
    #uniamo le liste di film con voti alti e bassi
    lista_film_considerati = nuova_lista_voti_alti + nuova_lista_voti_bassi
    
    # di movies prendiamo solo i film il cui id è presente in lista_film_considerati
    KB_file.write("\n")
    KB_file.write("% film(budget, genres, id, original_language, popularity, production_companies, release_date, revenue, runtime, title, vote_average, vote_count).\n")
    for line in file3:
        linea  = str(line)
        
        #saltiamo i commenti
        if linea[0] == "%":
            continue
        
        virgola1 = linea.find(",")
        virgola2 = linea.find(",", virgola1+1)
        virgola3 = linea.find(",", virgola2+1)
        ID = linea[virgola2+1:virgola3]
        ID = ID.strip()
        ID = int(ID)
       

        if ID in lista_film_considerati:
            KB_file.write(linea)
        
    KB_file.write("\n")

    #di roles prendiamo solo i ruoli che compaiono nei film considerati, e teniamo gli ID degli attori corrispodenti
    attori_considerati_ID = []
    KB_file.write("%ruolo(movieID, actorId ,role).\n")
    for line in file5:
        linea  = str(line)

        #saltiamo i commenti
        if linea[0] == "%":
            continue

        parentesi1 = linea.find("(")
        virgola1 = linea.find(",")
        ID = linea[parentesi1+1:virgola1]
        ID = ID.strip()
        ID = int(ID)

        virgola2 = linea.find(",", virgola1+1)
        actorID = linea[virgola1+1:virgola2]
        actorID = actorID.strip()

        if ID in lista_film_considerati:
            KB_file.write(linea)
            attori_considerati_ID.append(actorID)

    KB_file.write("\n")
    
    #di production_jobs prendiamo solo i ruoli che compaiono nei film considerati, e teniamo gli ID dei membri crew corrispodenti
    membri_crew_considerati_ID = []
    KB_file.write("%ruolo_crew(movieID, crewID ,job).\n")
    for line in file4:
        linea  = str(line)

        #saltiamo i commenti
        if linea[0] == "%":
            continue

        parentesi1 = linea.find("(")
        virgola1 = linea.find(",")
        ID = linea[parentesi1+1:virgola1]
        ID = ID.strip()
        ID = int(ID)

        virgola2 = linea.find(",", virgola1+1)
        crewID = linea[virgola1+1:virgola2]
        crewID = crewID.strip()

        if ID in lista_film_considerati:
            KB_file.write(linea)
            membri_crew_considerati_ID.append(crewID)

    KB_file.write("\n")
    
    #di actors prendiamo solo gli attori che compaiono nei film considerati
    KB_file.write("%attore(Nome,Id,Gender)\n")
    for line in file1:
        linea  = str(line)

        #saltiamo i commenti
        if linea[0] == "%":
            continue
        
        virgola1 = linea.find(",")
        virgola2 = linea.find(",", virgola1+1)
        ID = linea[virgola1+1:virgola2]
        ID = ID.strip()

        if ID in attori_considerati_ID:
            KB_file.write(linea)

    KB_file.write("\n")
    
    #di crew prendiamo solo i membri crew che compaiono nei film considerati
    KB_file.write("%membro_crew(ID, Nome, Genere)\n")
    for line in file2:
        linea  = str(line)

        #saltiamo i commenti
        if linea[0] == "%":
            continue

        parentesi1 = linea.find("(")
        
        virgola1 = linea.find(",")
        ID = linea[parentesi1+1:virgola1]
        ID = ID.strip()

        if ID in membri_crew_considerati_ID:
            KB_file.write(linea)
            

          
    


