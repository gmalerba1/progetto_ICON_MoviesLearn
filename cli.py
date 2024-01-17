#---------------------------------------
#Interfaccia CLI per MoviesLearn
#---------------------------------------

import controls 
import utils

print ("---------------------------------------------")
print ("Benvenuto in MoviesLearn!")
print ("---------------------------------------------")

input_utente = ""
while input_utente != "Esci":
    print ("\n")
    print ("-----------------------------------------------------")
    print ("Cosa vuoi fare? Digita help per una lista di comandi.")
    print ("-----------------------------------------------------")
    print ("\n")

    input_utente = input()
    input_utente = input_utente.lower()
    input_utente = input_utente.strip()
    print ("\n")

    if input_utente == "help":
        utils.help_cli()

    elif input_utente == "Esci":
        print("Arrivederci!")

    elif input_utente == "recita?":
        print ("Insersci il nome dell'attore")
        attore = input()
        print ("Inserisci il titolo del film")
        film = input()
        print(controls.verifica_presenza_attore(attore, film))

    elif input_utente == "dirige?":
        print ("Insersci il nome del regista")
        regista = input()
        print ("Inserisci il titolo del film")
        film = input()
        print(controls.verifica_presenza_regista(regista, film))
    
    elif input_utente == "film voti alti":
        print(controls.film_voti_alti())
            
    elif input_utente == "collabora?":
        print ("Insersci il nome del regista")
        regista = input()
        print ("inserisci il nome dell'attore")
        attore = input()
        print(controls.collabora(attore, regista))
     
    elif input_utente == "rilasciato?":
        print ("Inserisci il titolo del film")
        film = input()
        print ("Inserisci l'anno di rilascio")
        anno = input()
        print(controls.rilasciato_nell_anno(film, anno))
    
    elif input_utente == "film costosi":
        print(controls.film_costosi())

    elif input_utente == "cast":
        print ("Inserisci il titolo del film")
        film = input()
        print(controls.cast(film))

    elif input_utente == "lingua":
        print ("Inserisci la lingua")
        lingua = input()
        print (controls.film_in_lingua(lingua))
    
    elif input_utente == "genere":
        print ("Inserisci il genere")
        genere= input()
        print (controls.film_del_genere(genere))
    
    elif input_utente == "film lunghi":
        print (controls.film_lunghi())
    
    elif input_utente == "capolavori":
        print(controls.capolavori())
    
    elif input_utente == "cult italiani":
        print(controls.cult_italiani())
    
    elif input_utente == "best of attore":
        print ("Inserisci il nome dell'attore")
        attore = input()
        print(controls.best_of_attore(attore))
    
    elif input_utente == "best of regista":
        print ("Inserisci il nome del regista")
        regista = input()
        print(controls.best_of_regista(regista))
    
    elif input_utente == "filmografia attore":
        print ("Inserisci il nome dell'attore")
        attore = input()
        print (controls.filmografia_attore(attore))
    
    elif input_utente == "filmografia regista":
        print ("Inserisci il nome del regista")
        regista = input()
        print (controls.filmografia_regista(regista))
    
    elif input_utente == "crew film":
        print ("Inserisci il titolo del film")
        film = input()
        print (controls.crew_film(film))
    
    elif input_utente == "ruolo attore":
        print ("Inserisci il nome dell'attore")
        attore = input()
        print ("Inserisci il titolo del film")
        film = input()
        print (controls.ruolo_attore(attore, film))

    elif input_utente == "predizione voto":
        print ("Inserisci il nome del primo attore")
        attore1 = input()
        print ("Inserisci il nome del secondo attore")
        attore2 = input()
        print ("Inserisci il nome del terzo attore")
        attore3 = input()
        print ("Inserisci il nome del regista")
        regista = input()
        print ("Inserisci il nome dello sceneggiatore")
        sceneggiatore = input()
        print ("Inserisci il genere (in inglese)")
        genres = input()
        print ("Inserisci la lingua (formato: en, it, fr, etc.))")
        original_language = input()
        print ("Inserisci la casa di produzione")
        production_companies = input()
        predizione = controls.predizione_voto(attore1,attore2,attore3,regista,sceneggiatore,genres,original_language,production_companies)
        print(predizione)

    else:
        print("Comando non riconosciuto, riprova.") 

    