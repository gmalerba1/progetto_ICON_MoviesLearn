#--------------------------------------------------
#Funzioni di utilità generale
#--------------------------------------------------

#Lista dei comandi per la CLI
def help_cli():
    print ("--------------------------------------------------------------------------")
    print ("Funzioni disponibili:")
    print ("recita?: verifica se un attore è presente in un film")
    print ("dirige?: verifica se un regista ha diretto un film")
    print ("collabora?: verifica se un attore ha lavorato con un regista")
    print ("rilasciato?: verifica se un film è stato rilasciato in un anno")
    print ("film voti alti: restituisce una lista di film con voto alto")
    print ("film costosi: restituisce una lista di film costosi")
    print ("cast: restituisce il cast di un film")
    print ("lingua: restituisce una lista di film in una determinata lingua")
    print ("genere: restituisce una lista di film di un determinato genere")
    print ("film lunghi: restituisce una lista di film lunghi")
    print ("capolavori: restituisce una lista di film considerati capolavori")
    print ("cult italiani: restituisce una lista di film italiani cult")
    print ("best of attore: restituisce una lista dei migliori film di un attore")
    print ("best of regista: restituisce una lista dei migliori film di un regista")
    print ("filmografia attore: restituisce la filmografia di un attore")
    print ("filmografia regista: restituisce la filmografia di un regista")
    print ("crew film: restituisce la crew di un film")
    print ("ruolo attore: restituisce il ruolo di un attore in un film")
    print ("predizione voto: predice il voto di un film ")
    print ("--------------------------------------------------------------------------")



#Prolog restituisce stringhe racchiuse in b''
#Qesta funzione le trasforma in normali stringhe
def string_cleaner(string):
    string = str(string)
    string = string.replace("b'", "", 1)
    string = string[::-1].replace("'","", 1)[::-1]
    bytes = string.encode()
    string = bytes.decode("utf-8","replace")
    return string

#Eliminazione di duplicati da una lista
def delete_list_duplicates(list):
    new_list = []
    for element in list:
        if element not in new_list:
            new_list.append(element)
    return new_list

#Controllo di valori nulli in una lista
def check_list_empty(list):
    for element in list:
        if element == "":
            return True
    return False

#Controllo di valori numerici in una lista
def check_list_numeric(list):
    for element in list:
        if element.isnumeric():
            return True
    return False

#Lowercase degli elementi di una lista
def list_lowercase(list):
    new_list = []
    for element in list:
        element = str(element).lower()
        new_list.append(element)
    return new_list
