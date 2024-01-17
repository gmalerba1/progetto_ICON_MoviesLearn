#------------------------------------------------------------------------------------------
# Permette di accedere alle funzioni di "py_to_pl.py"
# Ripulisce i dati ottenuti da Prolog e li restituisce in un formato più leggibile 
#------------------------------------------------------------------------------------------

from Knowledge_base import py_to_pl
from Apprendimento import predizione

import utils


#Verifica la presenza di un attore in un film, restituendo una stringa in base alla risposta
def verifica_presenza_attore(attore, film):
    attore = str(attore).lower()
    film = str(film).lower()
    risposta = py_to_pl.ha_recitato_in(attore, film)
    if risposta:
        string = "L'attore " + attore + " ha recitato nel film " + film
        return string
    else:
        string = "L'attore " + attore + " non ha recitato nel film " + film
        return string

#Verifica se un regista ha diretto un film, restituendo una stringa in base alla risposta 
def verifica_presenza_regista(regista, film):
    regista = str(regista).lower()
    film = str(film).lower()
    risposta = py_to_pl.diretto_da(regista, film)
    if risposta:
        string = "Il regista " + regista + " ha diretto il film " + film
        return string
    else:
        string = "Il regista " + regista + " non ha diretto il film " + film
        return string

#Restituisce una lista di film dal voto alto (voto >= 9)
def film_voti_alti():
    list = py_to_pl.film_voti_alti()
    returnstring = "I film con voto alto sono: \n"
    for film in list:
        string = utils.string_cleaner(film)
        returnstring += string + "\n"
    return returnstring

#Verifica se un attore ha lavorato con un regista
def collabora(attore, regista):
    attore = str(attore).lower()
    regista = str(regista).lower()
    risposta = py_to_pl.ha_lavorato_con(regista, attore)
    if risposta:
        string = "L'attore " + attore + " ha lavorato con il regista " + regista
        return string
    else:
        string = "L'attore " + attore + " non ha lavorato con il regista " + regista
        return string
    
#Verifica se un film è stato rilasciato in un dato anno
def rilasciato_nell_anno(film, anno):
    film = str(film).lower()
    risposta = py_to_pl.rilasciato_nell_anno(film, anno)
    if risposta:
        string = "Il film " + film + " è stato rilasciato nell'anno " + anno
        return string
    else:
        string = "Il film " + film + " non è stato rilasciato nell'anno " + anno
        return string

#Restituisce una lista di film costosi, con un budget maggiore di 100 milioni di dollari
def film_costosi():
    list = py_to_pl.film_costoso()
    returnstring = "I film più costosi sono: \n"
    for film in list:
        string = utils.string_cleaner(film)
        returnstring += string + "\n"
    return returnstring

#Restituisce una stringa contenente il cast del film inserito, se presente
def cast(film):
    film = str(film).lower()
    cast = py_to_pl.cast_film(film)
    if len(cast) == 0:
        return "Il film non è presente nel database"
    else :
        returnstring = "Il cast del film è: " + "\n"
        for i in range(len(cast)):
            membrocast = utils.string_cleaner(str(cast[i]))
            returnstring = returnstring + membrocast + "\n"
        return returnstring

#Restituisce una lista di film della lingua inserita
def film_in_lingua(lingua):
    lingua = str(lingua).lower()
    list = py_to_pl.film_in_lingua(lingua)
    if not list:
        return "La lingua inserita non è presente nel database"
    else:
        returnstring = "I film in lingua " + lingua + " sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring

#Restituisce una lista di film del genere inserito
def film_del_genere(genere):
    genere = str(genere).lower()
    list = py_to_pl.film_del_genere(genere)
    if not list:
        return "Il genere inserito non è presente nel database"
    else:
        returnstring = "I film del genere " + genere + " sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring

#Restituisce una lista di film che durano più di 250 minuti
def film_lunghi():
    list = py_to_pl.film_lungo()
    returnstring = "I film lunghi sono: \n"
    for film in list:
        string = utils.string_cleaner(film)
        returnstring += string + "\n"
    return returnstring

