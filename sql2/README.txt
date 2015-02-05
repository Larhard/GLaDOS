  #############
  ### INTRO ###
  #############

GLaDOS jest to testerka programów. Głównie zajęliśmy się programami walczącymi
online.

Składa się z trzech modułów:

  WEBGUI

    napisane w całości w Django, obsługiwane za pomocą programu manage.py

  CAROLINE

    program czekający na użytkowników i przeprowadzający wszystkie mecze

  WRAPPER

    program dla użytkowników, którzy chcą zgłosić program do walki

  ##########################
  ### PODSTAWOWA OBSŁUGA ###
  ##########################

### INSTALL ###

install main dependencies

  $ pip install -r requirements.txt

if you want to use database other than sqlite3, you should install django
backend for that base and configure glados/local_settings.py. In example to
use postgres you can:

  $ pip install -r requirements-postgresql.txt

example config is in glados/example_local_settings.py

and make all migrations (create tables etc.)

  $ ./manage syncdb

### RUN WEBGUI ###

a) Django Test Server (easier but less effective):

  $ ./manage.py runserver

b) using FCGI

  use django documentation

### RUN CAROLINE ###

  $ ./caroline.py

### RUN WRAPPER ###

  $ ./wrapper2.py

  #########################
  ### PRZYKŁADOWA WALKA ###
  #########################

1. Tworzenie użytkowników (jedyna rzecz robiona za pomocą panelu admina django):

  należy się zalogować na stronę <adres_serwera>/admin/, tam się zalogować
  jako superużytkownik i dodać przykładowo 2 użytkowników:

    username: a
    password: a

    username: b
    password: b

2. Tworzenie contestu:

  logujemy się jako superuser na stronę GLaDOS (<adres_serwera>/) i w zakładce
  judges tworzymy nowego judge'a gdzie path ustawiamy na

<ścieżka do projektu>/judges/number_guessing_game_judge/number_guessing_game_judge.py

  a init_parameters ustawiamy na 

-1 players 2
-1 GUESS_LIMIT 5
-1 MIN_NUMBER 1
-1 MAX_NUMBER 10

  następnie tworzymy contest wybierając nowo utworzonego judge'a i
  zapamiętujemy jego id

3. uruchamianie caroline:

  Caroline czyta sobie wszystko z bazy danych, tak więc nie ma potrzeby
  konfigurować ją dodatkowo, wystarczy uruchomić ją:

./caroline.py

  a ona zacznie automatycznie nasłuchiwać

4. uruchamianie graczy:

  To też nie jest skomplikowane, wystarczy uruchomić wrapper z odpowiednimi
  parametrami:

./wrapper2.py bots/number_guessing_bots/bin_search_bot.py <id contestu> <nazwa użytkownika>@<adres caroline>

  i jeśli 2 użytkowników odpali takiego wrappera, rozegra on partię pomiędzy
  programami a rezultaty pojawią się w WEBGUI.
