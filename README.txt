# Backup Solution 1

Backup Solution 1 jest skryptem basha, który dokonuje kopii zapasowej plików użytkownika. Kopia jest zapsiywana w podanym przez użytkownika folderze, a następnie jest kompresowana.

## Usage
Otwórz plik kofiguracyjny back1.txt komendą "./backup.sh config" i ustaw:
BACKUP_FILES - listę folderów, których kopię chcesz wykonać
BACKUP_DIR - miejsce wykonania kopii zapasowej
DO_NOT_COPY - rozszerzenie plików, których kopii nie robimy
MAX_FILE_SIZE - maksymalny rozmiar plików 

Uruchomienie:
./backup.sh

Pomoc:
./backup.sh help

## Autor
Kamil Chęć