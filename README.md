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

- Instaluje aplikacje dpkg:
	- Google Chrome
	- Discord
	- Atom
	- Skype
	- Mailspring

- Instaluje paczki python-pip:
	- speedtest-cli

### "Szybkie" pobranie za pomocą wget
> $ wget -O post.sh goo.gl/f55p6H && chmod +x post.sh

### Testowane na:
- Xubuntu 16.04.4 LTS
- Ubuntu 17.04.1

<br></br>
**Created with ♥**

by Adrian Rupala