#Restituisce una lista di film considerati capolavori
def capolavori():
    list = py_to_pl.capolavori()
    returnstring = "I capolavori sono: \n"
    for film in list:
        string = utils.string_cleaner(film)
        returnstring += string + "\n"
    return returnstring

#Restituisce una lista di film cult italiani
def cult_italiani():
    list = py_to_pl.cult_italiani()
    returnstring = "I cult italiani sono: \n"
    for film in list:
        string = utils.string_cleaner(film)
        returnstring += string + "\n"
    return returnstring

#Restituisce i migliori film di un attore
def best_of_attore(attore):
    attore = str(attore).lower()
    list = py_to_pl.best_of_attore(attore)
    if not list:
        return "L'attore inserito non è presente nel database, oppure non ha recitato in film rilevanti"
    else:
        #per come è strutturata la query, potrebbero esserci duplicati
        list = utils.delete_list_duplicates(list)
        returnstring = "I migliori film di " + attore + " sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring
 

#Restituisce i migliori film di un regista
def best_of_regista(regista):
    regista = str(regista).lower()
    list = py_to_pl.best_of_regista(regista)
    if not list:
        return "Il regista inserito non è presente nel database, oppure non ha diretto film rilevanti"
    else:
        #per come è strutturata la query, potrebbero esserci duplicati
        list = utils.delete_list_duplicates(list)
        returnstring = "I migliori film diretti da " + regista + " sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring
  

#Restituisce tutti i film di un attore
def filmografia_attore(attore):
    attore = str(attore).lower()
    list = py_to_pl.filmografia_attore(attore)
    if not list:
        return "L'attore inserito non è presente nel database"
    else:
        returnstring = "I film in cui " + attore + " ha recitato sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring

#Restituisce tutti i film di un regista
def filmografia_regista(regista):
    regista = str(regista).lower()
    list = py_to_pl.filmografia_regista(regista)
    result = ""
    if not list:
        return "Il regista inserito non è presente nel database"
    else:
        returnstring = "I film che " + regista + " ha diretto sono: \n"
        for film in list:
            string = utils.string_cleaner(film)
            returnstring += string + "\n"
        return returnstring

#Restituisce i membri della crew di un film
def crew_film(film):
    film = str(film).lower()
    list = py_to_pl.crew_film(film)
    result = ""
    if not list:
        return "Il film inserito non è presente nel database"
    else:
        result = "La crew di " + film + " è: \n"
        for membro in list:
            string = utils.string_cleaner(membro)
            result += string + "\n"
        return result

#Restituisce il ruolo di un attore in un film
def ruolo_attore(attore,film):
    attore = str(attore).lower()
    film = str(film).lower()
    ruolo = py_to_pl.ruolo_attore(attore,film)
    if not ruolo:
        return "Il film o l'attore non sono presenti nel database"
    else:
        ruolo = str(ruolo).strip("[]")
        ruolo = utils.string_cleaner(ruolo)
        returnstring = "Il ruolo di " + attore + " in " + film + " è: " + ruolo
        return returnstring

#Predizione del voto di un film    
def predizione_voto(attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies):
    
    lista_input = [attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies] 
    
    #Lista con i dati inseriti
    film_input = [attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies]

    #Se la lista NON contiene valori vuoti o valori numerici
    if utils.check_list_empty(film_input) == False and utils.check_list_numeric(film_input) == False:

        lista_input = utils.list_lowercase(lista_input)

        #Predizione
        predizione_random_forest = predizione.predict_random_forest(lista_input)
        predizione_albero_decisione = predizione.predict_albero_decisione(lista_input)
        predizione_regressione = predizione.predict_regressione(lista_input)

        #Restituisce le predizioni con RandomForest, DecisionTree e Regressione
        returnstring = "\nIl voto previsto per il film è: \n "
        returnstring += "Random forest: " + predizione_random_forest + "\n"
        returnstring += "Albero di decisione: " + predizione_albero_decisione + "\n"
        returnstring += "Regressione: " + str(predizione_regressione) + "\n"
 
    else:
        returnstring = "Errore: inserire valori validi (non inserire valori numerici e non lasciare campi vuoti)"
    
    return returnstring
