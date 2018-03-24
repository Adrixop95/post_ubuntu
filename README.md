# Post-installation Ubuntu script
Przygotowuje Ubuntu oraz inne dystrybucje GNU/Linux bazujące na menadżedże apt oraz paczkach deb do pracy jednym skryptem.
### Co instaluje skrypt?
- Aktualizuje system (apt-get update, upgrade)

- Instaluje aplikacje apt-get (różne repozytoria):
	- git
	- vim
	- nano
	- htop
	- vlc
	- spotify-client
	- openjdk-8-jre
	- openjdk-8-jdk
	- python-pip
	- Netbeans
	- Virtualbox
	- neofetch
	- Steam

- Instaluje aplikacje dpkg:
	- Google Chrome
	- Discord
	- Visual Studio Code
	- Skype

- Instaluje paczki python-pip:
	- speedtest-cli
- Usuwa pakiety/aplikacje:
	- firefox  
	- rhytmbox 
	- gnome-mahjongg 
	- gnome-mines 
	- gnome-sudoku 
	- aisleriot
- Ustawia losową tapetę ze strony Unsplash/Reddit WallpapersDump
- Czyści pozostałości i restartuje urządzenie

### Pobranie oraz uruchomienie skryptu za pomocą "wget"
> $ wget -O post.sh goo.gl/cVudPt

> $ chmod +x post.sh

> $ ./post.sh

### Testowane na:
- Xubuntu 16.04.4 LTS
- Ubuntu 17.04.1

<br></br>
**Created with ♥**

by Adrian Rupala