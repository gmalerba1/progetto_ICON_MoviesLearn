#-----------------------------------------
#Interfaccia grafica per MoviesLearn
#-----------------------------------------

from tkinter import simpledialog

import controls
import tkinter as tk


def execute_function():

    selected_option = function_var.get()
    output = ""
   
    
    if selected_option == "Ha recitato nel film?":
        actor = simpledialog.askstring("Input", "Inserisci il nome dell'attore", parent = root)
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        output = controls.verifica_presenza_attore(actor, movie)
        output_text.delete('1.0', tk.END)

    elif selected_option == "Ha diretto il film?":
        director = simpledialog.askstring("Input", "Inserisci il nome del regista",parent = root)
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        output = controls.verifica_presenza_regista(director, movie)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film con voti alti":
        output = controls.film_voti_alti()
        output_text.delete('1.0', tk.END)
                
    elif selected_option == "Collabora con?":
        actor = simpledialog.askstring("Input", "Inserisci il nome dell'attore",parent = root)
        director = simpledialog.askstring("Input", "Inserisci il nome del regista",parent = root)
        output = controls.collabora(actor, director)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film rilasciato nell'anno X?":
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        year = simpledialog.askinteger("Input", "Inserisci l'anno",parent = root)
        output = controls.rilasciato_nell_anno(movie, year)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film costosi":
        output = controls.film_costosi()
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Cast":
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        output = controls.cast(movie)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film in lingua originale":
        language = simpledialog.askstring("Input", "Inserisci la lingua",parent = root)
        output = controls.film_in_lingua(language)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film del genere":
        genre = simpledialog.askstring("Input", "Inserisci il genere",parent = root)
        output = controls.film_del_genere(genre)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film lunghi":
        output = controls.film_lunghi()
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Capolavori":
        output = controls.capolavori()
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Cult italiani":
        output = controls.cult_italiani()
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film di punta - Acting":
        actor = simpledialog.askstring("Input", "Inserisci il nome dell'attore",parent = root)
        output = controls.best_of_attore(actor)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Film di punta – Directing":
        director = simpledialog.askstring("Input", "Inserisci il nome del regista",parent = root)
        output = controls.best_of_regista(director)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Filmografia – Acting":
        actor = simpledialog.askstring("Input", "Inserisci il nome dell'attore",parent = root)
        output = controls.filmografia_attore(actor)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Filmografia – Directing":
        director = simpledialog.askstring("Input", "Inserisci il nome del regista",parent = root)
        output = controls.filmografia_regista(director)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Crew":
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        output = controls.crew_film(movie)
        output_text.delete('1.0', tk.END)
        
    elif selected_option == "Che ruolo?":
        actor = simpledialog.askstring("Input", "Inserisci il nome dell'attore",parent = root)
        movie = simpledialog.askstring("Input", "Inserisci il titolo del film",parent = root)
        output = controls.ruolo_attore(actor, movie)
        output_text.delete('1.0', tk.END)
    
    elif selected_option == "Predizione del voto - Nuovo film":
        actor1 = simpledialog.askstring("Input", "Inserisci il nome del primo attore",parent = root)
        actor2 = simpledialog.askstring("Input", "Inserisci il nome del secondo attore",parent = root)
        actor3 = simpledialog.askstring("Input", "Inserisci il nome del terzo attore",parent = root)
        director = simpledialog.askstring("Input", "Inserisci il nome del regista",parent = root)
        screenplayer = simpledialog.askstring("Input", "Inserisci il nome dello sceneggiatore",parent = root)
        genre = simpledialog.askstring("Input", "Inserisci il genere (in inglese)",parent = root)
        original_language = simpledialog.askstring("Input", "Inserisci la lingua originale (formato: en, it, fr, etc.))",parent = root)
        production_company = simpledialog.askstring("Input", "Inserisci la casa di produzione",parent = root)
        output = controls.predizione_voto(actor1, actor2, actor3, director, screenplayer, genre, original_language, production_company)
        output_text.delete('1.0', tk.END)
    
    #Aggiorna il widget Text con l'output
    output_text.pack()
    output_text.insert('1.0', output)
 
    
root = tk.Tk()

#Posiziona la finestra al centro dello schermo
root.title("MoviesLearn")
root.resizable(True, True)
root.configure(background = "light blue")
window_width = 600
window_height = 600
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()
position_top = int(screen_height / 2 - window_height / 2)
position_right = int(screen_width / 2 - window_width / 2)
root.geometry(f"{window_width}x{window_height}+{position_right}+{position_top}")

#Centra il menu a tendina nella finestra
function_var = tk.StringVar()
function_var.set("Seleziona una funzione")
function_menu = tk.OptionMenu(root, function_var, "Ha recitato nel film?", "Ha diretto il film?", "Film con voti alti", "Collabora con?", "Film rilasciato nell'anno X?", "Film costosi", "Cast", "Film in lingua originale", "Film del genere", "Film lunghi", "Capolavori", "Cult italiani", "Film di punta - Acting", "Film di punta – Directing", "Filmografia – Acting", "Filmografia – Directing", "Crew", "Che ruolo?", "Predizione del voto - Nuovo film")
function_menu.pack(pady = 20)

#Definizione del bottone per eseguire la funzione selezionata
execute_button = tk.Button(root, text = "Esegui", command = execute_function)

#Widget Text per l'output
output_text = tk.Text(root)
output_text.config(state = tk.NORMAL)

#Bottone per eseguire la funzione selezionata
execute_button.pack()
output_text.pack()

root.deiconify()
root.mainloop()
