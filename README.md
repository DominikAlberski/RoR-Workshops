<img alt="Logo" src="http://coderslab.pl/wp-content/themes/coderslab/svg/logo-coderslab.svg" width="400">


# Warsztaty: Ruby on Rails
> Kilka ważnych informacji

Przed przystąpieniem do rozwiązywania zadań przeczytaj poniższe wskazówki.

## Jak zacząć?

1. Stwórz [*fork*][forking] repozytorium z zadaniami.
2. [*Sklonuj*][ref-clone] repozytorium na swój komputer.
3. Rozwiąż zadania i [*skomituj*][ref-commit] zmiany do swojego repozytorium.
4. [*Wypchnij*][ref-push] zmiany do swojego repozytorium na GitHubie.
5. Stwórz [*pull request*][pull-request] do oryginalnego repozytorium, gdy skończysz wszystkie zadania.


# Zadania:

## Wybierz jeden z dwóch projektów (lub jeżeli zdążysz - możesz oczywiście zrobić oba ;) ):

### Warsztat: aplikacja do prowadzenia prostych notatek.
Napisać aplikację, której celem będzie zarządzanie notatkami (wyświetlanie notatek, dodawanie notatek, edytowanie notatek). Aplikacja będzie zawierać logowania (przez devise'a).
Notatka powinna mieć pola tytuł, tekst i powinna być powiązana z użytkownikiem, który ją dodał (hint: metoda current_user i has_many/belongs_to).

**Uwaga! Na żadnym etapie pracy nie korzystaj ze scaffoldów.**

#### Etapy pracy:
1. Stworzenie nowej aplikacji (o nazwie `NoteApp`)
2. Utworzenie kontrolera `HomeController`, który obsłuży stronę główną aplikacji
3. Dodanie do aplikacji devise'a i skonfigurowanie go
4. Zabezpieczenie całej aplikacji
5. Dodanie modelu `Note` z odpowiednimi polami
6. Dodanie relacji `has_many`/`belongs_to` między User, a Note.
6. Utworzenie `NotesControllera`, ze standardowymi akcjami REST - z wyjątkiem zawężenia do wyświetlanych i tworzonych notek w scopie `current_user`. Podpowiedź: `@notes = current_user.notes; @note = current_user.notes.find(params[:id])`
7. Utworzenie odpowiednich widoków dla NotesControllera
8. Dodanie polonizacji i polskich komunikatów devise'a
9. Poprawki wyglądu i stylu kodu
10. (*) Na stronie `notes#index` wyświetlaj tylko 3 rekordy, używając https://github.com/amatsuda/kaminari


### Warsztat: książka adresowa
Zaimplementuj własny notatnik z kontaktami do znajomych zawierający ich numery telefonów, adresy email czy link do facebooka. Zadbaj o walidację email. Aplikacja ma się wyświetlać po wejściu na localhost:3000 (zdefiniuj w routes root). Do korzystania z aplikacji jest wymagane utworzenie konta i zalogowanie się (devise). Każdy użytkownik ma swoje osobne kontakty, powiązane z danym użytkownikiem (hint: metoda current_user i has_many/belongs_to).

**Uwaga! Na żadnym etapie pracy nie korzystaj ze scaffoldów.**

#### Etapy pracy:
1. Stworzenie nowej aplikacji (o nazwie `ContactApp`)
2. Utworzenie kontrolera `HomeController`, który obsłuży stronę główną aplikacji
3. Dodanie do aplikacji devise'a i skonfigurowanie go
4. Zabezpieczenie całej aplikacji
5. Dodanie modelu `Contact` z odpowiednimi polami
6. Dodanie relacji `has_many`/`belongs_to` między `User`, a `Contact`.
6. Utworzenie `ContactsControllera`, ze standardowymi akcjami REST - z wyjątkiem zawężenia do wyświetlanych i tworzonych kontaktów w scopie `current_user`. Podpowiedź: `@contacts = current_user.contacts; @note = current_user.contacts.find(params[:id])`
7. Utworzenie odpowiednich widoków dla ContactsControllera
8. Dodanie polonizacji i polskich komunikatów devise'a
9. Poprawki wyglądu i stylu kodu
10. (*) Na stronie `contacts#index` wyświetlaj tylko 3 rekordy, używając https://github.com/amatsuda/kaminari

<!-- Links -->
[forking]: https://guides.github.com/activities/forking/
[ref-clone]: http://gitref.org/creating/#clone
[ref-commit]: http://gitref.org/basic/#commit
[ref-push]: http://gitref.org/remotes/#push
[pull-request]: https://help.github.com/articles/creating-a-pull-request

**Repozytorium z ćwiczeniami zostanie usunięte 2 tygodnie po zakończeniu kursu. Spowoduje to też usunięcie wszystkich forków, które są zrobione z tego repozytorium.**
