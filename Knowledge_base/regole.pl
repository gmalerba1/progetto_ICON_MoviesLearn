%---------------------------------------------------------------------
%Regole semplici
%---------------------------------------------------------------------

%consideriamo buoni film quelli con un voto superiore ad 8:
goodmovie(Id) :-
    film(_, _, Id, _, _, _, _, _, _, _, Voto, _),
    Voto >= 8.

%Analizzando i dati, si è notato che i film più importanti hanno un indice di popolarità superiore a 12:
popularmovie(Id) :-
    film(_, _, Id, _, Popolarità, _, _, _, _, _, _, _),
    Popolarità >= 12.

%Analizzando i dati, si è notato che i film più importanti hanno un numero di voti superiore a 900:
manyvotes(Id) :-
    film(_, _, Id, _, _, _, _, _, _, _, _, Voti),
    Voti >= 900.

%film italiani
italianmovie(Id) :-
    film(_, _, Id, Lingua, _, _, _, _, _, _, _, _),
    Lingua == "it".
%---------------------------------------------------------------------
%Regole complesse
%---------------------------------------------------------------------

%restituisce una lista di film giudicati capolavori, secondo criteri di voto e numero di voti:
capolavori(Lista) :-
    findall(Titolo, (goodmovie(Id), popularmovie(Id), manyvotes(Id), film(_, _, Id, _, _, _, _, _, _, Titolo, _, _)), Lista).

%Lista dei film italiani popolari. Non si considera il numero di voti, in quanto sono mediamente di meno. 
cult_italiani(Lista) :-
    findall(Titolo, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), italianmovie(Id),goodmovie(Id),popularmovie(Id)), Lista).

%trova tutti i migliori film di un attore:
best_of_actor(Attore,Lista) :-
    attore(Attore, ActorID, _),
    findall(Titolo, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo(Id, ActorID, _), (goodmovie(Id) ; manyvotes(Id))), Lista).

%trova tutti i migliori film di un regista:
best_of_director(Regista,Lista) :-
    membro_crew(CrewID, Regista, _),
    findall(Titolo, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo_crew(Id, CrewID, "director"), (goodmovie(Id) ; manyvotes(Id))), Lista).

%----------------------------------------------------------------------
%Regole a sè stanti, usate per la ricerca di informazioni
%----------------------------------------------------------------------

%verifica se un attore ha recitato in un film:
ha_recitato_in(Attore, Titolo):-
    attore(Attore, ActorID, _),
    film(_, _, Id, _, _, _, _, _, _, Titolo, _, _),
    ruolo(Id, ActorID,_).

%verifica se un film è stato diretto da un regista:
diretto_da(Film, Regista) :-
    film(_, _,Id, _, _, _, _, _, _,Film, _, _),
    membro_crew(CrewID, Regista, _),
    ruolo_crew(Id, CrewID, "director").

%Trova tutti i film che hanno un voto medio oltre il 9 
film_voti_alti(Lista) :-
    findall(Titolo, (film(_, _, _, _, _, _, _, _, _, Titolo, Voto, _), Voto >= 9),Lista).

%determina se un attore ha lavorato con un regista:
ha_lavorato_con(Attore, Regista) :-
    attore(Attore, ActorID, _),
    membro_crew(CrewID, Regista, _),
    ruolo(Id, ActorID,_),
    ruolo_crew(Id, CrewID, "director").

%Restituisce vero se un film è stato rilasciato in un certo anno:
rilasciato_nell_anno(Film, Anno) :-
    film(_, _, _, _, _, _, Anno, _, _, Film, _, _).

%Trova tutti i film che hanno un budget superiore a una certa soglia:
film_costoso(Lista) :-
    findall(Titolo, (film(_, _, _, _, _, _, _, Budget, _, Titolo, _, _), Budget > 100000000),Lista).

%Trova tutti gli attori che hanno lavorato in un film con un certo titolo:
cast_film(Titolo,Lista) :-
    findall(Attore, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo(Id,ActorID, _), attore(Attore,ActorID,_)),Lista).

%Trova tutti i film in una certa lingua:
film_in_lingua(Lingua,Lista) :-
    findall(Titolo, film(_, _, _, Lingua, _, _, _, _, _, Titolo, _, _),Lista).

%Trova tutti i film di un certo genere:
film_del_genere(Genere,Lista) :-
    findall(Titolo, film(_, Genere, _, _, _, _, _, _, _, Titolo, _, _),Lista).

%Trova tutti i film che hanno una durata superiore a una certa soglia:
film_lungo(Lista) :-
    findall(Titolo, (film(_, _, _, _, _, _, _, _, Durata, Titolo, _, _), Durata > 150),Lista).

%trova tutti i membri della crew di un film:
crew_film(Titolo,Lista) :-
    findall(Crew, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo_crew(Id,CrewID, _), membro_crew(CrewID, Crew, _)),Lista).

%trova tutti i film in cui ha recitato un attore:
filmografia_attore(Attore, Filmografia) :-
    attore(Attore, ActorID, _),
    findall(Titolo, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo(Id, ActorID, _)), Filmografia).

%trova tutti i film diretti da un regista:
filmografia_regista(Regista, Filmografia) :-
    membro_crew(CrewID, Regista, _),
    findall(Titolo, (film(_, _, Id, _, _, _, _, _, _, Titolo, _, _), ruolo_crew(Id, CrewID, "director")), Filmografia).

%trova il ruolo di un attore in un film:
ruolo_attore(Attore, Film, Ruolo) :-
    findall(R, (film(_, _, Id, _, _, _, _, _, _, Film, _, _),attore(Attore,ActorID,_), ruolo(Id, ActorID, R)), Ruolo).


%------------------------------------------------------------------
%Regole usate per il training di PROBFOIL
%------------------------------------------------------------------

%trova gli id dei film il cui voto è inferiore a 6 e il numero di voti è superiore a 500
film_voti_bassi(Lista) :-
    findall(ID, (film(_, _, ID, _, _, _, _, _, _, _, Voto, Numerovoti), Voto < 6 , Numerovoti >=500),Lista).


%trova gli id dei film il cui voto è superiore a 8 e il numero di voti è superiore a 500
film_voti_alti_ID(Lista) :-
    findall(ID, (film(_, _, ID, _, _, _, _, _, _, _, Voto, Votenumber), Voto >= 8, Votenumber > 500),Lista).