#-------------------------------------------------------------------------------
#Il file contiene una serie di funzioni che permettono di interfacciarsi con il 
#codice Prolog, usando la libreria pyswip.
#--------------------------------------------------------------------------------

from pyswip import Prolog

prolog = Prolog()

# Carica le regole Prolog da 'rules.pl',e i fatti da 'movies.pl' e 'credits.pl'
prolog.consult("Knowledge_base/movies.pl")
prolog.consult("Knowledge_base/regole.pl")
prolog.consult("Knowledge_base/crew.pl")
prolog.consult("Knowledge_base/actors.pl")
prolog.consult("Knowledge_base/production_jobs.pl")
prolog.consult("Knowledge_base/roles.pl")



# restituisce True se l'attore ha recitato nel film, False altrimenti
def ha_recitato_in(attore, film):
    return bool(list(prolog.query(f"ha_recitato_in(\"{attore}\",\"{film}\")"))) 

# restituisce True se il regista ha diretto il film, False altrimenti
def diretto_da(regista, film):
    return bool(list(prolog.query(f"diretto_da(\"{film}\", \"{regista}\")")))

    
#restituisce una lista di film con voto alto: (voto > 9)
def film_voti_alti():
    return list(prolog.query("film_voti_alti(Lista)"))[0]["Lista"]
    
#restiuisce True se l'attore ha lavorato con il regista, False altrimenti
def ha_lavorato_con(regista,attore):
    return bool(list(prolog.query(f"ha_lavorato_con(\"{attore}\", \"{regista}\")")))

#restituisce True se il film è stato rilasciato nell'anno inserito, False altrimenti
def rilasciato_nell_anno(film,anno):
    return bool(list(prolog.query(f"rilasciato_nell_anno(\"{film}\",\"{anno}\")")))

#restituisce una lista di film con un budget maggiore di 1 MLRD
def film_costoso():
    return list(prolog.query("film_costoso(Lista)"))[0]["Lista"]

#restituisce la lista degli attori che hanno recitato in un film
def cast_film(titolo):
    return list(prolog.query(f"cast_film(\"{titolo}\",Lista)"))[0]["Lista"]

#restituisce la lista dei film in lingua selezionata
def film_in_lingua(lingua):
    return list(prolog.query(f"film_in_lingua(\"{lingua}\",Lista)"))[0]["Lista"]

#restiuisce la lista dei film del genere indicato
def film_del_genere(genere):
    return list(prolog.query(f"film_del_genere(\"{genere}\",Lista)"))[0]["Lista"]

#restituisce la lista dei film di durata superiore a 2h 30m 
def film_lungo():
    return list(prolog.query("film_lungo(Lista)"))[0]["Lista"]

#restituisce una serie di film considerati capolavori, sulla base di vari criteri
def capolavori():
    return list(prolog.query("capolavori(Lista)"))[0]["Lista"]

#restituisce una lista di film italiani molto apprezzati
def cult_italiani():
    return list(prolog.query("cult_italiani(Lista)"))[0]["Lista"]

#restituisce la lista dei migliori film di un attore
def best_of_attore(attore):
    return list(prolog.query(f"best_of_actor(\"{attore}\",Lista)"))[0]["Lista"]

#restituisce la lista dei migliori film di un regista
def best_of_regista(regista):
    return list(prolog.query(f"best_of_director(\"{regista}\",Lista)"))[0]["Lista"]

#restituisce tutti i film di un attore
def filmografia_attore(attore):
    return list(prolog.query(f"filmografia_attore(\"{attore}\",Lista)"))[0]["Lista"]

#restituisce tutti i film di un regista
def filmografia_regista(regista):
    return list(prolog.query(f"filmografia_regista(\"{regista}\",Lista)"))[0]["Lista"]

#restituisce i membri della crew di un film
def crew_film(film):
    return list(prolog.query(f"crew_film(\"{film}\",Lista)"))[0]["Lista"]

#restituisce il ruolo di un attore in un film
def ruolo_attore(attore,film):
    return list(prolog.query(f"ruolo_attore(\"{attore}\",\"{film}\",Ruolo)"))[0]["Ruolo"]

